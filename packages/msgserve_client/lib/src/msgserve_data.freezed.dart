// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'msgserve_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MsgServeData _$MsgServeDataFromJson(Map<String, dynamic> json) {
  return _MsgServeData.fromJson(json);
}

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
abstract class _$$_MsgServeDataCopyWith<$Res>
    implements $MsgServeDataCopyWith<$Res> {
  factory _$$_MsgServeDataCopyWith(
          _$_MsgServeData value, $Res Function(_$_MsgServeData) then) =
      __$$_MsgServeDataCopyWithImpl<$Res>;
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
class __$$_MsgServeDataCopyWithImpl<$Res>
    extends _$MsgServeDataCopyWithImpl<$Res>
    implements _$$_MsgServeDataCopyWith<$Res> {
  __$$_MsgServeDataCopyWithImpl(
      _$_MsgServeData _value, $Res Function(_$_MsgServeData) _then)
      : super(_value, (v) => _then(v as _$_MsgServeData));

  @override
  _$_MsgServeData get _value => super._value as _$_MsgServeData;

  @override
  $Res call({
    Object? deviceId = freezed,
    Object? firstLaunch = freezed,
    Object? cachedImages = freezed,
    Object? seen = freezed,
    Object? lastConfigFetchedAt = freezed,
    Object? lastConfig = freezed,
  }) {
    return _then(_$_MsgServeData(
      deviceId: deviceId == freezed
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      firstLaunch: firstLaunch == freezed
          ? _value.firstLaunch
          : firstLaunch // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cachedImages: cachedImages == freezed
          ? _value._cachedImages
          : cachedImages // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      seen: seen == freezed
          ? _value._seen
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
      final Map<String, String> cachedImages = const <String, String>{},
      required final List<MsgServeHistory> seen,
      required this.lastConfigFetchedAt,
      this.lastConfig})
      : _cachedImages = cachedImages,
        _seen = seen;

  factory _$_MsgServeData.fromJson(Map<String, dynamic> json) =>
      _$$_MsgServeDataFromJson(json);

  @override
  final String deviceId;
  @override
  final DateTime firstLaunch;
  final Map<String, String> _cachedImages;
  @override
  @JsonKey()
  Map<String, String> get cachedImages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cachedImages);
  }

  final List<MsgServeHistory> _seen;
  @override
  List<MsgServeHistory> get seen {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seen);
  }

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
        (other.runtimeType == runtimeType &&
            other is _$_MsgServeData &&
            const DeepCollectionEquality().equals(other.deviceId, deviceId) &&
            const DeepCollectionEquality()
                .equals(other.firstLaunch, firstLaunch) &&
            const DeepCollectionEquality()
                .equals(other._cachedImages, _cachedImages) &&
            const DeepCollectionEquality().equals(other._seen, _seen) &&
            const DeepCollectionEquality()
                .equals(other.lastConfigFetchedAt, lastConfigFetchedAt) &&
            const DeepCollectionEquality()
                .equals(other.lastConfig, lastConfig));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(deviceId),
      const DeepCollectionEquality().hash(firstLaunch),
      const DeepCollectionEquality().hash(_cachedImages),
      const DeepCollectionEquality().hash(_seen),
      const DeepCollectionEquality().hash(lastConfigFetchedAt),
      const DeepCollectionEquality().hash(lastConfig));

  @JsonKey(ignore: true)
  @override
  _$$_MsgServeDataCopyWith<_$_MsgServeData> get copyWith =>
      __$$_MsgServeDataCopyWithImpl<_$_MsgServeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MsgServeDataToJson(this);
  }
}

abstract class _MsgServeData implements MsgServeData {
  const factory _MsgServeData(
      {required final String deviceId,
      required final DateTime firstLaunch,
      final Map<String, String> cachedImages,
      required final List<MsgServeHistory> seen,
      required final DateTime lastConfigFetchedAt,
      final MsgServeConfig? lastConfig}) = _$_MsgServeData;

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
  _$$_MsgServeDataCopyWith<_$_MsgServeData> get copyWith =>
      throw _privateConstructorUsedError;
}

MsgServeHistory _$MsgServeHistoryFromJson(Map<String, dynamic> json) {
  return _MsgServeHistory.fromJson(json);
}

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
abstract class _$$_MsgServeHistoryCopyWith<$Res>
    implements $MsgServeHistoryCopyWith<$Res> {
  factory _$$_MsgServeHistoryCopyWith(
          _$_MsgServeHistory value, $Res Function(_$_MsgServeHistory) then) =
      __$$_MsgServeHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String campaignId,
      @JsonKey(name: 'key') String campaignKey,
      DateTime? closedAt,
      String? action});
}

/// @nodoc
class __$$_MsgServeHistoryCopyWithImpl<$Res>
    extends _$MsgServeHistoryCopyWithImpl<$Res>
    implements _$$_MsgServeHistoryCopyWith<$Res> {
  __$$_MsgServeHistoryCopyWithImpl(
      _$_MsgServeHistory _value, $Res Function(_$_MsgServeHistory) _then)
      : super(_value, (v) => _then(v as _$_MsgServeHistory));

  @override
  _$_MsgServeHistory get _value => super._value as _$_MsgServeHistory;

  @override
  $Res call({
    Object? campaignId = freezed,
    Object? campaignKey = freezed,
    Object? closedAt = freezed,
    Object? action = freezed,
  }) {
    return _then(_$_MsgServeHistory(
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

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'id')
  final String campaignId;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'key')
  final String campaignKey;
  @override
  final DateTime? closedAt;

  /// tapped action of that message.
  @override
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
        (other.runtimeType == runtimeType &&
            other is _$_MsgServeHistory &&
            const DeepCollectionEquality()
                .equals(other.campaignId, campaignId) &&
            const DeepCollectionEquality()
                .equals(other.campaignKey, campaignKey) &&
            const DeepCollectionEquality().equals(other.closedAt, closedAt) &&
            const DeepCollectionEquality().equals(other.action, action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(campaignId),
      const DeepCollectionEquality().hash(campaignKey),
      const DeepCollectionEquality().hash(closedAt),
      const DeepCollectionEquality().hash(action));

  @JsonKey(ignore: true)
  @override
  _$$_MsgServeHistoryCopyWith<_$_MsgServeHistory> get copyWith =>
      __$$_MsgServeHistoryCopyWithImpl<_$_MsgServeHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MsgServeHistoryToJson(this);
  }
}

abstract class _MsgServeHistory implements MsgServeHistory {
  const factory _MsgServeHistory(
      {@JsonKey(name: 'id') required final String campaignId,
      @JsonKey(name: 'key') required final String campaignKey,
      final DateTime? closedAt,
      final String? action}) = _$_MsgServeHistory;

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
  _$$_MsgServeHistoryCopyWith<_$_MsgServeHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
