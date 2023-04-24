

import 'package:multiple_result/multiple_result.dart';
import 'package:test_on_mars/core/errors/failure.dart';
import 'package:test_on_mars/domain/entities/article.dart';

// ignore: one_member_abstracts
abstract class ArticleRepository {
  Future<Result<List<Article>, Failure>> getArticles();
}
