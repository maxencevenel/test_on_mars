import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:test_on_mars/core/errors/failure.dart';
import 'package:test_on_mars/domain/entities/article.dart';
import 'package:test_on_mars/domain/usecases/get_articles_use_case.dart';

import '../../helpers/data_mocks.dart';
import '../../helpers/mock_article_repository.dart';

void main() {
  late MockArticleRepository mockArticleRepository;
  late GetArticlesUseCase getArticlesUseCase;

  setUp(() {
    mockArticleRepository = MockArticleRepository();
    getArticlesUseCase =
        GetArticlesUseCase(articleRepository: mockArticleRepository);
  });

  test('Should return Success(List<Article>) when success', () async {
    when(() => mockArticleRepository.getArticles())
        .thenAnswer((_) async => const Success(articles));

    final result = await getArticlesUseCase();

    expect(result, const Success<List<Article>, Failure>(articles));
  });
}
