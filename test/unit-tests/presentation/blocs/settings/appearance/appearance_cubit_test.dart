import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_on_mars/presentation/blocs/blocs.dart';

void main() {
  late AppearanceCubit appearanceCubit;

  setUp(() {
    HydratedBloc.storage = MockStorage();
    appearanceCubit = AppearanceCubit();
  });

  test('Initial state is ThemeMode.light', () {
    expect(appearanceCubit.state, ThemeMode.light);
  });

  blocTest<AppearanceCubit, ThemeMode>(
    'setTheme return ThemeMode.dark when ThemeMode.dark',
    build: () => appearanceCubit,
    act: (bloc) {
      bloc
        ..setTheme(themeMode: ThemeMode.dark)
        ..setTheme(themeMode: ThemeMode.light);
    },
    expect: () => [
      ThemeMode.dark,
      ThemeMode.light,
    ],
  );
}

class MockStorage extends Mock implements Storage {
  MockStorage({this.data = const {}});

  Map<String, dynamic> data = {};

  @override
  dynamic read(String key) => data[key];

  @override
  Future<void> write(String key, value) async => data[key] = value;

  @override
  Future<void> delete(String key) async => data[key] = null;

  @override
  Future<void> clear() async => data.clear();
}
