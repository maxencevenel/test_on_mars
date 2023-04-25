import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_on_mars/domain/entities/article.dart';
import 'package:test_on_mars/l10n/l10n.dart';
import 'package:test_on_mars/presentation/blocs/article/article_bloc.dart';

import 'package:test_on_mars/presentation/views/article_list/widgets/custom_tile.dart';

class ArticleTile extends StatelessWidget {
  const ArticleTile({
    super.key,
    required this.article,
  });

  final TextArticle article;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return CustomTile(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            article.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          Text(article.excerpt, style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {

              },
              child: Text(
                l10n.readMore,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
