import 'package:flutter/material.dart';
import 'package:test_on_mars/presentation/views/article_detail/picture_article/picture_article_detail_view.dart';

class PictureArticleDetailPage extends StatelessWidget {
  const PictureArticleDetailPage({super.key});

  static const route = '/picture-article-detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
      ),
      body: const PictureArticleDetailView(),
    );
  }
}
