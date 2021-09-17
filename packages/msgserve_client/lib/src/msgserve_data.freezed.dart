// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'msgserve_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MsgServeData _$MsgServeDataFromJson(Map<String, dynamic> json) {
  return _MsgServeData.fromJson(json);
}

/// @nodoc
class _$MsgServeDataTearOff {
  const _$MsgServeDataTearOff();

  _MsgServeData call(
      {required String deviceId,
      required DateTime firstLaunch,
      Map<String, String> cachedImages = const <String, String>{},
      required List<MsgServeHistory> seen,
      required DateTime lastConfigFetchedAt,
      MsgServeConfig? lastConfig}) {
    return _MsgServeData(
      deviceId: deviceId,
      firstLaunch: firstLaunch,
      cachedImages: cachedImages,
      seen: seen,
      lastConfigFetchedAt: lastConfigFetchedAt,
      lastConfig: lastConfig,
    );
  }

  MsgServeData fromJson(Map<String, Object> json) {
    return MsgServeData.fromJson(json);
  }
}

/// @nodoc
const $MsgServeData = _$MsgServeDataTearOff();

/// @nodoc
mixin _$MsgServeData {
  String get deviceId => throw _privateConstructorUsedError;
  DateTime get firstLaunch => throw _privateConstructorUsedError;
  Map<String, String> get cachedImages => throw _privateConstructorUsedError;
  List<MsgServeHistory> get seen => throw _privateConstructorUsedError;
  DateTime get lastConfigFetchedAt => throw _privateConstructorUsedError;
  MsgServeConfig? get lastConfig => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MsgServeDataCopyWith<MsgServeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MsgServeDataCopyWith<$Res> {
  factory $MsgServeDataCopyWith(
          MsgServeData value, $Res Function(MsgServeData) then) =
      _$MsgServeDataCopyWithImpl<$Res>;
  $Res call(
      {String deviceId,
      DateTime firstLaunch,
      Map<String, String> cachedImages,
      List<MsgServeHistory> seen,
      DateTime lastConfigFetchedAt,
      MsgServeConfig? lastConfig});
}

/// @nodoc
class _$MsgServeDataCopyWithImpl<$Res> implements $MsgServeDataCopyWith<$Res> {
  _$MsgServeDataCopyWithImpl(this._value, this._then);

  final MsgServeData _value;
  // ignore: unused_field
  final $Res Function(MsgServeData) _then;

  @override
  $Res call({
    Object? deviceId = freezed,
    Object? firstLaunch = freezed,
    Object? cachedImages = freezed,
    Object? seen = freezed,
    Object? lastConfigFetchedAt = freezed,
    Object? lastConfig = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: deviceId == freezed
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      firstLaunch: firstLaunch == freezed
          ? _value.firstLaunch
          : firstLaunch // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cachedImages: cachedImages == freezed
          ? _value.cachedImages
          : cachedImages // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      seen: seen == freezed
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as List<MsgServeHistory>,
      lastConfigFetchedAt: lastConfigFetchedAt == freezed
          ? _value.lastConfigFetchedAt
          : lastConfigFetchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastConfig: lastConfig == freezed
          ? _value.lastConfig
          : lastConfig // ignore: cast_nullable_to_non_nullable
              as MsgServeConfig?,
    ));
  }
}

/// @nodoc
abstract class _$MsgServeDataCopyWith<$Res>
    implements $MsgServeDataCopyWith<$Res> {
  factory _$MsgServeDataCopyWith(
          _MsgServeData value, $Res Function(_MsgServeData) then) =
      __$MsgServeDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String deviceId,
      DateTime firstLaunch,
      Map<String, String> cachedImages,
      List<MsgServeHistory> seen,
      DateTime lastConfigFetchedAt,
      MsgServeConfig? lastConfig});
}

/// @nodoc
class __$MsgServeDataCopyWithImpl<$Res> extends _$MsgServeDataCopyWithImpl<$Res>
    implements _$MsgServeDataCopyWith<$Res> {
  __$MsgServeDataCopyWithImpl(
      _MsgServeData _value, $Res Function(_MsgServeData) _then)
      : super(_value, (v) => _then(v as _MsgServeData));

  @override
  _MsgServeData get _value => super._value as _MsgServeData;

  @override
  $Res call({
    Object? deviceId = freezed,
    Object? firstLaunch = freezed,
    Object? cachedImages = freezed,
    Object? seen = freezed,
    Object? lastConfigFetchedAt = freezed,
    Object? lastConfig = freezed,
  }) {
    return _then(_MsgServeData(
      deviceId: deviceId == freezed
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      firstLaunch: firstLaunch == freezed
          ? _value.firstLaunch
          : firstLaunch // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cachedImages: cachedImages == freezed
          ? _value.cachedImages
          : cachedImages // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      seen: seen == freezed
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as List<MsgServeHistory>,
      lastConfigFetchedAt: lastConfigFetchedAt == freezed
          ? _value.lastConfigFetchedAt
          : lastConfigFetchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastConfig: lastConfig == freezed
          ? _value.lastConfig
          : lastConfig // ignore: cast_nullable_to_non_nullable
              as MsgServeConfig?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MsgServeData with DiagnosticableTreeMixin implements _MsgServeData {
  const _$_MsgServeData(
      {required this.deviceId,
      required this.firstLaunch,
      this.cachedImages = const <String, String>{},
      required this.seen,
      required this.lastConfigFetchedAt,
      this.lastConfig});

  factory _$_MsgServeData.fromJson(Map<String, dynamic> json) =>
      _$$_MsgServeDataFromJson(json);

  @override
  final String deviceId;
  @override
  final DateTime firstLaunch;
  @JsonKey(defaultValue: const <String, String>{})
  @override
  final Map<String, String> cachedImages;
  @override
  final List<MsgServeHistory> seen;
  @override
  final DateTime lastConfigFetchedAt;
  @override
  final MsgServeConfig? lastConfig;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MsgServeData(deviceId: $deviceId, firstLaunch: $firstLaunch, cachedImages: $cachedImages, seen: $seen, lastConfigFetchedAt: $lastConfigFetchedAt, lastConfig: $lastConfig)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MsgServeData'))
      ..add(DiagnosticsProperty('deviceId', deviceId))
      ..add(DiagnosticsProperty('firstLaunch', firstLaunch))
      ..add(DiagnosticsProperty('cachedImages', cachedImages))
      ..add(DiagnosticsProperty('seen', seen))
      ..add(DiagnosticsProperty('lastConfigFetchedAt', lastConfigFetchedAt))
      ..add(DiagnosticsProperty('lastConfig', lastConfig));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MsgServeData &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.firstLaunch, firstLaunch) ||
                const DeepCollectionEquality()
                    .equals(other.firstLaunch, firstLaunch)) &&
            (identical(other.cachedImages, cachedImages) ||
                const DeepCollectionEquality()
                    .equals(other.cachedImages, cachedImages)) &&
            (identical(other.seen, seen) ||
                const DeepCollectionEquality().equals(other.seen, seen)) &&
            (identical(other.lastConfigFetchedAt, lastConfigFetchedAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastConfigFetchedAt, lastConfigFetchedAt)) &&
            (identical(other.lastConfig, lastConfig) ||
                const DeepCollectionEquality()
                    .equals(other.lastConfig, lastConfig)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(firstLaunch) ^
      const DeepCollectionEquality().hash(cachedImages) ^
      const DeepCollectionEquality().hash(seen) ^
      const DeepCollectionEquality().hash(lastConfigFetchedAt) ^
      const DeepCollectionEquality().hash(lastConfig);

  @JsonKey(ignore: true)
  @override
  _$MsgServeDataCopyWith<_MsgServeData> get copyWith =>
      __$MsgServeDataCopyWithImpl<_MsgServeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MsgServeDataToJson(this);
  }
}

abstract class _MsgServeData implements MsgServeData {
  const factory _MsgServeData(
      {required String deviceId,
      required DateTime firstLaunch,
      Map<String, String> cachedImages,
      required List<MsgServeHistory> seen,
      required DateTime lastConfigFetchedAt,
      MsgServeConfig? lastConfig}) = _$_MsgServeData;

  factory _MsgServeData.fromJson(Map<String, dynamic> json) =
      _$_MsgServeData.fromJson;

  @override
  String get deviceId => throw _privateConstructorUsedError;
  @override
  DateTime get firstLaunch => throw _privateConstructorUsedError;
  @override
  Map<String, String> get cachedImages => throw _privateConstructorUsedError;
  @override
  List<MsgServeHistory> get seen => throw _privateConstructorUsedError;
  @override
  DateTime get lastConfigFetchedAt => throw _privateConstructorUsedError;
  @override
  MsgServeConfig? get lastConfig => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MsgServeDataCopyWith<_MsgServeData> get copyWith =>
      throw _privateConstructorUsedError;
}

MsgServeHistory _$MsgServeHistoryFromJson(Map<String, dynamic> json) {
  return _MsgServeHistory.fromJson(json);
}

/// @nodoc
class _$MsgServeHistoryTearOff {
  const _$MsgServeHistoryTearOff();

  _MsgServeHistory call(
      {@JsonKey(name: 'id') required String campaignId,
      @JsonKey(name: 'key') required String campaignKey,
      DateTime? closedAt,
      String? action}) {
    return _MsgServeHistory(
      campaignId: campaignId,
      campaignKey: campaignKey,
      closedAt: closedAt,
      action: action,
    );
  }

  MsgServeHistory fromJson(Map<String, Object> json) {
    return MsgServeHistory.fromJson(json);
  }
}

/// @nodoc
const $MsgServeHistory = _$MsgServeHistoryTearOff();

/// @nodoc
mixin _$MsgServeHistory {
// ignore: invalid_annotation_target
  @JsonKey(name: 'id')
  String get campaignId =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'key')
  String get campaignKey => throw _privateConstructorUsedError;
  DateTime? get closedAt => throw _privateConstructorUsedError;

  /// tapped action of that message.
  String? get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MsgServeHistoryCopyWith<MsgServeHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MsgServeHistoryCopyWith<$Res> {
  factory $MsgServeHistoryCopyWith(
          MsgServeHistory value, $Res Function(MsgServeHistory) then) =
      _$MsgServeHistoryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String campaignId,
      @JsonKey(name: 'key') String campaignKey,
      DateTime? closedAt,
      String? action});
}

/// @nodoc
class _$MsgServeHistoryCopyWithImpl<$Res>
    implements $MsgServeHistoryCopyWith<$Res> {
  _$MsgServeHistoryCopyWithImpl(this._value, this._then);

  final MsgServeHistory _value;
  // ignore: unused_field
  final $Res Function(MsgServeHistory) _then;

  @override
  $Res call({
    Object? campaignId = freezed,
    Object? campaignKey = freezed,
    Object? closedAt = freezed,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      campaignId: campaignId == freezed
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
      campaignKey: campaignKey == freezed
          ? _value.campaignKey
          : campaignKey // ignore: cast_nullable_to_non_nullable
              as String,
      closedAt: closedAt == freezed
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MsgServeHistoryCopyWith<$Res>
    implements $MsgServeHistoryCopyWith<$Res> {
  factory _$MsgServeHistoryCopyWith(
          _MsgServeHistory value, $Res Function(_MsgServeHistory) then) =
      __$MsgServeHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String campaignId,
      @JsonKey(name: 'key') String campaignKey,
      DateTime? closedAt,
      String? action});
}

/// @nodoc
class __$MsgServeHistoryCopyWithImpl<$Res>
    extends _$MsgServeHistoryCopyWithImpl<$Res>
    implements _$MsgServeHistoryCopyWith<$Res> {
  __$MsgServeHistoryCopyWithImpl(
      _MsgServeHistory _value, $Res Function(_MsgServeHistory) _then)
      : super(_value, (v) => _then(v as _MsgServeHistory));

  @override
  _MsgServeHistory get _value => super._value as _MsgServeHistory;

  @override
  $Res call({
    Object? campaignId = freezed,
    Object? campaignKey = freezed,
    Object? closedAt = freezed,
    Object? action = freezed,
  }) {
    return _then(_MsgServeHistory(
      campaignId: campaignId == freezed
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
      campaignKey: campaignKey == freezed
          ? _value.campaignKey
          : campaignKey // ignore: cast_nullable_to_non_nullable
              as String,
      closedAt: closedAt == freezed
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MsgServeHistory
    with DiagnosticableTreeMixin
    implements _MsgServeHistory {
  const _$_MsgServeHistory(
      {@JsonKey(name: 'id') required this.campaignId,
      @JsonKey(name: 'key') required this.campaignKey,
      this.closedAt,
      this.action});

  factory _$_MsgServeHistory.fromJson(Map<String, dynamic> json) =>
      _$$_MsgServeHistoryFromJson(json);

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'id')
  final String campaignId;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'key')
  final String campaignKey;
  @override
  final DateTime? closedAt;
  @override

  /// tapped action of that message.
  final String? action;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MsgServeHistory(campaignId: $campaignId, campaignKey: $campaignKey, closedAt: $closedAt, action: $action)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MsgServeHistory'))
      ..add(DiagnosticsProperty('campaignId', campaignId))
      ..add(DiagnosticsProperty('campaignKey', campaignKey))
      ..add(DiagnosticsProperty('closedAt', closedAt))
      ..add(DiagnosticsProperty('action', action));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MsgServeHistory &&
            (identical(other.campaignId, campaignId) ||
                const DeepCollectionEquality()
                    .equals(other.campaignId, campaignId)) &&
            (identical(other.campaignKey, campaignKey) ||
                const DeepCollectionEquality()
                    .equals(other.campaignKey, campaignKey)) &&
            (identical(other.closedAt, closedAt) ||
                const DeepCollectionEquality()
                    .equals(other.closedAt, closedAt)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(campaignId) ^
      const DeepCollectionEquality().hash(campaignKey) ^
      const DeepCollectionEquality().hash(closedAt) ^
      const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  _$MsgServeHistoryCopyWith<_MsgServeHistory> get copyWith =>
      __$MsgServeHistoryCopyWithImpl<_MsgServeHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MsgServeHistoryToJson(this);
  }
}

abstract class _MsgServeHistory implements MsgServeHistory {
  const factory _MsgServeHistory(
      {@JsonKey(name: 'id') required String campaignId,
      @JsonKey(name: 'key') required String campaignKey,
      DateTime? closedAt,
      String? action}) = _$_MsgServeHistory;

  factory _MsgServeHistory.fromJson(Map<String, dynamic> json) =
      _$_MsgServeHistory.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'id')
  String get campaignId => throw _privateConstructorUsedError;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'key')
  String get campaignKey => throw _privateConstructorUsedError;
  @override
  DateTime? get closedAt => throw _privateConstructorUsedError;
  @override

  /// tapped action of that message.
  String? get action => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MsgServeHistoryCopyWith<_MsgServeHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
