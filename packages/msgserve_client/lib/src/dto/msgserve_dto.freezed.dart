// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'msgserve_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MsgServeCampaign _$MsgServeCampaignFromJson(Map<String, dynamic> json) {
  return _MsgServCampaign.fromJson(json);
}

/// @nodoc
class _$MsgServeCampaignTearOff {
  const _$MsgServeCampaignTearOff();

  _MsgServCampaign call(
      {required String id,
      required String key,
      required MsgServeInterstitialArtifact? interstitial,
      required DateTime? dateStart,
      required DateTime? dateEnd,
      required String? filter,
      required String? trigger}) {
    return _MsgServCampaign(
      id: id,
      key: key,
      interstitial: interstitial,
      dateStart: dateStart,
      dateEnd: dateEnd,
      filter: filter,
      trigger: trigger,
    );
  }

  MsgServeCampaign fromJson(Map<String, Object> json) {
    return MsgServeCampaign.fromJson(json);
  }
}

/// @nodoc
const $MsgServeCampaign = _$MsgServeCampaignTearOff();

/// @nodoc
mixin _$MsgServeCampaign {
  String get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  MsgServeInterstitialArtifact? get interstitial =>
      throw _privateConstructorUsedError;
  DateTime? get dateStart => throw _privateConstructorUsedError;
  DateTime? get dateEnd => throw _privateConstructorUsedError;
  String? get filter => throw _privateConstructorUsedError;
  String? get trigger => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MsgServeCampaignCopyWith<MsgServeCampaign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MsgServeCampaignCopyWith<$Res> {
  factory $MsgServeCampaignCopyWith(
          MsgServeCampaign value, $Res Function(MsgServeCampaign) then) =
      _$MsgServeCampaignCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String key,
      MsgServeInterstitialArtifact? interstitial,
      DateTime? dateStart,
      DateTime? dateEnd,
      String? filter,
      String? trigger});
}

/// @nodoc
class _$MsgServeCampaignCopyWithImpl<$Res>
    implements $MsgServeCampaignCopyWith<$Res> {
  _$MsgServeCampaignCopyWithImpl(this._value, this._then);

  final MsgServeCampaign _value;
  // ignore: unused_field
  final $Res Function(MsgServeCampaign) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? interstitial = freezed,
    Object? dateStart = freezed,
    Object? dateEnd = freezed,
    Object? filter = freezed,
    Object? trigger = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      interstitial: interstitial == freezed
          ? _value.interstitial
          : interstitial // ignore: cast_nullable_to_non_nullable
              as MsgServeInterstitialArtifact?,
      dateStart: dateStart == freezed
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateEnd: dateEnd == freezed
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
      trigger: trigger == freezed
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MsgServCampaignCopyWith<$Res>
    implements $MsgServeCampaignCopyWith<$Res> {
  factory _$MsgServCampaignCopyWith(
          _MsgServCampaign value, $Res Function(_MsgServCampaign) then) =
      __$MsgServCampaignCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String key,
      MsgServeInterstitialArtifact? interstitial,
      DateTime? dateStart,
      DateTime? dateEnd,
      String? filter,
      String? trigger});
}

/// @nodoc
class __$MsgServCampaignCopyWithImpl<$Res>
    extends _$MsgServeCampaignCopyWithImpl<$Res>
    implements _$MsgServCampaignCopyWith<$Res> {
  __$MsgServCampaignCopyWithImpl(
      _MsgServCampaign _value, $Res Function(_MsgServCampaign) _then)
      : super(_value, (v) => _then(v as _MsgServCampaign));

  @override
  _MsgServCampaign get _value => super._value as _MsgServCampaign;

  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? interstitial = freezed,
    Object? dateStart = freezed,
    Object? dateEnd = freezed,
    Object? filter = freezed,
    Object? trigger = freezed,
  }) {
    return _then(_MsgServCampaign(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      interstitial: interstitial == freezed
          ? _value.interstitial
          : interstitial // ignore: cast_nullable_to_non_nullable
              as MsgServeInterstitialArtifact?,
      dateStart: dateStart == freezed
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateEnd: dateEnd == freezed
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
      trigger: trigger == freezed
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MsgServCampaign implements _MsgServCampaign {
  const _$_MsgServCampaign(
      {required this.id,
      required this.key,
      required this.interstitial,
      required this.dateStart,
      required this.dateEnd,
      required this.filter,
      required this.trigger});

  factory _$_MsgServCampaign.fromJson(Map<String, dynamic> json) =>
      _$$_MsgServCampaignFromJson(json);

  @override
  final String id;
  @override
  final String key;
  @override
  final MsgServeInterstitialArtifact? interstitial;
  @override
  final DateTime? dateStart;
  @override
  final DateTime? dateEnd;
  @override
  final String? filter;
  @override
  final String? trigger;

  @override
  String toString() {
    return 'MsgServeCampaign(id: $id, key: $key, interstitial: $interstitial, dateStart: $dateStart, dateEnd: $dateEnd, filter: $filter, trigger: $trigger)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MsgServCampaign &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.interstitial, interstitial) ||
                const DeepCollectionEquality()
                    .equals(other.interstitial, interstitial)) &&
            (identical(other.dateStart, dateStart) ||
                const DeepCollectionEquality()
                    .equals(other.dateStart, dateStart)) &&
            (identical(other.dateEnd, dateEnd) ||
                const DeepCollectionEquality()
                    .equals(other.dateEnd, dateEnd)) &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)) &&
            (identical(other.trigger, trigger) ||
                const DeepCollectionEquality().equals(other.trigger, trigger)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(interstitial) ^
      const DeepCollectionEquality().hash(dateStart) ^
      const DeepCollectionEquality().hash(dateEnd) ^
      const DeepCollectionEquality().hash(filter) ^
      const DeepCollectionEquality().hash(trigger);

  @JsonKey(ignore: true)
  @override
  _$MsgServCampaignCopyWith<_MsgServCampaign> get copyWith =>
      __$MsgServCampaignCopyWithImpl<_MsgServCampaign>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MsgServCampaignToJson(this);
  }
}

abstract class _MsgServCampaign implements MsgServeCampaign {
  const factory _MsgServCampaign(
      {required String id,
      required String key,
      required MsgServeInterstitialArtifact? interstitial,
      required DateTime? dateStart,
      required DateTime? dateEnd,
      required String? filter,
      required String? trigger}) = _$_MsgServCampaign;

  factory _MsgServCampaign.fromJson(Map<String, dynamic> json) =
      _$_MsgServCampaign.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get key => throw _privateConstructorUsedError;
  @override
  MsgServeInterstitialArtifact? get interstitial =>
      throw _privateConstructorUsedError;
  @override
  DateTime? get dateStart => throw _privateConstructorUsedError;
  @override
  DateTime? get dateEnd => throw _privateConstructorUsedError;
  @override
  String? get filter => throw _privateConstructorUsedError;
  @override
  String? get trigger => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MsgServCampaignCopyWith<_MsgServCampaign> get copyWith =>
      throw _privateConstructorUsedError;
}
