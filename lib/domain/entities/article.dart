import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_on_mars/domain/entities/picture_detail.dart';

part 'article.g.dart';

part 'article.freezed.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.pascal)
class Article with _$Article {
  @FreezedUnionValue('1')
  const factory Article.article({
    required String id,
    required String title,
    required String excerpt,
    required String text,
  }) = TextArticle;

  @FreezedUnionValue('2')
  const factory Article.picture({
    required String id,
    required String title,
    required PictureDetail picture,
    required String author,
  }) = PictureArticle;

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(
        // workaround because FreezedUnionValue does not allow taking anything
        // other than a String => Convert "type" to String
        Map.from(json)
          ..remove('type')
          ..addAll({'type': (json['type'] as int).toString()}),
      );
}
