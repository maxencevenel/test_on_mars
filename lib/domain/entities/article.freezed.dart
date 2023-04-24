// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Article _$ArticleFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case '1':
      return TextArticle.fromJson(json);
    case '2':
      return PictureArticle.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Article', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Article {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String title, String excerpt, String text)
        article,
    required TResult Function(
            String id, String title, PictureDetail picture, String author)
        picture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String title, String excerpt, String text)?
        article,
    TResult? Function(
            String id, String title, PictureDetail picture, String author)?
        picture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String title, String excerpt, String text)?
        article,
    TResult Function(
            String id, String title, PictureDetail picture, String author)?
        picture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextArticle value) article,
    required TResult Function(PictureArticle value) picture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextArticle value)? article,
    TResult? Function(PictureArticle value)? picture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextArticle value)? article,
    TResult Function(PictureArticle value)? picture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$TextArticleCopyWith(
          _$TextArticle value, $Res Function(_$TextArticle) then) =
      __$$TextArticleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String excerpt, String text});
}

/// @nodoc
class __$$TextArticleCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$TextArticle>
    implements _$$TextArticleCopyWith<$Res> {
  __$$TextArticleCopyWithImpl(
      _$TextArticle _value, $Res Function(_$TextArticle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? excerpt = null,
    Object? text = null,
  }) {
    return _then(_$TextArticle(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      excerpt: null == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextArticle implements TextArticle {
  const _$TextArticle(
      {required this.id,
      required this.title,
      required this.excerpt,
      required this.text,
      final String? $type})
      : $type = $type ?? '1';

  factory _$TextArticle.fromJson(Map<String, dynamic> json) =>
      _$$TextArticleFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String excerpt;
  @override
  final String text;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Article.article(id: $id, title: $title, excerpt: $excerpt, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextArticle &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.excerpt, excerpt) || other.excerpt == excerpt) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, excerpt, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextArticleCopyWith<_$TextArticle> get copyWith =>
      __$$TextArticleCopyWithImpl<_$TextArticle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String title, String excerpt, String text)
        article,
    required TResult Function(
            String id, String title, PictureDetail picture, String author)
        picture,
  }) {
    return article(id, title, excerpt, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String title, String excerpt, String text)?
        article,
    TResult? Function(
            String id, String title, PictureDetail picture, String author)?
        picture,
  }) {
    return article?.call(id, title, excerpt, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String title, String excerpt, String text)?
        article,
    TResult Function(
            String id, String title, PictureDetail picture, String author)?
        picture,
    required TResult orElse(),
  }) {
    if (article != null) {
      return article(id, title, excerpt, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextArticle value) article,
    required TResult Function(PictureArticle value) picture,
  }) {
    return article(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextArticle value)? article,
    TResult? Function(PictureArticle value)? picture,
  }) {
    return article?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextArticle value)? article,
    TResult Function(PictureArticle value)? picture,
    required TResult orElse(),
  }) {
    if (article != null) {
      return article(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextArticleToJson(
      this,
    );
  }
}

abstract class TextArticle implements Article {
  const factory TextArticle(
      {required final String id,
      required final String title,
      required final String excerpt,
      required final String text}) = _$TextArticle;

  factory TextArticle.fromJson(Map<String, dynamic> json) =
      _$TextArticle.fromJson;

  @override
  String get id;
  @override
  String get title;
  String get excerpt;
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$TextArticleCopyWith<_$TextArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PictureArticleCopyWith<$Res>
    implements $ArticleCopyWith<$Res> {
  factory _$$PictureArticleCopyWith(
          _$PictureArticle value, $Res Function(_$PictureArticle) then) =
      __$$PictureArticleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, PictureDetail picture, String author});

  $PictureDetailCopyWith<$Res> get picture;
}

/// @nodoc
class __$$PictureArticleCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$PictureArticle>
    implements _$$PictureArticleCopyWith<$Res> {
  __$$PictureArticleCopyWithImpl(
      _$PictureArticle _value, $Res Function(_$PictureArticle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? picture = null,
    Object? author = null,
  }) {
    return _then(_$PictureArticle(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as PictureDetail,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PictureDetailCopyWith<$Res> get picture {
    return $PictureDetailCopyWith<$Res>(_value.picture, (value) {
      return _then(_value.copyWith(picture: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PictureArticle implements PictureArticle {
  const _$PictureArticle(
      {required this.id,
      required this.title,
      required this.picture,
      required this.author,
      final String? $type})
      : $type = $type ?? '2';

  factory _$PictureArticle.fromJson(Map<String, dynamic> json) =>
      _$$PictureArticleFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final PictureDetail picture;
  @override
  final String author;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Article.picture(id: $id, title: $title, picture: $picture, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PictureArticle &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, picture, author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PictureArticleCopyWith<_$PictureArticle> get copyWith =>
      __$$PictureArticleCopyWithImpl<_$PictureArticle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String title, String excerpt, String text)
        article,
    required TResult Function(
            String id, String title, PictureDetail picture, String author)
        picture,
  }) {
    return picture(id, title, this.picture, author);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String title, String excerpt, String text)?
        article,
    TResult? Function(
            String id, String title, PictureDetail picture, String author)?
        picture,
  }) {
    return picture?.call(id, title, this.picture, author);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String title, String excerpt, String text)?
        article,
    TResult Function(
            String id, String title, PictureDetail picture, String author)?
        picture,
    required TResult orElse(),
  }) {
    if (picture != null) {
      return picture(id, title, this.picture, author);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextArticle value) article,
    required TResult Function(PictureArticle value) picture,
  }) {
    return picture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextArticle value)? article,
    TResult? Function(PictureArticle value)? picture,
  }) {
    return picture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextArticle value)? article,
    TResult Function(PictureArticle value)? picture,
    required TResult orElse(),
  }) {
    if (picture != null) {
      return picture(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PictureArticleToJson(
      this,
    );
  }
}

abstract class PictureArticle implements Article {
  const factory PictureArticle(
      {required final String id,
      required final String title,
      required final PictureDetail picture,
      required final String author}) = _$PictureArticle;

  factory PictureArticle.fromJson(Map<String, dynamic> json) =
      _$PictureArticle.fromJson;

  @override
  String get id;
  @override
  String get title;
  PictureDetail get picture;
  String get author;
  @override
  @JsonKey(ignore: true)
  _$$PictureArticleCopyWith<_$PictureArticle> get copyWith =>
      throw _privateConstructorUsedError;
}
