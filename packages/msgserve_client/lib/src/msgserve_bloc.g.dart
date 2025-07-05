// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msgserve_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CampaignClosed _$CampaignClosedFromJson(Map<String, dynamic> json) =>
    _CampaignClosed(
      date: DateTime.parse(json['date'] as String),
      action: json['action'] as String,
    );

Map<String, dynamic> _$CampaignClosedToJson(_CampaignClosed instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'action': instance.action,
    };
