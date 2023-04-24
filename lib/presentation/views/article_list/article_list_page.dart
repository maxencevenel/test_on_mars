

import 'package:flutter/material.dart';

class ArticleListPage extends StatelessWidget {
  const ArticleListPage({super.key});

  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MonFlux'),
      ),
      body: const Center(
        child: Text('ArticleListPage'),
      ),
    );
  }
}
