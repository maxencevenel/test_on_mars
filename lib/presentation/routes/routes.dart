import 'package:flutter/material.dart';

import 'package:test_on_mars/presentation/views/views.dart';

abstract class Routes {
  static Map<String, WidgetBuilder> get routes => {
        ArticleListPage.route: (context) => const ArticleListPage(),
        ArticleDetailPage.route: (context) => const ArticleDetailPage(),
        AppearancePage.route: (context) => const AppearancePage(),
      };
}
