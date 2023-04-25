import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_on_mars/l10n/l10n.dart';
import 'package:test_on_mars/presentation/blocs/article/article_bloc.dart';

class LoadArticlesError extends StatelessWidget {
  const LoadArticlesError({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Text(
              l10n.loadArticlesError,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                  ),
            ),
          ),
          FilledButton(
            onPressed: () {
              context
                  .read<ArticleBloc>()
                  .add(const ArticleEvent.getArticlesEvent());
            },
            child: Text(
              l10n.loadArticlesErrorTryAgain,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
