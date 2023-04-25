part of 'article_bloc.dart';

@freezed
class ArticleEvent with _$ArticleEvent {
  const factory ArticleEvent.getArticlesEvent() = GetArticlesEvent;

  const factory ArticleEvent.getArticleByIdEvent(String id) =
      GetArticleByIdEvent;
}
