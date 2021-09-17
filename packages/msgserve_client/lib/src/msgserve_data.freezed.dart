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

MsgServData _$MsgServDataFromJson(Map<String, dynamic> json) {
  return _MsgServData.fromJson(json);
}

/// @nodoc
class _$MsgServDataTearOff {
  const _$MsgServDataTearOff();

  _MsgServData call(
      {required String deviceId,
      required DateTime firstLaunch,
      Map<String, String> cachedImages = const <String, String>{},
      required List<MsgServHistory> seen,
      required DateTime lastConfigFetchedAt,
      MsgServConfig? lastConfig}) {
    return _MsgServData(
      deviceId: deviceId,
      firstLaunch: firstLaunch,
      cachedImages: cachedImages,
      seen: seen,
      lastConfigFetchedAt: lastConfigFetchedAt,
      lastConfig: lastConfig,
    );
  }

  MsgServData fromJson(Map<String, Object> json) {
    return MsgServData.fromJson(json);
  }
}

/// @nodoc
const $MsgServData = _$MsgServDataTearOff();

/// @nodoc
mixin _$MsgServData {
  String get deviceId => throw _privateConstructorUsedError;
  DateTime get firstLaunch => throw _privateConstructorUsedError;
  Map<String, String> get cachedImages => throw _privateConstructorUsedError;
  List<MsgServHistory> get seen => throw _privateConstructorUsedError;
  DateTime get lastConfigFetchedAt => throw _privateConstructorUsedError;
  MsgServConfig? get lastConfig => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MsgServDataCopyWith<MsgServData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MsgServDataCopyWith<$Res> {
  factory $MsgServDataCopyWith(
          MsgServData value, $Res Function(MsgServData) then) =
      _$MsgServDataCopyWithImpl<$Res>;
  $Res call(
      {String deviceId,
      DateTime firstLaunch,
      Map<String, String> cachedImages,
      List<MsgServHistory> seen,
      DateTime lastConfigFetchedAt,
      MsgServConfig? lastConfig});
}

/// @nodoc
class _$MsgServDataCopyWithImpl<$Res> implements $MsgServDataCopyWith<$Res> {
  _$MsgServDataCopyWithImpl(this._value, this._then);

  final MsgServData _value;
  // ignore: unused_field
  final $Res Function(MsgServData) _then;

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
              as List<MsgServHistory>,
      lastConfigFetchedAt: lastConfigFetchedAt == freezed
          ? _value.lastConfigFetchedAt
          : lastConfigFetchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastConfig: lastConfig == freezed
          ? _value.lastConfig
          : lastConfig // ignore: cast_nullable_to_non_nullable
              as MsgServConfig?,
    ));
  }
}

/// @nodoc
abstract class _$MsgServDataCopyWith<$Res>
    implements $MsgServDataCopyWith<$Res> {
  factory _$MsgServDataCopyWith(
          _MsgServData value, $Res Function(_MsgServData) then) =
      __$MsgServDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String deviceId,
      DateTime firstLaunch,
      Map<String, String> cachedImages,
      List<MsgServHistory> seen,
      DateTime lastConfigFetchedAt,
      MsgServConfig? lastConfig});
}

/// @nodoc
class __$MsgServDataCopyWithImpl<$Res> extends _$MsgServDataCopyWithImpl<$Res>
    implements _$MsgServDataCopyWith<$Res> {
  __$MsgServDataCopyWithImpl(
      _MsgServData _value, $Res Function(_MsgServData) _then)
      : super(_value, (v) => _then(v as _MsgServData));

  @override
  _MsgServData get _value => super._value as _MsgServData;

  @override
  $Res call({
    Object? deviceId = freezed,
    Object? firstLaunch = freezed,
    Object? cachedImages = freezed,
    Object? seen = freezed,
    Object? lastConfigFetchedAt = freezed,
    Object? lastConfig = freezed,
  }) {
    return _then(_MsgServData(
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
              as List<MsgServHistory>,
      lastConfigFetchedAt: lastConfigFetchedAt == freezed
          ? _value.lastConfigFetchedAt
          : lastConfigFetchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastConfig: lastConfig == freezed
          ? _value.lastConfig
          : lastConfig // ignore: cast_nullable_to_non_nullable
              as MsgServConfig?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MsgServData with DiagnosticableTreeMixin implements _MsgServData {
  const _$_MsgServData(
      {required this.deviceId,
      required this.firstLaunch,
      this.cachedImages = const <String, String>{},
      required this.seen,
      required this.lastConfigFetchedAt,
      this.lastConfig});

  factory _$_MsgServData.fromJson(Map<String, dynamic> json) =>
      _$$_MsgServDataFromJson(json);

  @override
  final String deviceId;
  @override
  final DateTime firstLaunch;
  @JsonKey(defaultValue: const <String, String>{})
  @override
  final Map<String, String> cachedImages;
  @override
  final List<MsgServHistory> seen;
  @override
  final DateTime lastConfigFetchedAt;
  @override
  final MsgServConfig? lastConfig;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MsgServData(deviceId: $deviceId, firstLaunch: $firstLaunch, cachedImages: $cachedImages, seen: $seen, lastConfigFetchedAt: $lastConfigFetchedAt, lastConfig: $lastConfig)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MsgServData'))
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
        (other is _MsgServData &&
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
  _$MsgServDataCopyWith<_MsgServData> get copyWith =>
      __$MsgServDataCopyWithImpl<_MsgServData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MsgServDataToJson(this);
  }
}

abstract class _MsgServData implements MsgServData {
  const factory _MsgServData(
      {required String deviceId,
      required DateTime firstLaunch,
      Map<String, String> cachedImages,
      required List<MsgServHistory> seen,
      required DateTime lastConfigFetchedAt,
      MsgServConfig? lastConfig}) = _$_MsgServData;

  factory _MsgServData.fromJson(Map<String, dynamic> json) =
      _$_MsgServData.fromJson;

  @override
  String get deviceId => throw _privateConstructorUsedError;
  @override
  DateTime get firstLaunch => throw _privateConstructorUsedError;
  @override
  Map<String, String> get cachedImages => throw _privateConstructorUsedError;
  @override
  List<MsgServHistory> get seen => throw _privateConstructorUsedError;
  @override
  DateTime get lastConfigFetchedAt => throw _privateConstructorUsedError;
  @override
  MsgServConfig? get lastConfig => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MsgServDataCopyWith<_MsgServData> get copyWith =>
      throw _privateConstructorUsedError;
}

MsgServHistory _$MsgServHistoryFromJson(Map<String, dynamic> json) {
  return _MsgServHistory.fromJson(json);
}

/// @nodoc
class _$MsgServHistoryTearOff {
  const _$MsgServHistoryTearOff();

  _MsgServHistory call(
      {@JsonKey(name: 'id') required String campaignId,
      @JsonKey(name: 'key') required String campaignKey,
      DateTime? closedAt,
      String? action}) {
    return _MsgServHistory(
      campaignId: campaignId,
      campaignKey: campaignKey,
      closedAt: closedAt,
      action: action,
    );
  }

  MsgServHistory fromJson(Map<String, Object> json) {
    return MsgServHistory.fromJson(json);
  }
}

/// @nodoc
const $MsgServHistory = _$MsgServHistoryTearOff();

/// @nodoc
mixin _$MsgServHistory {
  @JsonKey(name: 'id')
  String get campaignId => throw _privateConstructorUsedError;
  @JsonKey(name: 'key')
  String get campaignKey => throw _privateConstructorUsedError;
  DateTime? get closedAt => throw _privateConstructorUsedError;

  /// tapped action of that message.
  String? get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MsgServHistoryCopyWith<MsgServHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MsgServHistoryCopyWith<$Res> {
  factory $MsgServHistoryCopyWith(
          MsgServHistory value, $Res Function(MsgServHistory) then) =
      _$MsgServHistoryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String campaignId,
      @JsonKey(name: 'key') String campaignKey,
      DateTime? closedAt,
      String? action});
}

/// @nodoc
class _$MsgServHistoryCopyWithImpl<$Res>
    implements $MsgServHistoryCopyWith<$Res> {
  _$MsgServHistoryCopyWithImpl(this._value, this._then);

  final MsgServHistory _value;
  // ignore: unused_field
  final $Res Function(MsgServHistory) _then;

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
abstract class _$MsgServHistoryCopyWith<$Res>
    implements $MsgServHistoryCopyWith<$Res> {
  factory _$MsgServHistoryCopyWith(
          _MsgServHistory value, $Res Function(_MsgServHistory) then) =
      __$MsgServHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String campaignId,
      @JsonKey(name: 'key') String campaignKey,
      DateTime? closedAt,
      String? action});
}

/// @nodoc
class __$MsgServHistoryCopyWithImpl<$Res>
    extends _$MsgServHistoryCopyWithImpl<$Res>
    implements _$MsgServHistoryCopyWith<$Res> {
  __$MsgServHistoryCopyWithImpl(
      _MsgServHistory _value, $Res Function(_MsgServHistory) _then)
      : super(_value, (v) => _then(v as _MsgServHistory));

  @override
  _MsgServHistory get _value => super._value as _MsgServHistory;

  @override
  $Res call({
    Object? campaignId = freezed,
    Object? campaignKey = freezed,
    Object? closedAt = freezed,
    Object? action = freezed,
  }) {
    return _then(_MsgServHistory(
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
class _$_MsgServHistory
    with DiagnosticableTreeMixin
    implements _MsgServHistory {
  const _$_MsgServHistory(
      {@JsonKey(name: 'id') required this.campaignId,
      @JsonKey(name: 'key') required this.campaignKey,
      this.closedAt,
      this.action});

  factory _$_MsgServHistory.fromJson(Map<String, dynamic> json) =>
      _$$_MsgServHistoryFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String campaignId;
  @override
  @JsonKey(name: 'key')
  final String campaignKey;
  @override
  final DateTime? closedAt;
  @override

  /// tapped action of that message.
  final String? action;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MsgServHistory(campaignId: $campaignId, campaignKey: $campaignKey, closedAt: $closedAt, action: $action)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MsgServHistory'))
      ..add(DiagnosticsProperty('campaignId', campaignId))
      ..add(DiagnosticsProperty('campaignKey', campaignKey))
      ..add(DiagnosticsProperty('closedAt', closedAt))
      ..add(DiagnosticsProperty('action', action));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MsgServHistory &&
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
  _$MsgServHistoryCopyWith<_MsgServHistory> get copyWith =>
      __$MsgServHistoryCopyWithImpl<_MsgServHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MsgServHistoryToJson(this);
  }
}

abstract class _MsgServHistory implements MsgServHistory {
  const factory _MsgServHistory(
      {@JsonKey(name: 'id') required String campaignId,
      @JsonKey(name: 'key') required String campaignKey,
      DateTime? closedAt,
      String? action}) = _$_MsgServHistory;

  factory _MsgServHistory.fromJson(Map<String, dynamic> json) =
      _$_MsgServHistory.fromJson;

  @override
  @JsonKey(name: 'id')
  String get campaignId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'key')
  String get campaignKey => throw _privateConstructorUsedError;
  @override
  DateTime? get closedAt => throw _privateConstructorUsedError;
  @override

  /// tapped action of that message.
  String? get action => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MsgServHistoryCopyWith<_MsgServHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
