

import 'package:multiple_result/multiple_result.dart';
import 'package:test_on_mars/core/errors/failure.dart';
import 'package:test_on_mars/core/helpers/generics/params.dart';
import 'package:test_on_mars/core/helpers/generics/usecase.dart';
import 'package:test_on_mars/domain/entities/article.dart';
import 'package:test_on_mars/domain/repositories/article/article_repository.dart';

class GetArticlesUseCase extends UseCase<List<Article>, NoParam> {
  GetArticlesUseCase({
    required ArticleRepository articleRepository,
  }) : _articleRepository = articleRepository;

  final ArticleRepository _articleRepository;

  @override
  Future<Result<List<Article>, Failure>> call({NoParam? param}) {
    return _articleRepository.getArticles();
  }



}
