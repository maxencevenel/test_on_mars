// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextArticle _$$TextArticleFromJson(Map<String, dynamic> json) =>
    _$TextArticle(
      id: json['id'] as String,
      title: json['title'] as String,
      excerpt: json['excerpt'] as String,
      text: json['text'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TextArticleToJson(_$TextArticle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'excerpt': instance.excerpt,
      'text': instance.text,
      'type': instance.$type,
    };

_$PictureArticle _$$PictureArticleFromJson(Map<String, dynamic> json) =>
    _$PictureArticle(
      id: json['id'] as String,
      title: json['title'] as String,
      picture: PictureDetail.fromJson(json['picture'] as Map<String, dynamic>),
      author: json['author'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PictureArticleToJson(_$PictureArticle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'picture': instance.picture,
      'author': instance.author,
      'type': instance.$type,
    };
