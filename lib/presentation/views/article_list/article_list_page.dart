import 'package:flutter/material.dart';

import 'package:test_on_mars/presentation/views/article_list/article_list_view.dart';

class ArticleListPage extends StatelessWidget {
  const ArticleListPage({super.key});

  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return const ArticleListView();
  }
}
