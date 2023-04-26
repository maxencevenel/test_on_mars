import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_on_mars/presentation/blocs/settings/appearance/appearance_cubit.dart';

class AppearancePage extends StatelessWidget {
  const AppearancePage({super.key});

  static const route = '/appearance-settings';

  @override
  Widget build(BuildContext context) {
    return const AppearanceView();
  }
}

class AppearanceView extends StatelessWidget {
  const AppearanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Apparence de l'application"),
      ),
      body: BlocBuilder<AppearanceCubit, ThemeMode>(
        builder: (context, themeMode) {
          return Column(
            children: [
              RadioListTile(
                value: ThemeMode.system,
                groupValue: themeMode,
                onChanged: (ThemeMode? theme) {
                  setTheme(context, theme);
                },
                title: const Text('Identique à celle du stystème'),
              ),
              RadioListTile(
                value: ThemeMode.light,
                groupValue: themeMode,
                onChanged: (ThemeMode? theme) {
                  setTheme(context, theme);
                },
                title: const Text('Toujours clair'),
              ),
              RadioListTile(
                value: ThemeMode.dark,
                groupValue: themeMode,
                onChanged: (ThemeMode? theme) {
                  setTheme(context, theme);
                },
                title: const Text('Toujours sombre'),
              ),
            ],
          );
        },
      ),
    );
  }

  void setTheme(BuildContext context, ThemeMode? theme) {
    context
        .read<AppearanceCubit>()
        .setTheme(themeMode: theme ?? ThemeMode.light);
  }
}
