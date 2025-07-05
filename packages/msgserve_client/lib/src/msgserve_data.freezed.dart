// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'msgserve_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MsgServeData implements DiagnosticableTreeMixin {
  String get deviceId;
  DateTime get firstLaunch;
  Map<String, String> get cachedImages;
  List<MsgServeHistory> get seen;
  DateTime get lastConfigFetchedAt;
  MsgServeConfig? get lastConfig;

  /// Create a copy of MsgServeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MsgServeDataCopyWith<MsgServeData> get copyWith =>
      _$MsgServeDataCopyWithImpl<MsgServeData>(
          this as MsgServeData, _$identity);

  /// Serializes this MsgServeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MsgServeData &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.firstLaunch, firstLaunch) ||
                other.firstLaunch == firstLaunch) &&
            const DeepCollectionEquality()
                .equals(other.cachedImages, cachedImages) &&
            const DeepCollectionEquality().equals(other.seen, seen) &&
            (identical(other.lastConfigFetchedAt, lastConfigFetchedAt) ||
                other.lastConfigFetchedAt == lastConfigFetchedAt) &&
            (identical(other.lastConfig, lastConfig) ||
                other.lastConfig == lastConfig));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      deviceId,
      firstLaunch,
      const DeepCollectionEquality().hash(cachedImages),
      const DeepCollectionEquality().hash(seen),
      lastConfigFetchedAt,
      lastConfig);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MsgServeData(deviceId: $deviceId, firstLaunch: $firstLaunch, cachedImages: $cachedImages, seen: $seen, lastConfigFetchedAt: $lastConfigFetchedAt, lastConfig: $lastConfig)';
  }
}

/// @nodoc
abstract mixin class $MsgServeDataCopyWith<$Res> {
  factory $MsgServeDataCopyWith(
          MsgServeData value, $Res Function(MsgServeData) _then) =
      _$MsgServeDataCopyWithImpl;
  @useResult
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
  _$MsgServeDataCopyWithImpl(this._self, this._then);

  final MsgServeData _self;
  final $Res Function(MsgServeData) _then;

  /// Create a copy of MsgServeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? firstLaunch = null,
    Object? cachedImages = null,
    Object? seen = null,
    Object? lastConfigFetchedAt = null,
    Object? lastConfig = freezed,
  }) {
    return _then(_self.copyWith(
      deviceId: null == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      firstLaunch: null == firstLaunch
          ? _self.firstLaunch
          : firstLaunch // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cachedImages: null == cachedImages
          ? _self.cachedImages
          : cachedImages // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      seen: null == seen
          ? _self.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as List<MsgServeHistory>,
      lastConfigFetchedAt: null == lastConfigFetchedAt
          ? _self.lastConfigFetchedAt
          : lastConfigFetchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastConfig: freezed == lastConfig
          ? _self.lastConfig
          : lastConfig // ignore: cast_nullable_to_non_nullable
              as MsgServeConfig?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MsgServeData].
extension MsgServeDataPatterns on MsgServeData {
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
    TResult Function(_MsgServeData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MsgServeData() when $default != null:
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
    TResult Function(_MsgServeData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MsgServeData():
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
    TResult? Function(_MsgServeData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MsgServeData() when $default != null:
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
    TResult Function(
            String deviceId,
            DateTime firstLaunch,
            Map<String, String> cachedImages,
            List<MsgServeHistory> seen,
            DateTime lastConfigFetchedAt,
            MsgServeConfig? lastConfig)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MsgServeData() when $default != null:
        return $default(_that.deviceId, _that.firstLaunch, _that.cachedImages,
            _that.seen, _that.lastConfigFetchedAt, _that.lastConfig);
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
    TResult Function(
            String deviceId,
            DateTime firstLaunch,
            Map<String, String> cachedImages,
            List<MsgServeHistory> seen,
            DateTime lastConfigFetchedAt,
            MsgServeConfig? lastConfig)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MsgServeData():
        return $default(_that.deviceId, _that.firstLaunch, _that.cachedImages,
            _that.seen, _that.lastConfigFetchedAt, _that.lastConfig);
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
    TResult? Function(
            String deviceId,
            DateTime firstLaunch,
            Map<String, String> cachedImages,
            List<MsgServeHistory> seen,
            DateTime lastConfigFetchedAt,
            MsgServeConfig? lastConfig)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MsgServeData() when $default != null:
        return $default(_that.deviceId, _that.firstLaunch, _that.cachedImages,
            _that.seen, _that.lastConfigFetchedAt, _that.lastConfig);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MsgServeData with DiagnosticableTreeMixin implements MsgServeData {
  const _MsgServeData(
      {required this.deviceId,
      required this.firstLaunch,
      final Map<String, String> cachedImages = const <String, String>{},
      required final List<MsgServeHistory> seen,
      required this.lastConfigFetchedAt,
      this.lastConfig})
      : _cachedImages = cachedImages,
        _seen = seen;
  factory _MsgServeData.fromJson(Map<String, dynamic> json) =>
      _$MsgServeDataFromJson(json);

  @override
  final String deviceId;
  @override
  final DateTime firstLaunch;
  final Map<String, String> _cachedImages;
  @override
  @JsonKey()
  Map<String, String> get cachedImages {
    if (_cachedImages is EqualUnmodifiableMapView) return _cachedImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cachedImages);
  }

  final List<MsgServeHistory> _seen;
  @override
  List<MsgServeHistory> get seen {
    if (_seen is EqualUnmodifiableListView) return _seen;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seen);
  }

  @override
  final DateTime lastConfigFetchedAt;
  @override
  final MsgServeConfig? lastConfig;

  /// Create a copy of MsgServeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MsgServeDataCopyWith<_MsgServeData> get copyWith =>
      __$MsgServeDataCopyWithImpl<_MsgServeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MsgServeDataToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MsgServeData &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.firstLaunch, firstLaunch) ||
                other.firstLaunch == firstLaunch) &&
            const DeepCollectionEquality()
                .equals(other._cachedImages, _cachedImages) &&
            const DeepCollectionEquality().equals(other._seen, _seen) &&
            (identical(other.lastConfigFetchedAt, lastConfigFetchedAt) ||
                other.lastConfigFetchedAt == lastConfigFetchedAt) &&
            (identical(other.lastConfig, lastConfig) ||
                other.lastConfig == lastConfig));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      deviceId,
      firstLaunch,
      const DeepCollectionEquality().hash(_cachedImages),
      const DeepCollectionEquality().hash(_seen),
      lastConfigFetchedAt,
      lastConfig);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MsgServeData(deviceId: $deviceId, firstLaunch: $firstLaunch, cachedImages: $cachedImages, seen: $seen, lastConfigFetchedAt: $lastConfigFetchedAt, lastConfig: $lastConfig)';
  }
}

/// @nodoc
abstract mixin class _$MsgServeDataCopyWith<$Res>
    implements $MsgServeDataCopyWith<$Res> {
  factory _$MsgServeDataCopyWith(
          _MsgServeData value, $Res Function(_MsgServeData) _then) =
      __$MsgServeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String deviceId,
      DateTime firstLaunch,
      Map<String, String> cachedImages,
      List<MsgServeHistory> seen,
      DateTime lastConfigFetchedAt,
      MsgServeConfig? lastConfig});
}

/// @nodoc
class __$MsgServeDataCopyWithImpl<$Res>
    implements _$MsgServeDataCopyWith<$Res> {
  __$MsgServeDataCopyWithImpl(this._self, this._then);

  final _MsgServeData _self;
  final $Res Function(_MsgServeData) _then;

  /// Create a copy of MsgServeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? deviceId = null,
    Object? firstLaunch = null,
    Object? cachedImages = null,
    Object? seen = null,
    Object? lastConfigFetchedAt = null,
    Object? lastConfig = freezed,
  }) {
    return _then(_MsgServeData(
      deviceId: null == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      firstLaunch: null == firstLaunch
          ? _self.firstLaunch
          : firstLaunch // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cachedImages: null == cachedImages
          ? _self._cachedImages
          : cachedImages // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      seen: null == seen
          ? _self._seen
          : seen // ignore: cast_nullable_to_non_nullable
              as List<MsgServeHistory>,
      lastConfigFetchedAt: null == lastConfigFetchedAt
          ? _self.lastConfigFetchedAt
          : lastConfigFetchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastConfig: freezed == lastConfig
          ? _self.lastConfig
          : lastConfig // ignore: cast_nullable_to_non_nullable
              as MsgServeConfig?,
    ));
  }
}

/// @nodoc
mixin _$MsgServeHistory implements DiagnosticableTreeMixin {
// ignore: invalid_annotation_target
  @JsonKey(name: 'id')
  String get campaignId; // ignore: invalid_annotation_target
  @JsonKey(name: 'key')
  String get campaignKey;
  DateTime? get closedAt;

  /// tapped action of that message.
  String? get action;

  /// Create a copy of MsgServeHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MsgServeHistoryCopyWith<MsgServeHistory> get copyWith =>
      _$MsgServeHistoryCopyWithImpl<MsgServeHistory>(
          this as MsgServeHistory, _$identity);

  /// Serializes this MsgServeHistory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'MsgServeHistory'))
      ..add(DiagnosticsProperty('campaignId', campaignId))
      ..add(DiagnosticsProperty('campaignKey', campaignKey))
      ..add(DiagnosticsProperty('closedAt', closedAt))
      ..add(DiagnosticsProperty('action', action));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MsgServeHistory &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.campaignKey, campaignKey) ||
                other.campaignKey == campaignKey) &&
            (identical(other.closedAt, closedAt) ||
                other.closedAt == closedAt) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, campaignId, campaignKey, closedAt, action);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MsgServeHistory(campaignId: $campaignId, campaignKey: $campaignKey, closedAt: $closedAt, action: $action)';
  }
}

/// @nodoc
abstract mixin class $MsgServeHistoryCopyWith<$Res> {
  factory $MsgServeHistoryCopyWith(
          MsgServeHistory value, $Res Function(MsgServeHistory) _then) =
      _$MsgServeHistoryCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String campaignId,
      @JsonKey(name: 'key') String campaignKey,
      DateTime? closedAt,
      String? action});
}

/// @nodoc
class _$MsgServeHistoryCopyWithImpl<$Res>
    implements $MsgServeHistoryCopyWith<$Res> {
  _$MsgServeHistoryCopyWithImpl(this._self, this._then);

  final MsgServeHistory _self;
  final $Res Function(MsgServeHistory) _then;

  /// Create a copy of MsgServeHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaignId = null,
    Object? campaignKey = null,
    Object? closedAt = freezed,
    Object? action = freezed,
  }) {
    return _then(_self.copyWith(
      campaignId: null == campaignId
          ? _self.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
      campaignKey: null == campaignKey
          ? _self.campaignKey
          : campaignKey // ignore: cast_nullable_to_non_nullable
              as String,
      closedAt: freezed == closedAt
          ? _self.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      action: freezed == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MsgServeHistory].
extension MsgServeHistoryPatterns on MsgServeHistory {
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
    TResult Function(_MsgServeHistory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MsgServeHistory() when $default != null:
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
    TResult Function(_MsgServeHistory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MsgServeHistory():
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
    TResult? Function(_MsgServeHistory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MsgServeHistory() when $default != null:
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
    TResult Function(
            @JsonKey(name: 'id') String campaignId,
            @JsonKey(name: 'key') String campaignKey,
            DateTime? closedAt,
            String? action)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MsgServeHistory() when $default != null:
        return $default(
            _that.campaignId, _that.campaignKey, _that.closedAt, _that.action);
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
    TResult Function(
            @JsonKey(name: 'id') String campaignId,
            @JsonKey(name: 'key') String campaignKey,
            DateTime? closedAt,
            String? action)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MsgServeHistory():
        return $default(
            _that.campaignId, _that.campaignKey, _that.closedAt, _that.action);
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
    TResult? Function(
            @JsonKey(name: 'id') String campaignId,
            @JsonKey(name: 'key') String campaignKey,
            DateTime? closedAt,
            String? action)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MsgServeHistory() when $default != null:
        return $default(
            _that.campaignId, _that.campaignKey, _that.closedAt, _that.action);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MsgServeHistory with DiagnosticableTreeMixin implements MsgServeHistory {
  const _MsgServeHistory(
      {@JsonKey(name: 'id') required this.campaignId,
      @JsonKey(name: 'key') required this.campaignKey,
      this.closedAt,
      this.action});
  factory _MsgServeHistory.fromJson(Map<String, dynamic> json) =>
      _$MsgServeHistoryFromJson(json);

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

  /// Create a copy of MsgServeHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MsgServeHistoryCopyWith<_MsgServeHistory> get copyWith =>
      __$MsgServeHistoryCopyWithImpl<_MsgServeHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MsgServeHistoryToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'MsgServeHistory'))
      ..add(DiagnosticsProperty('campaignId', campaignId))
      ..add(DiagnosticsProperty('campaignKey', campaignKey))
      ..add(DiagnosticsProperty('closedAt', closedAt))
      ..add(DiagnosticsProperty('action', action));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MsgServeHistory &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.campaignKey, campaignKey) ||
                other.campaignKey == campaignKey) &&
            (identical(other.closedAt, closedAt) ||
                other.closedAt == closedAt) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, campaignId, campaignKey, closedAt, action);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MsgServeHistory(campaignId: $campaignId, campaignKey: $campaignKey, closedAt: $closedAt, action: $action)';
  }
}

/// @nodoc
abstract mixin class _$MsgServeHistoryCopyWith<$Res>
    implements $MsgServeHistoryCopyWith<$Res> {
  factory _$MsgServeHistoryCopyWith(
          _MsgServeHistory value, $Res Function(_MsgServeHistory) _then) =
      __$MsgServeHistoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String campaignId,
      @JsonKey(name: 'key') String campaignKey,
      DateTime? closedAt,
      String? action});
}

/// @nodoc
class __$MsgServeHistoryCopyWithImpl<$Res>
    implements _$MsgServeHistoryCopyWith<$Res> {
  __$MsgServeHistoryCopyWithImpl(this._self, this._then);

  final _MsgServeHistory _self;
  final $Res Function(_MsgServeHistory) _then;

  /// Create a copy of MsgServeHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? campaignId = null,
    Object? campaignKey = null,
    Object? closedAt = freezed,
    Object? action = freezed,
  }) {
    return _then(_MsgServeHistory(
      campaignId: null == campaignId
          ? _self.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
      campaignKey: null == campaignKey
          ? _self.campaignKey
          : campaignKey // ignore: cast_nullable_to_non_nullable
              as String,
      closedAt: freezed == closedAt
          ? _self.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      action: freezed == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
