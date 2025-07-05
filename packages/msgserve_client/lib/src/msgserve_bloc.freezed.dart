// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'msgserve_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CampaignClosed implements DiagnosticableTreeMixin {
  DateTime get date;
  String get action;

  /// Create a copy of CampaignClosed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CampaignClosedCopyWith<CampaignClosed> get copyWith =>
      _$CampaignClosedCopyWithImpl<CampaignClosed>(
          this as CampaignClosed, _$identity);

  /// Serializes this CampaignClosed to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'CampaignClosed'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('action', action));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CampaignClosed &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, action);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CampaignClosed(date: $date, action: $action)';
  }
}

/// @nodoc
abstract mixin class $CampaignClosedCopyWith<$Res> {
  factory $CampaignClosedCopyWith(
          CampaignClosed value, $Res Function(CampaignClosed) _then) =
      _$CampaignClosedCopyWithImpl;
  @useResult
  $Res call({DateTime date, String action});
}

/// @nodoc
class _$CampaignClosedCopyWithImpl<$Res>
    implements $CampaignClosedCopyWith<$Res> {
  _$CampaignClosedCopyWithImpl(this._self, this._then);

  final CampaignClosed _self;
  final $Res Function(CampaignClosed) _then;

  /// Create a copy of CampaignClosed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? action = null,
  }) {
    return _then(_self.copyWith(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      action: null == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CampaignClosed].
extension CampaignClosedPatterns on CampaignClosed {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CampaignClosed value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CampaignClosed() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CampaignClosed value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CampaignClosed():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CampaignClosed value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CampaignClosed() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime date, String action)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CampaignClosed() when $default != null:
        return $default(_that.date, _that.action);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime date, String action) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CampaignClosed():
        return $default(_that.date, _that.action);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DateTime date, String action)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CampaignClosed() when $default != null:
        return $default(_that.date, _that.action);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CampaignClosed with DiagnosticableTreeMixin implements CampaignClosed {
  const _CampaignClosed({required this.date, required this.action});
  factory _CampaignClosed.fromJson(Map<String, dynamic> json) =>
      _$CampaignClosedFromJson(json);

  @override
  final DateTime date;
  @override
  final String action;

  /// Create a copy of CampaignClosed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CampaignClosedCopyWith<_CampaignClosed> get copyWith =>
      __$CampaignClosedCopyWithImpl<_CampaignClosed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CampaignClosedToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'CampaignClosed'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('action', action));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CampaignClosed &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, action);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CampaignClosed(date: $date, action: $action)';
  }
}

/// @nodoc
abstract mixin class _$CampaignClosedCopyWith<$Res>
    implements $CampaignClosedCopyWith<$Res> {
  factory _$CampaignClosedCopyWith(
          _CampaignClosed value, $Res Function(_CampaignClosed) _then) =
      __$CampaignClosedCopyWithImpl;
  @override
  @useResult
  $Res call({DateTime date, String action});
}

/// @nodoc
class __$CampaignClosedCopyWithImpl<$Res>
    implements _$CampaignClosedCopyWith<$Res> {
  __$CampaignClosedCopyWithImpl(this._self, this._then);

  final _CampaignClosed _self;
  final $Res Function(_CampaignClosed) _then;

  /// Create a copy of CampaignClosed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? action = null,
  }) {
    return _then(_CampaignClosed(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      action: null == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
