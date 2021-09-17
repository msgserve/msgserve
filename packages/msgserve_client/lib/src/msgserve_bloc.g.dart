// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msgserve_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CampaignClosed _$$_CampaignClosedFromJson(Map<String, dynamic> json) =>
    _$_CampaignClosed(
      date: DateTime.parse(json['date'] as String),
      action: json['action'] as String,
    );

Map<String, dynamic> _$$_CampaignClosedToJson(_$_CampaignClosed instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'action': instance.action,
    };
