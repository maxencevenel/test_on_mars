import 'package:multiple_result/multiple_result.dart';
import 'package:test_on_mars/core/errors/exception.dart';
import 'package:test_on_mars/core/errors/failure.dart';
import 'package:test_on_mars/data/data_sources/data_sources.dart';
import 'package:test_on_mars/domain/entities/article.dart';
import 'package:test_on_mars/domain/repositories/article/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  const ArticleRepositoryImpl({
    required ArticleRemoteDataSource articleRemoteDataSource,
    required NetworkDataSource networkDataSource,
  })  : _articleRemoteDataSource = articleRemoteDataSource,
        _networkDataSource = networkDataSource;

  final ArticleRemoteDataSource _articleRemoteDataSource;
  final NetworkDataSource _networkDataSource;

  @override
  Future<Result<List<Article>, Failure>> getArticles() async {
    final hasConnection = await _networkDataSource.hasConnection;
    if (hasConnection) {
      try {
        final result = await _articleRemoteDataSource.getArticles();

        return Success(result);
      } on ServerException {
        return Error(ServerFailure());
      } on UnknownException {
        return Error(UnknownFailure());
      }
    }
    return Error(NetworkFailure());
  }
}
