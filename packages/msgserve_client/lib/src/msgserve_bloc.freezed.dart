// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'msgserve_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CampaignClosed _$CampaignClosedFromJson(Map<String, dynamic> json) {
  return _CampaignClosed.fromJson(json);
}

/// @nodoc
mixin _$CampaignClosed {
  DateTime get date => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignClosedCopyWith<CampaignClosed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignClosedCopyWith<$Res> {
  factory $CampaignClosedCopyWith(
          CampaignClosed value, $Res Function(CampaignClosed) then) =
      _$CampaignClosedCopyWithImpl<$Res>;
  $Res call({DateTime date, String action});
}

/// @nodoc
class _$CampaignClosedCopyWithImpl<$Res>
    implements $CampaignClosedCopyWith<$Res> {
  _$CampaignClosedCopyWithImpl(this._value, this._then);

  final CampaignClosed _value;
  // ignore: unused_field
  final $Res Function(CampaignClosed) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CampaignClosedCopyWith<$Res>
    implements $CampaignClosedCopyWith<$Res> {
  factory _$$_CampaignClosedCopyWith(
          _$_CampaignClosed value, $Res Function(_$_CampaignClosed) then) =
      __$$_CampaignClosedCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, String action});
}

/// @nodoc
class __$$_CampaignClosedCopyWithImpl<$Res>
    extends _$CampaignClosedCopyWithImpl<$Res>
    implements _$$_CampaignClosedCopyWith<$Res> {
  __$$_CampaignClosedCopyWithImpl(
      _$_CampaignClosed _value, $Res Function(_$_CampaignClosed) _then)
      : super(_value, (v) => _then(v as _$_CampaignClosed));

  @override
  _$_CampaignClosed get _value => super._value as _$_CampaignClosed;

  @override
  $Res call({
    Object? date = freezed,
    Object? action = freezed,
  }) {
    return _then(_$_CampaignClosed(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CampaignClosed
    with DiagnosticableTreeMixin
    implements _CampaignClosed {
  const _$_CampaignClosed({required this.date, required this.action});

  factory _$_CampaignClosed.fromJson(Map<String, dynamic> json) =>
      _$$_CampaignClosedFromJson(json);

  @override
  final DateTime date;
  @override
  final String action;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CampaignClosed(date: $date, action: $action)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CampaignClosed'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('action', action));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CampaignClosed &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.action, action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(action));

  @JsonKey(ignore: true)
  @override
  _$$_CampaignClosedCopyWith<_$_CampaignClosed> get copyWith =>
      __$$_CampaignClosedCopyWithImpl<_$_CampaignClosed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CampaignClosedToJson(this);
  }
}

abstract class _CampaignClosed implements CampaignClosed {
  const factory _CampaignClosed(
      {required final DateTime date,
      required final String action}) = _$_CampaignClosed;

  factory _CampaignClosed.fromJson(Map<String, dynamic> json) =
      _$_CampaignClosed.fromJson;

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  String get action => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CampaignClosedCopyWith<_$_CampaignClosed> get copyWith =>
      throw _privateConstructorUsedError;
}
