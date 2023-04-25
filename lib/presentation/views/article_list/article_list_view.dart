import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_on_mars/domain/entities/article.dart';
import 'package:test_on_mars/l10n/l10n.dart';
import 'package:test_on_mars/presentation/blocs/article/article_bloc.dart';
import 'package:test_on_mars/presentation/themes/app_theme.dart';
import 'package:test_on_mars/presentation/views/article_list/article_list.dart';

class ArticleListView extends StatelessWidget {
  const ArticleListView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      backgroundColor: AppTheme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(l10n.homepageAppBarTitle),
        leading: const Icon(Icons.menu),
      ),
      body: BlocBuilder<ArticleBloc, ArticleState>(
        builder: (context, state) {
          if (state.status.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.status.isError) {
            return const LoadArticlesError();
          }
          return RefreshIndicator(
            onRefresh: () async {
              context
                  .read<ArticleBloc>()
                  .add(const ArticleEvent.getArticlesEvent());
            },
            child: ListView.builder(
              itemCount: state.articles.length,
              itemBuilder: (context, index) {
                final article = state.articles[index];
                return article.when(
                  article: (id, title, excerpt, text) =>
                      ArticleTile(article: article as TextArticle),
                  picture: (id, title, picture, author) =>
                      PictureTile(article: article as PictureArticle),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
