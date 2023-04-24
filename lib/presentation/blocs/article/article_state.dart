part of 'article_bloc.dart';

enum ArticleStatus { initial, loading, loaded, error }

extension ArticleStatusExtension on ArticleStatus {
  bool get isInitial => this == ArticleStatus.initial;

  bool get isLoading => this == ArticleStatus.loading;

  bool get isLoaded => this == ArticleStatus.loaded;

  bool get isError => this == ArticleStatus.error;
}

@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState({
    @Default(ArticleStatus.initial) ArticleStatus status,
    @Default([]) List<Article> articles,
  }) = _Initial;
}
