// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picture_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PictureDetail _$PictureDetailFromJson(Map<String, dynamic> json) {
  return _PictureDetail.fromJson(json);
}

/// @nodoc
mixin _$PictureDetail {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PictureDetailCopyWith<PictureDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureDetailCopyWith<$Res> {
  factory $PictureDetailCopyWith(
          PictureDetail value, $Res Function(PictureDetail) then) =
      _$PictureDetailCopyWithImpl<$Res, PictureDetail>;
  @useResult
  $Res call({int width, int height, String url});
}

/// @nodoc
class _$PictureDetailCopyWithImpl<$Res, $Val extends PictureDetail>
    implements $PictureDetailCopyWith<$Res> {
  _$PictureDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PictureDetailCopyWith<$Res>
    implements $PictureDetailCopyWith<$Res> {
  factory _$$_PictureDetailCopyWith(
          _$_PictureDetail value, $Res Function(_$_PictureDetail) then) =
      __$$_PictureDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int width, int height, String url});
}

/// @nodoc
class __$$_PictureDetailCopyWithImpl<$Res>
    extends _$PictureDetailCopyWithImpl<$Res, _$_PictureDetail>
    implements _$$_PictureDetailCopyWith<$Res> {
  __$$_PictureDetailCopyWithImpl(
      _$_PictureDetail _value, $Res Function(_$_PictureDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? url = null,
  }) {
    return _then(_$_PictureDetail(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PictureDetail implements _PictureDetail {
  const _$_PictureDetail(
      {required this.width, required this.height, required this.url});

  factory _$_PictureDetail.fromJson(Map<String, dynamic> json) =>
      _$$_PictureDetailFromJson(json);

  @override
  final int width;
  @override
  final int height;
  @override
  final String url;

  @override
  String toString() {
    return 'PictureDetail(width: $width, height: $height, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PictureDetail &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PictureDetailCopyWith<_$_PictureDetail> get copyWith =>
      __$$_PictureDetailCopyWithImpl<_$_PictureDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PictureDetailToJson(
      this,
    );
  }
}

abstract class _PictureDetail implements PictureDetail {
  const factory _PictureDetail(
      {required final int width,
      required final int height,
      required final String url}) = _$_PictureDetail;

  factory _PictureDetail.fromJson(Map<String, dynamic> json) =
      _$_PictureDetail.fromJson;

  @override
  int get width;
  @override
  int get height;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_PictureDetailCopyWith<_$_PictureDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
