import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_on_mars/domain/domain.dart';
import 'package:test_on_mars/domain/entities/article.dart';

part 'article_event.dart';

part 'article_state.dart';

part 'article_bloc.freezed.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  ArticleBloc({required this.getArticlesUseCase})
      : super(const ArticleState()) {
    on<ArticleEvent>((event, emit) async {
      await event.map(
        getArticlesEvent: (GetArticlesEvent event) async =>
            await _getArticles(emit),
      );
    });
  }

  final GetArticlesUseCase getArticlesUseCase;

  FutureOr<void> _getArticles(Emitter<ArticleState> emit) async {
    emit(state.copyWith(status: ArticleStatus.loading));

    final result = await getArticlesUseCase();
    result.when(
      (articles) => emit(
        state.copyWith(articles: articles, status: ArticleStatus.loaded),
      ),
      (error) => emit(state.copyWith(status: ArticleStatus.error)),
    );
  }
}
