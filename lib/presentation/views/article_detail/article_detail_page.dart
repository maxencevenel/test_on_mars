import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_on_mars/domain/entities/article.dart';
import 'package:test_on_mars/l10n/l10n.dart';
import 'package:test_on_mars/presentation/blocs/article/article_bloc.dart';
import 'package:test_on_mars/presentation/views/article_detail/article_detail.dart';

class ArticleDetailPage extends StatelessWidget {
  const ArticleDetailPage({super.key});

  static const route = '/article-detail';

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<ArticleBloc, ArticleState>(
      builder: (context, state) {
        if (state.selectedArticle == null) {
          return Center(child: Text(l10n.anErrorOccurred));
        }

        return state.selectedArticle!.when(
          article: (id, title, excerpt, text) => TextArticleDetailView(
            article: state.selectedArticle! as TextArticle,
          ),
          picture: (id, title, picture, author) => PictureArticleDetailView(
            article: state.selectedArticle! as PictureArticle,
          ),
        );
      },
    );
  }
}
