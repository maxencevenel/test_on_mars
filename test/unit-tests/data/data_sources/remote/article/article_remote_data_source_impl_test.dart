import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_on_mars/core/errors/exception.dart';
import 'package:test_on_mars/data/data_sources/remote/article/article_remote_data_source_impl.dart';
import 'package:test_on_mars/domain/entities/article.dart';

import '../../../../helpers/data_mocks.dart';
import '../../../../helpers/mock_dio_adapter.dart';

void main() {
  late Dio dio;
  late MockDioAdapter mockDioAdapter;
  late ArticleRemoteDataSourceImpl articleRemoteDataSourceImpl;

  setUp(() {
    dio = Dio();
    mockDioAdapter = MockDioAdapter();
    dio.httpClientAdapter = mockDioAdapter;
    articleRemoteDataSourceImpl = ArticleRemoteDataSourceImpl(dio: dio);

    registerFallbackValue(RequestOptions());
  });

  final httpResponse = ResponseBody.fromString(
    responseGetArticlesJson,
    200,
    headers: {
      Headers.contentTypeHeader: [Headers.jsonContentType],
    },
  );

  final articles = (jsonDecode(responseGetArticlesJson) as List)
      .map((article) => Article.fromJson(article as Map<String, dynamic>))
      .toList();

  test('Should return List<Article> when success', () async {
    when(() => mockDioAdapter.fetch(any(), any(), any()))
        .thenAnswer((_) async => httpResponse);

    final result = await articleRemoteDataSourceImpl.getArticles();

    expect(result, articles);
  });

  test('Should throw ServerException when StatusCode != success', () async {
    when(() => mockDioAdapter.fetch(any(), any(), any())).thenAnswer(
      (_) async => ResponseBody.fromString(
        'A random error just to see if you handle it correctly :-)',
        419,
      ),
    );

    final result = articleRemoteDataSourceImpl.getArticles;

    expect(result, throwsA(const TypeMatcher<ServerException>()));
  });
}
