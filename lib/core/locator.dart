import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:test_on_mars/data/data_sources/data_sources.dart';
import 'package:test_on_mars/data/repositories/repositories.dart';
import 'package:test_on_mars/domain/domain.dart';
import 'package:test_on_mars/presentation/blocs/blocs.dart';

final getIt = GetIt.instance;

Future<void> initLocator() async {
  await initPackages();
  initDataSources();
  initRepositories();
  initUseCases();
  initBlocs();
}

void initBlocs() {
  getIt
    .registerFactory<ArticleBloc>(
      () => ArticleBloc(getArticlesUseCase: getIt()),
    );
    getIt.registerFactory<AppearanceCubit>(
        () => AppearanceCubit(),
    );
}

Future<void> initPackages() async {
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );

  final dio =
      Dio(BaseOptions(baseUrl: 'https://interview-dev.teachonmars.com'));

  getIt
    ..registerLazySingleton<Dio>(() => dio)
    ..registerLazySingleton<InternetConnectionChecker>(() {
      return InternetConnectionChecker();
    });
}

void initUseCases() {
  getIt.registerFactory<GetArticlesUseCase>(
    () => GetArticlesUseCase(articleRepository: getIt()),
  );
}

void initRepositories() {
  getIt.registerFactory<ArticleRepository>(
    () => ArticleRepositoryImpl(
      articleRemoteDataSource: getIt(),
      networkDataSource: getIt(),
    ),
  );
}

void initDataSources() {
  getIt
    ..registerFactory<ArticleRemoteDataSource>(
      () => ArticleRemoteDataSourceImpl(dio: getIt()),
    )
    ..registerFactory<NetworkDataSource>(
      () => NetworkDataSourceImpl(internetConnectionChecker: getIt()),
    );
}
