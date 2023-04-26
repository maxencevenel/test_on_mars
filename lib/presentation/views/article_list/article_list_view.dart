import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_on_mars/domain/entities/article.dart';
import 'package:test_on_mars/l10n/l10n.dart';
import 'package:test_on_mars/presentation/blocs/article/article_bloc.dart';
import 'package:test_on_mars/presentation/themes/app_theme.dart';
import 'package:test_on_mars/presentation/views/article_list/article_list.dart';
import 'package:test_on_mars/presentation/views/settings/appearance/appearance.dart';

class ArticleListView extends StatefulWidget {
  const ArticleListView({super.key});

  @override
  State<ArticleListView> createState() => _ArticleListViewState();
}

class _ArticleListViewState extends State<ArticleListView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      backgroundColor: AppTheme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(l10n.homepageAppBarTitle),
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, AppearancePage.route);
            },
          ),
        ],
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
              controller: _scrollController,
              itemCount: state.articles.length + 1,
              itemBuilder: (context, index) {
                if (index >= state.articles.length) {
                  return const Center(child: CircularProgressIndicator());
                }
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

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context
          .read<ArticleBloc>()
          .add(const ArticleEvent.getMoreArticlesEvent());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
