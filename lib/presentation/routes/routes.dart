import 'package:flutter/material.dart';

import 'package:test_on_mars/presentation/views/views.dart';

abstract class Routes {
  static Map<String, WidgetBuilder> get routes => {
        ArticleListPage.route: (context) => const ArticleListPage(),
        TextArticleDetailPage.route: (context) => const TextArticleDetailPage(),
        PictureArticleDetailPage.route: (context) =>
            const PictureArticleDetailPage(),
      };
}
