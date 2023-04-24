import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:test_on_mars/core/errors/exception.dart';
import 'package:test_on_mars/core/errors/failure.dart';
import 'package:test_on_mars/data/repositories/article/article_repository_impl.dart';
import 'package:test_on_mars/domain/entities/article.dart';

import '../../../helpers/data_mocks.dart';
import '../../../helpers/mock_article_remote_data_source.dart';
import '../../../helpers/mock_network_data_source.dart';

void main() {
  late MockArticleRemoteDataSource mockArticleRemoteDataSource;
  late MockNetworkDataSource mockNetworkDataSource;
  late ArticleRepositoryImpl articleRepositoryImpl;

  setUp(() {
    mockArticleRemoteDataSource = MockArticleRemoteDataSource();
    mockNetworkDataSource = MockNetworkDataSource();
    articleRepositoryImpl = ArticleRepositoryImpl(
      articleRemoteDataSource: mockArticleRemoteDataSource,
      networkDataSource: mockNetworkDataSource,
    );
  });

  group('When online', () {
    setUp(() {
      when(() => mockNetworkDataSource.hasConnection).thenAnswer(
        (_) async => true,
      );
    });

    test('Should return Article List when success', () async {
      when(() => mockArticleRemoteDataSource.getArticles())
          .thenAnswer((_) async => articles);

      final result = await articleRepositoryImpl.getArticles();

      expect(result, const Success<List<Article>, Failure>(articles));
    });

    test('Should return ServerFailure when throw ServerException', () async {
      when(() => mockArticleRemoteDataSource.getArticles())
          .thenThrow(ServerException());

      final result = await articleRepositoryImpl.getArticles();

      expect(result, Error<List<Article>, Failure>(ServerFailure()));
    });

    test('Should return UnknownFailure when throw UnknownException', () async {
      when(() => mockArticleRemoteDataSource.getArticles())
          .thenThrow(UnknownException());

      final result = await articleRepositoryImpl.getArticles();

      expect(result, Error<List<Article>, Failure>(UnknownFailure()));
    });
  });

  group('When offline', () {
    setUp(() {
      when(() => mockNetworkDataSource.hasConnection)
          .thenAnswer((_) async => false);
    });

    test('Should return NetworkFailure', () async {
      when(() => mockArticleRemoteDataSource.getArticles())
          .thenAnswer((_) async => articles);

      final result = await articleRepositoryImpl.getArticles();

      expect(result, Error<List<Article>, Failure>(NetworkFailure()));
    });
  });
}
