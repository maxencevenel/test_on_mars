import 'package:dio/dio.dart';
import 'package:test_on_mars/core/errors/exception.dart';
import 'package:test_on_mars/data/data_sources/remote/article/article_remote_data_source.dart';
import 'package:test_on_mars/data/data_sources/remote/remote_path.dart';
import 'package:test_on_mars/domain/entities/article.dart';

class ArticleRemoteDataSourceImpl implements ArticleRemoteDataSource {
  const ArticleRemoteDataSourceImpl({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<List<Article>> getArticles() async {
    try {
      final response = await _dio.get<dynamic>(RemotePath.getArticles);

      final result = (response.data as List)
          .map((json) => Article.fromJson(json as Map<String, dynamic>))
          .toList();

      return result;
    } on DioError {
      throw ServerException();
    } catch (e) {
      throw UnknownException();
    }
  }
}
