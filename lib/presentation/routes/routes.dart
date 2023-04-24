import 'package:flutter/material.dart';
import 'package:test_on_mars/presentation/views/article_list/article_list_page.dart';

abstract class Routes {
  static Map<String, WidgetBuilder> get routes => {
        ArticleListPage.route: (context) => const ArticleListPage(),
      };
}
