import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_on_mars/core/locator.dart';
import 'package:test_on_mars/l10n/l10n.dart';
import 'package:test_on_mars/presentation/blocs/article/article_bloc.dart';
import 'package:test_on_mars/presentation/routes/routes.dart';
import 'package:test_on_mars/presentation/themes/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ArticleBloc>()..add(const ArticleEvent.getArticlesEvent()),
      child: MaterialApp(
        theme: AppTheme.theme,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routes: Routes.routes,
        // home: const CounterPage(),
      ),
    );
  }
}

Future<void> initialize() async {
  WidgetsFlutterBinding.ensureInitialized();

  initLocator();
}
