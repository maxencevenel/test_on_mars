import 'package:flutter/material.dart';
import 'package:test_on_mars/presentation/views/article_detail/text_article/text_article_detail_view.dart';

class TextArticleDetailPage extends StatelessWidget {
  const TextArticleDetailPage({super.key});

  static const route = '/text-article-detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article'),
      ),
      body: const TextArticleDetailView(),
    );
  }
}
