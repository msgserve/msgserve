// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'msgserv_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MsgServData _$MsgServDataFromJson(Map<String, dynamic> json) {
  return _MsgServData.fromJson(json);
}

class _$MsgServDataTearOff {
  const _$MsgServDataTearOff();

// ignore: unused_element
  _MsgServData call({@required String property}) {
    return _MsgServData(
      property: property,
    );
  }
}

// ignore: unused_element
const $MsgServData = _$MsgServDataTearOff();

mixin _$MsgServData {
  String get property;

  Map<String, dynamic> toJson();
  $MsgServDataCopyWith<MsgServData> get copyWith;
}

abstract class $MsgServDataCopyWith<$Res> {
  factory $MsgServDataCopyWith(
          MsgServData value, $Res Function(MsgServData) then) =
      _$MsgServDataCopyWithImpl<$Res>;
  $Res call({String property});
}

class _$MsgServDataCopyWithImpl<$Res> implements $MsgServDataCopyWith<$Res> {
  _$MsgServDataCopyWithImpl(this._value, this._then);

  final MsgServData _value;
  // ignore: unused_field
  final $Res Function(MsgServData) _then;

  @override
  $Res call({
    Object property = freezed,
  }) {
    return _then(_value.copyWith(
      property: property == freezed ? _value.property : property as String,
    ));
  }
}

abstract class _$MsgServDataCopyWith<$Res>
    implements $MsgServDataCopyWith<$Res> {
  factory _$MsgServDataCopyWith(
          _MsgServData value, $Res Function(_MsgServData) then) =
      __$MsgServDataCopyWithImpl<$Res>;
  @override
  $Res call({String property});
}

class __$MsgServDataCopyWithImpl<$Res> extends _$MsgServDataCopyWithImpl<$Res>
    implements _$MsgServDataCopyWith<$Res> {
  __$MsgServDataCopyWithImpl(
      _MsgServData _value, $Res Function(_MsgServData) _then)
      : super(_value, (v) => _then(v as _MsgServData));

  @override
  _MsgServData get _value => super._value as _MsgServData;

  @override
  $Res call({
    Object property = freezed,
  }) {
    return _then(_MsgServData(
      property: property == freezed ? _value.property : property as String,
    ));
  }
}

@JsonSerializable()
class _$_MsgServData with DiagnosticableTreeMixin implements _MsgServData {
  const _$_MsgServData({@required this.property}) : assert(property != null);

  factory _$_MsgServData.fromJson(Map<String, dynamic> json) =>
      _$_$_MsgServDataFromJson(json);

  @override
  final String property;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MsgServData(property: $property)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MsgServData'))
      ..add(DiagnosticsProperty('property', property));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MsgServData &&
            (identical(other.property, property) ||
                const DeepCollectionEquality()
                    .equals(other.property, property)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(property);

  @override
  _$MsgServDataCopyWith<_MsgServData> get copyWith =>
      __$MsgServDataCopyWithImpl<_MsgServData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MsgServDataToJson(this);
  }
}

abstract class _MsgServData implements MsgServData {
  const factory _MsgServData({@required String property}) = _$_MsgServData;

  factory _MsgServData.fromJson(Map<String, dynamic> json) =
      _$_MsgServData.fromJson;

  @override
  String get property;
  @override
  _$MsgServDataCopyWith<_MsgServData> get copyWith;
}
