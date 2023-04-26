import 'package:flutter/material.dart';
import 'package:test_on_mars/domain/entities/article.dart';
import 'package:test_on_mars/presentation/views/common/common.dart';

class PictureArticleDetailView extends StatelessWidget {
  const PictureArticleDetailView({
    super.key,
    required this.article,
  });

  final PictureArticle article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: Column(
            children: [
              Hero(
                tag: article.id,
                child: CustomFadeInImageNetwork(url: article.picture.url),
              ),
              const SizedBox(height: 16),
              Text(
                article.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 5),
              Text(
                article.author,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
