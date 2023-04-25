import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_on_mars/domain/entities/article.dart';
import 'package:test_on_mars/presentation/blocs/article/article_bloc.dart';
import 'package:test_on_mars/presentation/views/common/common.dart';

class PictureArticleDetailView extends StatelessWidget {
  const PictureArticleDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticleBloc, ArticleState>(
      builder: (context, state) {
        if (state.selectedArticle == null) {
          return const Center(child: Text('Une erreur est survenue'));
        }
        final article = state.selectedArticle! as PictureArticle;
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Column(
              children: [
                Hero(
                  tag: article.id,
                  child: CustomFadeInImageNetwork(url: article.picture.url),
                ),
                const SizedBox(height: 16),
                Text(
                  article.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 5),
                Text(
                  article.author,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
