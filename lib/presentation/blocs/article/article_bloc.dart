import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:test_on_mars/domain/domain.dart';
import 'package:test_on_mars/domain/entities/article.dart';

part 'article_bloc.freezed.dart';

part 'article_event.dart';

part 'article_state.dart';

const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  ArticleBloc({required this.getArticlesUseCase})
      : super(const ArticleState()) {
    on<GetArticlesEvent>(_getArticles);
    on<GetArticleByIdEvent>(_getArticleById);
    on<GetMoreArticlesEvent>(
      _getMoreArticles,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  final GetArticlesUseCase getArticlesUseCase;

  FutureOr<void> _getArticles(
    GetArticlesEvent event,
    Emitter<ArticleState> emit,
  ) async {
    emit(state.copyWith(status: ArticleStatus.loading));

    final result = await getArticlesUseCase();
    result.when(
      (articles) => emit(
        state.copyWith(articles: articles, status: ArticleStatus.loaded),
      ),
      (error) => emit(state.copyWith(status: ArticleStatus.error)),
    );
  }

  FutureOr<void> _getArticleById(
    GetArticleByIdEvent event,
    Emitter<ArticleState> emit,
  ) {
    final currentArticle =
        state.articles.firstWhere((element) => element.id == event.id);
    emit(state.copyWith(selectedArticle: currentArticle));
  }

  FutureOr<void> _getMoreArticles(
    GetMoreArticlesEvent event,
    Emitter<ArticleState> emit,
  ) async {
    final result = await getArticlesUseCase();
    result.when(
      (articles) => emit(
        state.copyWith(
          articles: state.articles + articles,
          status: ArticleStatus.loaded,
        ),
      ),
      (error) => null,
    );
  }
}
