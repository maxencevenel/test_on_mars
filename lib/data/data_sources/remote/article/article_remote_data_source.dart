
import 'package:test_on_mars/domain/entities/article.dart';

// ignore: one_member_abstracts
abstract class ArticleRemoteDataSource {
  Future<List<Article>> getArticles();
}
