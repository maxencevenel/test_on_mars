// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getArticlesEvent,
    required TResult Function(String id) getArticleByIdEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getArticlesEvent,
    TResult? Function(String id)? getArticleByIdEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArticlesEvent,
    TResult Function(String id)? getArticleByIdEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArticlesEvent value) getArticlesEvent,
    required TResult Function(GetArticleByIdEvent value) getArticleByIdEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArticlesEvent value)? getArticlesEvent,
    TResult? Function(GetArticleByIdEvent value)? getArticleByIdEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArticlesEvent value)? getArticlesEvent,
    TResult Function(GetArticleByIdEvent value)? getArticleByIdEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleEventCopyWith<$Res> {
  factory $ArticleEventCopyWith(
          ArticleEvent value, $Res Function(ArticleEvent) then) =
      _$ArticleEventCopyWithImpl<$Res, ArticleEvent>;
}

/// @nodoc
class _$ArticleEventCopyWithImpl<$Res, $Val extends ArticleEvent>
    implements $ArticleEventCopyWith<$Res> {
  _$ArticleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetArticlesEventCopyWith<$Res> {
  factory _$$GetArticlesEventCopyWith(
          _$GetArticlesEvent value, $Res Function(_$GetArticlesEvent) then) =
      __$$GetArticlesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetArticlesEventCopyWithImpl<$Res>
    extends _$ArticleEventCopyWithImpl<$Res, _$GetArticlesEvent>
    implements _$$GetArticlesEventCopyWith<$Res> {
  __$$GetArticlesEventCopyWithImpl(
      _$GetArticlesEvent _value, $Res Function(_$GetArticlesEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetArticlesEvent implements GetArticlesEvent {
  const _$GetArticlesEvent();

  @override
  String toString() {
    return 'ArticleEvent.getArticlesEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetArticlesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getArticlesEvent,
    required TResult Function(String id) getArticleByIdEvent,
  }) {
    return getArticlesEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getArticlesEvent,
    TResult? Function(String id)? getArticleByIdEvent,
  }) {
    return getArticlesEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArticlesEvent,
    TResult Function(String id)? getArticleByIdEvent,
    required TResult orElse(),
  }) {
    if (getArticlesEvent != null) {
      return getArticlesEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArticlesEvent value) getArticlesEvent,
    required TResult Function(GetArticleByIdEvent value) getArticleByIdEvent,
  }) {
    return getArticlesEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArticlesEvent value)? getArticlesEvent,
    TResult? Function(GetArticleByIdEvent value)? getArticleByIdEvent,
  }) {
    return getArticlesEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArticlesEvent value)? getArticlesEvent,
    TResult Function(GetArticleByIdEvent value)? getArticleByIdEvent,
    required TResult orElse(),
  }) {
    if (getArticlesEvent != null) {
      return getArticlesEvent(this);
    }
    return orElse();
  }
}

abstract class GetArticlesEvent implements ArticleEvent {
  const factory GetArticlesEvent() = _$GetArticlesEvent;
}

/// @nodoc
abstract class _$$GetArticleByIdEventCopyWith<$Res> {
  factory _$$GetArticleByIdEventCopyWith(_$GetArticleByIdEvent value,
          $Res Function(_$GetArticleByIdEvent) then) =
      __$$GetArticleByIdEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetArticleByIdEventCopyWithImpl<$Res>
    extends _$ArticleEventCopyWithImpl<$Res, _$GetArticleByIdEvent>
    implements _$$GetArticleByIdEventCopyWith<$Res> {
  __$$GetArticleByIdEventCopyWithImpl(
      _$GetArticleByIdEvent _value, $Res Function(_$GetArticleByIdEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetArticleByIdEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetArticleByIdEvent implements GetArticleByIdEvent {
  const _$GetArticleByIdEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ArticleEvent.getArticleByIdEvent(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArticleByIdEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArticleByIdEventCopyWith<_$GetArticleByIdEvent> get copyWith =>
      __$$GetArticleByIdEventCopyWithImpl<_$GetArticleByIdEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getArticlesEvent,
    required TResult Function(String id) getArticleByIdEvent,
  }) {
    return getArticleByIdEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getArticlesEvent,
    TResult? Function(String id)? getArticleByIdEvent,
  }) {
    return getArticleByIdEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArticlesEvent,
    TResult Function(String id)? getArticleByIdEvent,
    required TResult orElse(),
  }) {
    if (getArticleByIdEvent != null) {
      return getArticleByIdEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArticlesEvent value) getArticlesEvent,
    required TResult Function(GetArticleByIdEvent value) getArticleByIdEvent,
  }) {
    return getArticleByIdEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArticlesEvent value)? getArticlesEvent,
    TResult? Function(GetArticleByIdEvent value)? getArticleByIdEvent,
  }) {
    return getArticleByIdEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArticlesEvent value)? getArticlesEvent,
    TResult Function(GetArticleByIdEvent value)? getArticleByIdEvent,
    required TResult orElse(),
  }) {
    if (getArticleByIdEvent != null) {
      return getArticleByIdEvent(this);
    }
    return orElse();
  }
}

abstract class GetArticleByIdEvent implements ArticleEvent {
  const factory GetArticleByIdEvent(final String id) = _$GetArticleByIdEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$GetArticleByIdEventCopyWith<_$GetArticleByIdEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArticleState {
  ArticleStatus get status => throw _privateConstructorUsedError;
  List<Article> get articles => throw _privateConstructorUsedError;
  Article? get selectedArticle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleStateCopyWith<ArticleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleStateCopyWith<$Res> {
  factory $ArticleStateCopyWith(
          ArticleState value, $Res Function(ArticleState) then) =
      _$ArticleStateCopyWithImpl<$Res, ArticleState>;
  @useResult
  $Res call(
      {ArticleStatus status, List<Article> articles, Article? selectedArticle});

  $ArticleCopyWith<$Res>? get selectedArticle;
}

/// @nodoc
class _$ArticleStateCopyWithImpl<$Res, $Val extends ArticleState>
    implements $ArticleStateCopyWith<$Res> {
  _$ArticleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? articles = null,
    Object? selectedArticle = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ArticleStatus,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      selectedArticle: freezed == selectedArticle
          ? _value.selectedArticle
          : selectedArticle // ignore: cast_nullable_to_non_nullable
              as Article?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArticleCopyWith<$Res>? get selectedArticle {
    if (_value.selectedArticle == null) {
      return null;
    }

    return $ArticleCopyWith<$Res>(_value.selectedArticle!, (value) {
      return _then(_value.copyWith(selectedArticle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ArticleStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ArticleStatus status, List<Article> articles, Article? selectedArticle});

  @override
  $ArticleCopyWith<$Res>? get selectedArticle;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? articles = null,
    Object? selectedArticle = freezed,
  }) {
    return _then(_$_Initial(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ArticleStatus,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      selectedArticle: freezed == selectedArticle
          ? _value.selectedArticle
          : selectedArticle // ignore: cast_nullable_to_non_nullable
              as Article?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.status = ArticleStatus.initial,
      final List<Article> articles = const [],
      this.selectedArticle})
      : _articles = articles;

  @override
  @JsonKey()
  final ArticleStatus status;
  final List<Article> _articles;
  @override
  @JsonKey()
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final Article? selectedArticle;

  @override
  String toString() {
    return 'ArticleState(status: $status, articles: $articles, selectedArticle: $selectedArticle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.selectedArticle, selectedArticle) ||
                other.selectedArticle == selectedArticle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_articles), selectedArticle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ArticleState {
  const factory _Initial(
      {final ArticleStatus status,
      final List<Article> articles,
      final Article? selectedArticle}) = _$_Initial;

  @override
  ArticleStatus get status;
  @override
  List<Article> get articles;
  @override
  Article? get selectedArticle;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
