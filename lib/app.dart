import 'package:flutter/material.dart';
import 'package:test_on_mars/core/locator.dart';
import 'package:test_on_mars/l10n/l10n.dart';
import 'package:test_on_mars/presentation/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routes: Routes.routes,
      // home: const CounterPage(),
    );
  }
}

Future<void> initialize() async {
  WidgetsFlutterBinding.ensureInitialized();

  initLocator();
}
