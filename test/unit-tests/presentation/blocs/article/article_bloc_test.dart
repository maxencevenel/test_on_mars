// ignore_for_file: lines_longer_than_80_chars

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:test_on_mars/core/errors/failure.dart';
import 'package:test_on_mars/presentation/blocs/article/article_bloc.dart';

import '../../../helpers/data_mocks.dart';
import '../../../helpers/mock_get_articles_use_case.dart';

void main() {
  late MockGetArticlesUseCase mockGetArticlesUseCase;
  late ArticleBloc articleBloc;

  setUp(() {
    mockGetArticlesUseCase = MockGetArticlesUseCase();
    articleBloc = ArticleBloc(getArticlesUseCase: mockGetArticlesUseCase);
  });

  test('Initial state is ArticleState', () {
    expect(articleBloc.state, const ArticleState());
  });

  blocTest<ArticleBloc, ArticleState>(
    'GetArticlesUseCase return ArticleState with success status and article list when success',
    setUp: () {
      when(() => mockGetArticlesUseCase())
          .thenAnswer((_) async => const Success(articles));
    },
    build: () => articleBloc,
    act: (bloc) {
      bloc.add(const ArticleEvent.getArticlesEvent());
    },
    expect: () => [
      const ArticleState(status: ArticleStatus.loading),
      const ArticleState(status: ArticleStatus.loaded, articles: articles),
    ],
  );

  blocTest<ArticleBloc, ArticleState>(
    'GetArticlesUseCase return ArticleState with error status when failure',
    setUp: () {
      when(() => mockGetArticlesUseCase())
          .thenAnswer((_) async => Error(ServerFailure()));
    },
    build: () => articleBloc,
    act: (bloc) {
      bloc.add(const ArticleEvent.getArticlesEvent());
    },
    expect: () => [
      const ArticleState(status: ArticleStatus.loading),
      const ArticleState(status: ArticleStatus.error),
    ],
  );

  blocTest<ArticleBloc, ArticleState>(
    'getArticleByIdEvent return ArticleState with success status and selectedArticle',
    setUp: () {
      when(() => mockGetArticlesUseCase())
          .thenAnswer((_) async => const Success(articles));
    },
    build: () => articleBloc,
    act: (bloc) {
      bloc
        ..add(const ArticleEvent.getArticlesEvent())
        ..add(const ArticleEvent.getArticleByIdEvent(article1Id));
    },
    expect: () => [
      const ArticleState(status: ArticleStatus.loading),
      const ArticleState(status: ArticleStatus.loaded, articles: articles),
      const ArticleState(
        status: ArticleStatus.loaded,
        articles: articles,
        selectedArticle: article1,
      ),
    ],
  );
}
