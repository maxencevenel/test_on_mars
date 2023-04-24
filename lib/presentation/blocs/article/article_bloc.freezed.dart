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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getArticlesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArticlesEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArticlesEvent value) getArticlesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArticlesEvent value)? getArticlesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArticlesEvent value)? getArticlesEvent,
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
  }) {
    return getArticlesEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getArticlesEvent,
  }) {
    return getArticlesEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArticlesEvent,
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
  }) {
    return getArticlesEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArticlesEvent value)? getArticlesEvent,
  }) {
    return getArticlesEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArticlesEvent value)? getArticlesEvent,
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
mixin _$ArticleState {
  ArticleStatus get status => throw _privateConstructorUsedError;
  List<Article> get articles => throw _privateConstructorUsedError;

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
  $Res call({ArticleStatus status, List<Article> articles});
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
    ) as $Val);
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
  $Res call({ArticleStatus status, List<Article> articles});
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
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.status = ArticleStatus.initial,
      final List<Article> articles = const []})
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
  String toString() {
    return 'ArticleState(status: $status, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ArticleState {
  const factory _Initial(
      {final ArticleStatus status, final List<Article> articles}) = _$_Initial;

  @override
  ArticleStatus get status;
  @override
  List<Article> get articles;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
