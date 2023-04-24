

import 'package:freezed_annotation/freezed_annotation.dart';

part 'picture_detail.freezed.dart';
part 'picture_detail.g.dart';

@freezed
class PictureDetail with _$PictureDetail {
  const factory PictureDetail({
    required int width,
    required int height,
    required String url,
  }) = _PictureDetail;

  factory PictureDetail.fromJson(Map<String, dynamic> json) =>
      _$PictureDetailFromJson(json);
}
