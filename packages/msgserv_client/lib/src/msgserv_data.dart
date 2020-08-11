import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'msgserv_data.freezed.dart';
part 'msgserv_data.g.dart';

@freezed
abstract class MsgServData with _$MsgServData {
  const factory MsgServData({
    @required String property,
  }) = _MsgServData;

  factory MsgServData.fromJson(Map<String, dynamic> json) =>
      _$MsgServDataFromJson(json);
}
