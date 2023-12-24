// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Trip _$TripFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'PENDING':
      return PENDING.fromJson(json);
    case 'FILLED':
      return FILLED.fromJson(json);
    case 'DEPARTED':
      return DEPARTED.fromJson(json);
    case 'COMPLETED':
      return COMPLETED.fromJson(json);
    case 'CANCELLED':
      return CANCELLED.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'status', 'Trip', 'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$Trip {
  String get id => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
  int get seat_price => throw _privateConstructorUsedError;
  int get total_seats => throw _privateConstructorUsedError;
  int get reserved_seats => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get departure_time => throw _privateConstructorUsedError;
  Map<String, dynamic>? get driver => throw _privateConstructorUsedError;
  bool get is_full => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get tickets => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)
        PENDING,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        FILLED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        DEPARTED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        COMPLETED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        CANCELLED,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)?
        PENDING,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        FILLED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        DEPARTED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        COMPLETED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        CANCELLED,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)?
        PENDING,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        FILLED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        DEPARTED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        COMPLETED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        CANCELLED,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PENDING value) PENDING,
    required TResult Function(FILLED value) FILLED,
    required TResult Function(DEPARTED value) DEPARTED,
    required TResult Function(COMPLETED value) COMPLETED,
    required TResult Function(CANCELLED value) CANCELLED,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PENDING value)? PENDING,
    TResult? Function(FILLED value)? FILLED,
    TResult? Function(DEPARTED value)? DEPARTED,
    TResult? Function(COMPLETED value)? COMPLETED,
    TResult? Function(CANCELLED value)? CANCELLED,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PENDING value)? PENDING,
    TResult Function(FILLED value)? FILLED,
    TResult Function(DEPARTED value)? DEPARTED,
    TResult Function(COMPLETED value)? COMPLETED,
    TResult Function(CANCELLED value)? CANCELLED,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res, Trip>;
  @useResult
  $Res call(
      {String id,
      String from,
      String to,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
      int total_seats,
      int reserved_seats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime departure_time,
      Map<String, dynamic>? driver,
      bool is_full,
      List<Map<String, dynamic>> tickets,
      String? comment});
}

/// @nodoc
class _$TripCopyWithImpl<$Res, $Val extends Trip>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? to = null,
    Object? seat_price = null,
    Object? total_seats = null,
    Object? reserved_seats = null,
    Object? departure_time = null,
    Object? driver = freezed,
    Object? is_full = null,
    Object? tickets = null,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      seat_price: null == seat_price
          ? _value.seat_price
          : seat_price // ignore: cast_nullable_to_non_nullable
              as int,
      total_seats: null == total_seats
          ? _value.total_seats
          : total_seats // ignore: cast_nullable_to_non_nullable
              as int,
      reserved_seats: null == reserved_seats
          ? _value.reserved_seats
          : reserved_seats // ignore: cast_nullable_to_non_nullable
              as int,
      departure_time: null == departure_time
          ? _value.departure_time
          : departure_time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      is_full: null == is_full
          ? _value.is_full
          : is_full // ignore: cast_nullable_to_non_nullable
              as bool,
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PENDINGImplCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$PENDINGImplCopyWith(
          _$PENDINGImpl value, $Res Function(_$PENDINGImpl) then) =
      __$$PENDINGImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String from,
      String to,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
      int total_seats,
      int reserved_seats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime departure_time,
      Map<String, dynamic>? driver,
      bool is_full,
      List<Map<String, dynamic>> tickets,
      String? comment});
}

/// @nodoc
class __$$PENDINGImplCopyWithImpl<$Res>
    extends _$TripCopyWithImpl<$Res, _$PENDINGImpl>
    implements _$$PENDINGImplCopyWith<$Res> {
  __$$PENDINGImplCopyWithImpl(
      _$PENDINGImpl _value, $Res Function(_$PENDINGImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? to = null,
    Object? seat_price = null,
    Object? total_seats = null,
    Object? reserved_seats = null,
    Object? departure_time = null,
    Object? driver = freezed,
    Object? is_full = null,
    Object? tickets = null,
    Object? comment = freezed,
  }) {
    return _then(_$PENDINGImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      seat_price: null == seat_price
          ? _value.seat_price
          : seat_price // ignore: cast_nullable_to_non_nullable
              as int,
      total_seats: null == total_seats
          ? _value.total_seats
          : total_seats // ignore: cast_nullable_to_non_nullable
              as int,
      reserved_seats: null == reserved_seats
          ? _value.reserved_seats
          : reserved_seats // ignore: cast_nullable_to_non_nullable
              as int,
      departure_time: null == departure_time
          ? _value.departure_time
          : departure_time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      driver: freezed == driver
          ? _value._driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      is_full: null == is_full
          ? _value.is_full
          : is_full // ignore: cast_nullable_to_non_nullable
              as bool,
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PENDINGImpl with DiagnosticableTreeMixin implements PENDING {
  const _$PENDINGImpl(
      {required this.id,
      required this.from,
      required this.to,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
      required this.seat_price,
      required this.total_seats,
      required this.reserved_seats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.departure_time,
      final Map<String, dynamic>? driver,
      required this.is_full,
      final List<Map<String, dynamic>> tickets = const [],
      this.comment,
      final String? $type})
      : _driver = driver,
        _tickets = tickets,
        $type = $type ?? 'PENDING';

  factory _$PENDINGImpl.fromJson(Map<String, dynamic> json) =>
      _$$PENDINGImplFromJson(json);

  @override
  final String id;
  @override
  final String from;
  @override
  final String to;
  @override
  @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
  final int seat_price;
  @override
  final int total_seats;
  @override
  final int reserved_seats;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime departure_time;
  final Map<String, dynamic>? _driver;
  @override
  Map<String, dynamic>? get driver {
    final value = _driver;
    if (value == null) return null;
    if (_driver is EqualUnmodifiableMapView) return _driver;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final bool is_full;
  final List<Map<String, dynamic>> _tickets;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  final String? comment;

  @JsonKey(name: 'status')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Trip.PENDING(id: $id, from: $from, to: $to, seat_price: $seat_price, total_seats: $total_seats, reserved_seats: $reserved_seats, departure_time: $departure_time, driver: $driver, is_full: $is_full, tickets: $tickets, comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Trip.PENDING'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('seat_price', seat_price))
      ..add(DiagnosticsProperty('total_seats', total_seats))
      ..add(DiagnosticsProperty('reserved_seats', reserved_seats))
      ..add(DiagnosticsProperty('departure_time', departure_time))
      ..add(DiagnosticsProperty('driver', driver))
      ..add(DiagnosticsProperty('is_full', is_full))
      ..add(DiagnosticsProperty('tickets', tickets))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PENDINGImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.seat_price, seat_price) ||
                other.seat_price == seat_price) &&
            (identical(other.total_seats, total_seats) ||
                other.total_seats == total_seats) &&
            (identical(other.reserved_seats, reserved_seats) ||
                other.reserved_seats == reserved_seats) &&
            (identical(other.departure_time, departure_time) ||
                other.departure_time == departure_time) &&
            const DeepCollectionEquality().equals(other._driver, _driver) &&
            (identical(other.is_full, is_full) || other.is_full == is_full) &&
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      from,
      to,
      seat_price,
      total_seats,
      reserved_seats,
      departure_time,
      const DeepCollectionEquality().hash(_driver),
      is_full,
      const DeepCollectionEquality().hash(_tickets),
      comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PENDINGImplCopyWith<_$PENDINGImpl> get copyWith =>
      __$$PENDINGImplCopyWithImpl<_$PENDINGImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)
        PENDING,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        FILLED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        DEPARTED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        COMPLETED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        CANCELLED,
  }) {
    return PENDING(id, from, to, seat_price, total_seats, reserved_seats,
        departure_time, driver, is_full, tickets, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)?
        PENDING,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        FILLED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        DEPARTED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        COMPLETED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        CANCELLED,
  }) {
    return PENDING?.call(id, from, to, seat_price, total_seats, reserved_seats,
        departure_time, driver, is_full, tickets, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)?
        PENDING,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        FILLED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        DEPARTED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        COMPLETED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        CANCELLED,
    required TResult orElse(),
  }) {
    if (PENDING != null) {
      return PENDING(id, from, to, seat_price, total_seats, reserved_seats,
          departure_time, driver, is_full, tickets, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PENDING value) PENDING,
    required TResult Function(FILLED value) FILLED,
    required TResult Function(DEPARTED value) DEPARTED,
    required TResult Function(COMPLETED value) COMPLETED,
    required TResult Function(CANCELLED value) CANCELLED,
  }) {
    return PENDING(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PENDING value)? PENDING,
    TResult? Function(FILLED value)? FILLED,
    TResult? Function(DEPARTED value)? DEPARTED,
    TResult? Function(COMPLETED value)? COMPLETED,
    TResult? Function(CANCELLED value)? CANCELLED,
  }) {
    return PENDING?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PENDING value)? PENDING,
    TResult Function(FILLED value)? FILLED,
    TResult Function(DEPARTED value)? DEPARTED,
    TResult Function(COMPLETED value)? COMPLETED,
    TResult Function(CANCELLED value)? CANCELLED,
    required TResult orElse(),
  }) {
    if (PENDING != null) {
      return PENDING(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PENDINGImplToJson(
      this,
    );
  }
}

abstract class PENDING implements Trip {
  const factory PENDING(
      {required final String id,
      required final String from,
      required final String to,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
      required final int seat_price,
      required final int total_seats,
      required final int reserved_seats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime departure_time,
      final Map<String, dynamic>? driver,
      required final bool is_full,
      final List<Map<String, dynamic>> tickets,
      final String? comment}) = _$PENDINGImpl;

  factory PENDING.fromJson(Map<String, dynamic> json) = _$PENDINGImpl.fromJson;

  @override
  String get id;
  @override
  String get from;
  @override
  String get to;
  @override
  @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
  int get seat_price;
  @override
  int get total_seats;
  @override
  int get reserved_seats;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get departure_time;
  @override
  Map<String, dynamic>? get driver;
  @override
  bool get is_full;
  @override
  List<Map<String, dynamic>> get tickets;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$PENDINGImplCopyWith<_$PENDINGImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FILLEDImplCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$FILLEDImplCopyWith(
          _$FILLEDImpl value, $Res Function(_$FILLEDImpl) then) =
      __$$FILLEDImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String from,
      String to,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
      int total_seats,
      int reserved_seats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime departure_time,
      Map<String, dynamic>? driver,
      List<Map<String, dynamic>> tickets,
      bool is_full,
      String? comment});
}

/// @nodoc
class __$$FILLEDImplCopyWithImpl<$Res>
    extends _$TripCopyWithImpl<$Res, _$FILLEDImpl>
    implements _$$FILLEDImplCopyWith<$Res> {
  __$$FILLEDImplCopyWithImpl(
      _$FILLEDImpl _value, $Res Function(_$FILLEDImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? to = null,
    Object? seat_price = null,
    Object? total_seats = null,
    Object? reserved_seats = null,
    Object? departure_time = null,
    Object? driver = freezed,
    Object? tickets = null,
    Object? is_full = null,
    Object? comment = freezed,
  }) {
    return _then(_$FILLEDImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      seat_price: null == seat_price
          ? _value.seat_price
          : seat_price // ignore: cast_nullable_to_non_nullable
              as int,
      total_seats: null == total_seats
          ? _value.total_seats
          : total_seats // ignore: cast_nullable_to_non_nullable
              as int,
      reserved_seats: null == reserved_seats
          ? _value.reserved_seats
          : reserved_seats // ignore: cast_nullable_to_non_nullable
              as int,
      departure_time: null == departure_time
          ? _value.departure_time
          : departure_time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      driver: freezed == driver
          ? _value._driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      is_full: null == is_full
          ? _value.is_full
          : is_full // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FILLEDImpl with DiagnosticableTreeMixin implements FILLED {
  const _$FILLEDImpl(
      {required this.id,
      required this.from,
      required this.to,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
      required this.seat_price,
      required this.total_seats,
      required this.reserved_seats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.departure_time,
      final Map<String, dynamic>? driver,
      final List<Map<String, dynamic>> tickets = const [],
      required this.is_full,
      this.comment,
      final String? $type})
      : _driver = driver,
        _tickets = tickets,
        $type = $type ?? 'FILLED';

  factory _$FILLEDImpl.fromJson(Map<String, dynamic> json) =>
      _$$FILLEDImplFromJson(json);

  @override
  final String id;
  @override
  final String from;
  @override
  final String to;
  @override
  @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
  final int seat_price;
  @override
  final int total_seats;
  @override
  final int reserved_seats;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime departure_time;
  final Map<String, dynamic>? _driver;
  @override
  Map<String, dynamic>? get driver {
    final value = _driver;
    if (value == null) return null;
    if (_driver is EqualUnmodifiableMapView) return _driver;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<Map<String, dynamic>> _tickets;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  final bool is_full;
  @override
  final String? comment;

  @JsonKey(name: 'status')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Trip.FILLED(id: $id, from: $from, to: $to, seat_price: $seat_price, total_seats: $total_seats, reserved_seats: $reserved_seats, departure_time: $departure_time, driver: $driver, tickets: $tickets, is_full: $is_full, comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Trip.FILLED'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('seat_price', seat_price))
      ..add(DiagnosticsProperty('total_seats', total_seats))
      ..add(DiagnosticsProperty('reserved_seats', reserved_seats))
      ..add(DiagnosticsProperty('departure_time', departure_time))
      ..add(DiagnosticsProperty('driver', driver))
      ..add(DiagnosticsProperty('tickets', tickets))
      ..add(DiagnosticsProperty('is_full', is_full))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FILLEDImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.seat_price, seat_price) ||
                other.seat_price == seat_price) &&
            (identical(other.total_seats, total_seats) ||
                other.total_seats == total_seats) &&
            (identical(other.reserved_seats, reserved_seats) ||
                other.reserved_seats == reserved_seats) &&
            (identical(other.departure_time, departure_time) ||
                other.departure_time == departure_time) &&
            const DeepCollectionEquality().equals(other._driver, _driver) &&
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
            (identical(other.is_full, is_full) || other.is_full == is_full) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      from,
      to,
      seat_price,
      total_seats,
      reserved_seats,
      departure_time,
      const DeepCollectionEquality().hash(_driver),
      const DeepCollectionEquality().hash(_tickets),
      is_full,
      comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FILLEDImplCopyWith<_$FILLEDImpl> get copyWith =>
      __$$FILLEDImplCopyWithImpl<_$FILLEDImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)
        PENDING,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        FILLED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        DEPARTED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        COMPLETED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        CANCELLED,
  }) {
    return FILLED(id, from, to, seat_price, total_seats, reserved_seats,
        departure_time, driver, tickets, is_full, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)?
        PENDING,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        FILLED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        DEPARTED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        COMPLETED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        CANCELLED,
  }) {
    return FILLED?.call(id, from, to, seat_price, total_seats, reserved_seats,
        departure_time, driver, tickets, is_full, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)?
        PENDING,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        FILLED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        DEPARTED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        COMPLETED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        CANCELLED,
    required TResult orElse(),
  }) {
    if (FILLED != null) {
      return FILLED(id, from, to, seat_price, total_seats, reserved_seats,
          departure_time, driver, tickets, is_full, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PENDING value) PENDING,
    required TResult Function(FILLED value) FILLED,
    required TResult Function(DEPARTED value) DEPARTED,
    required TResult Function(COMPLETED value) COMPLETED,
    required TResult Function(CANCELLED value) CANCELLED,
  }) {
    return FILLED(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PENDING value)? PENDING,
    TResult? Function(FILLED value)? FILLED,
    TResult? Function(DEPARTED value)? DEPARTED,
    TResult? Function(COMPLETED value)? COMPLETED,
    TResult? Function(CANCELLED value)? CANCELLED,
  }) {
    return FILLED?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PENDING value)? PENDING,
    TResult Function(FILLED value)? FILLED,
    TResult Function(DEPARTED value)? DEPARTED,
    TResult Function(COMPLETED value)? COMPLETED,
    TResult Function(CANCELLED value)? CANCELLED,
    required TResult orElse(),
  }) {
    if (FILLED != null) {
      return FILLED(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FILLEDImplToJson(
      this,
    );
  }
}

abstract class FILLED implements Trip {
  const factory FILLED(
      {required final String id,
      required final String from,
      required final String to,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
      required final int seat_price,
      required final int total_seats,
      required final int reserved_seats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime departure_time,
      final Map<String, dynamic>? driver,
      final List<Map<String, dynamic>> tickets,
      required final bool is_full,
      final String? comment}) = _$FILLEDImpl;

  factory FILLED.fromJson(Map<String, dynamic> json) = _$FILLEDImpl.fromJson;

  @override
  String get id;
  @override
  String get from;
  @override
  String get to;
  @override
  @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
  int get seat_price;
  @override
  int get total_seats;
  @override
  int get reserved_seats;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get departure_time;
  @override
  Map<String, dynamic>? get driver;
  @override
  List<Map<String, dynamic>> get tickets;
  @override
  bool get is_full;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$FILLEDImplCopyWith<_$FILLEDImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DEPARTEDImplCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$DEPARTEDImplCopyWith(
          _$DEPARTEDImpl value, $Res Function(_$DEPARTEDImpl) then) =
      __$$DEPARTEDImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String from,
      String to,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
      int total_seats,
      int reserved_seats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime departure_time,
      Map<String, dynamic>? driver,
      List<Map<String, dynamic>> tickets,
      bool is_full,
      String? comment});
}

/// @nodoc
class __$$DEPARTEDImplCopyWithImpl<$Res>
    extends _$TripCopyWithImpl<$Res, _$DEPARTEDImpl>
    implements _$$DEPARTEDImplCopyWith<$Res> {
  __$$DEPARTEDImplCopyWithImpl(
      _$DEPARTEDImpl _value, $Res Function(_$DEPARTEDImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? to = null,
    Object? seat_price = null,
    Object? total_seats = null,
    Object? reserved_seats = null,
    Object? departure_time = null,
    Object? driver = freezed,
    Object? tickets = null,
    Object? is_full = null,
    Object? comment = freezed,
  }) {
    return _then(_$DEPARTEDImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      seat_price: null == seat_price
          ? _value.seat_price
          : seat_price // ignore: cast_nullable_to_non_nullable
              as int,
      total_seats: null == total_seats
          ? _value.total_seats
          : total_seats // ignore: cast_nullable_to_non_nullable
              as int,
      reserved_seats: null == reserved_seats
          ? _value.reserved_seats
          : reserved_seats // ignore: cast_nullable_to_non_nullable
              as int,
      departure_time: null == departure_time
          ? _value.departure_time
          : departure_time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      driver: freezed == driver
          ? _value._driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      is_full: null == is_full
          ? _value.is_full
          : is_full // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DEPARTEDImpl with DiagnosticableTreeMixin implements DEPARTED {
  const _$DEPARTEDImpl(
      {required this.id,
      required this.from,
      required this.to,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
      required this.seat_price,
      required this.total_seats,
      required this.reserved_seats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.departure_time,
      final Map<String, dynamic>? driver,
      final List<Map<String, dynamic>> tickets = const [],
      required this.is_full,
      this.comment,
      final String? $type})
      : _driver = driver,
        _tickets = tickets,
        $type = $type ?? 'DEPARTED';

  factory _$DEPARTEDImpl.fromJson(Map<String, dynamic> json) =>
      _$$DEPARTEDImplFromJson(json);

  @override
  final String id;
  @override
  final String from;
  @override
  final String to;
  @override
  @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
  final int seat_price;
  @override
  final int total_seats;
  @override
  final int reserved_seats;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime departure_time;
  final Map<String, dynamic>? _driver;
  @override
  Map<String, dynamic>? get driver {
    final value = _driver;
    if (value == null) return null;
    if (_driver is EqualUnmodifiableMapView) return _driver;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<Map<String, dynamic>> _tickets;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  final bool is_full;
  @override
  final String? comment;

  @JsonKey(name: 'status')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Trip.DEPARTED(id: $id, from: $from, to: $to, seat_price: $seat_price, total_seats: $total_seats, reserved_seats: $reserved_seats, departure_time: $departure_time, driver: $driver, tickets: $tickets, is_full: $is_full, comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Trip.DEPARTED'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('seat_price', seat_price))
      ..add(DiagnosticsProperty('total_seats', total_seats))
      ..add(DiagnosticsProperty('reserved_seats', reserved_seats))
      ..add(DiagnosticsProperty('departure_time', departure_time))
      ..add(DiagnosticsProperty('driver', driver))
      ..add(DiagnosticsProperty('tickets', tickets))
      ..add(DiagnosticsProperty('is_full', is_full))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DEPARTEDImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.seat_price, seat_price) ||
                other.seat_price == seat_price) &&
            (identical(other.total_seats, total_seats) ||
                other.total_seats == total_seats) &&
            (identical(other.reserved_seats, reserved_seats) ||
                other.reserved_seats == reserved_seats) &&
            (identical(other.departure_time, departure_time) ||
                other.departure_time == departure_time) &&
            const DeepCollectionEquality().equals(other._driver, _driver) &&
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
            (identical(other.is_full, is_full) || other.is_full == is_full) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      from,
      to,
      seat_price,
      total_seats,
      reserved_seats,
      departure_time,
      const DeepCollectionEquality().hash(_driver),
      const DeepCollectionEquality().hash(_tickets),
      is_full,
      comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DEPARTEDImplCopyWith<_$DEPARTEDImpl> get copyWith =>
      __$$DEPARTEDImplCopyWithImpl<_$DEPARTEDImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)
        PENDING,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        FILLED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        DEPARTED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        COMPLETED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        CANCELLED,
  }) {
    return DEPARTED(id, from, to, seat_price, total_seats, reserved_seats,
        departure_time, driver, tickets, is_full, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)?
        PENDING,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        FILLED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        DEPARTED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        COMPLETED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        CANCELLED,
  }) {
    return DEPARTED?.call(id, from, to, seat_price, total_seats, reserved_seats,
        departure_time, driver, tickets, is_full, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)?
        PENDING,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        FILLED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        DEPARTED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        COMPLETED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        CANCELLED,
    required TResult orElse(),
  }) {
    if (DEPARTED != null) {
      return DEPARTED(id, from, to, seat_price, total_seats, reserved_seats,
          departure_time, driver, tickets, is_full, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PENDING value) PENDING,
    required TResult Function(FILLED value) FILLED,
    required TResult Function(DEPARTED value) DEPARTED,
    required TResult Function(COMPLETED value) COMPLETED,
    required TResult Function(CANCELLED value) CANCELLED,
  }) {
    return DEPARTED(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PENDING value)? PENDING,
    TResult? Function(FILLED value)? FILLED,
    TResult? Function(DEPARTED value)? DEPARTED,
    TResult? Function(COMPLETED value)? COMPLETED,
    TResult? Function(CANCELLED value)? CANCELLED,
  }) {
    return DEPARTED?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PENDING value)? PENDING,
    TResult Function(FILLED value)? FILLED,
    TResult Function(DEPARTED value)? DEPARTED,
    TResult Function(COMPLETED value)? COMPLETED,
    TResult Function(CANCELLED value)? CANCELLED,
    required TResult orElse(),
  }) {
    if (DEPARTED != null) {
      return DEPARTED(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DEPARTEDImplToJson(
      this,
    );
  }
}

abstract class DEPARTED implements Trip {
  const factory DEPARTED(
      {required final String id,
      required final String from,
      required final String to,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
      required final int seat_price,
      required final int total_seats,
      required final int reserved_seats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime departure_time,
      final Map<String, dynamic>? driver,
      final List<Map<String, dynamic>> tickets,
      required final bool is_full,
      final String? comment}) = _$DEPARTEDImpl;

  factory DEPARTED.fromJson(Map<String, dynamic> json) =
      _$DEPARTEDImpl.fromJson;

  @override
  String get id;
  @override
  String get from;
  @override
  String get to;
  @override
  @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
  int get seat_price;
  @override
  int get total_seats;
  @override
  int get reserved_seats;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get departure_time;
  @override
  Map<String, dynamic>? get driver;
  @override
  List<Map<String, dynamic>> get tickets;
  @override
  bool get is_full;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$DEPARTEDImplCopyWith<_$DEPARTEDImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$COMPLETEDImplCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$COMPLETEDImplCopyWith(
          _$COMPLETEDImpl value, $Res Function(_$COMPLETEDImpl) then) =
      __$$COMPLETEDImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String from,
      String to,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
      int total_seats,
      int reserved_seats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime departure_time,
      Map<String, dynamic>? driver,
      List<Map<String, dynamic>> tickets,
      bool is_full,
      String? comment});
}

/// @nodoc
class __$$COMPLETEDImplCopyWithImpl<$Res>
    extends _$TripCopyWithImpl<$Res, _$COMPLETEDImpl>
    implements _$$COMPLETEDImplCopyWith<$Res> {
  __$$COMPLETEDImplCopyWithImpl(
      _$COMPLETEDImpl _value, $Res Function(_$COMPLETEDImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? to = null,
    Object? seat_price = null,
    Object? total_seats = null,
    Object? reserved_seats = null,
    Object? departure_time = null,
    Object? driver = freezed,
    Object? tickets = null,
    Object? is_full = null,
    Object? comment = freezed,
  }) {
    return _then(_$COMPLETEDImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      seat_price: null == seat_price
          ? _value.seat_price
          : seat_price // ignore: cast_nullable_to_non_nullable
              as int,
      total_seats: null == total_seats
          ? _value.total_seats
          : total_seats // ignore: cast_nullable_to_non_nullable
              as int,
      reserved_seats: null == reserved_seats
          ? _value.reserved_seats
          : reserved_seats // ignore: cast_nullable_to_non_nullable
              as int,
      departure_time: null == departure_time
          ? _value.departure_time
          : departure_time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      driver: freezed == driver
          ? _value._driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      is_full: null == is_full
          ? _value.is_full
          : is_full // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$COMPLETEDImpl with DiagnosticableTreeMixin implements COMPLETED {
  const _$COMPLETEDImpl(
      {required this.id,
      required this.from,
      required this.to,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
      required this.seat_price,
      required this.total_seats,
      required this.reserved_seats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.departure_time,
      final Map<String, dynamic>? driver,
      final List<Map<String, dynamic>> tickets = const [],
      required this.is_full,
      this.comment,
      final String? $type})
      : _driver = driver,
        _tickets = tickets,
        $type = $type ?? 'COMPLETED';

  factory _$COMPLETEDImpl.fromJson(Map<String, dynamic> json) =>
      _$$COMPLETEDImplFromJson(json);

  @override
  final String id;
  @override
  final String from;
  @override
  final String to;
  @override
  @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
  final int seat_price;
  @override
  final int total_seats;
  @override
  final int reserved_seats;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime departure_time;
  final Map<String, dynamic>? _driver;
  @override
  Map<String, dynamic>? get driver {
    final value = _driver;
    if (value == null) return null;
    if (_driver is EqualUnmodifiableMapView) return _driver;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<Map<String, dynamic>> _tickets;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  final bool is_full;
  @override
  final String? comment;

  @JsonKey(name: 'status')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Trip.COMPLETED(id: $id, from: $from, to: $to, seat_price: $seat_price, total_seats: $total_seats, reserved_seats: $reserved_seats, departure_time: $departure_time, driver: $driver, tickets: $tickets, is_full: $is_full, comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Trip.COMPLETED'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('seat_price', seat_price))
      ..add(DiagnosticsProperty('total_seats', total_seats))
      ..add(DiagnosticsProperty('reserved_seats', reserved_seats))
      ..add(DiagnosticsProperty('departure_time', departure_time))
      ..add(DiagnosticsProperty('driver', driver))
      ..add(DiagnosticsProperty('tickets', tickets))
      ..add(DiagnosticsProperty('is_full', is_full))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$COMPLETEDImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.seat_price, seat_price) ||
                other.seat_price == seat_price) &&
            (identical(other.total_seats, total_seats) ||
                other.total_seats == total_seats) &&
            (identical(other.reserved_seats, reserved_seats) ||
                other.reserved_seats == reserved_seats) &&
            (identical(other.departure_time, departure_time) ||
                other.departure_time == departure_time) &&
            const DeepCollectionEquality().equals(other._driver, _driver) &&
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
            (identical(other.is_full, is_full) || other.is_full == is_full) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      from,
      to,
      seat_price,
      total_seats,
      reserved_seats,
      departure_time,
      const DeepCollectionEquality().hash(_driver),
      const DeepCollectionEquality().hash(_tickets),
      is_full,
      comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$COMPLETEDImplCopyWith<_$COMPLETEDImpl> get copyWith =>
      __$$COMPLETEDImplCopyWithImpl<_$COMPLETEDImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)
        PENDING,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        FILLED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        DEPARTED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        COMPLETED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        CANCELLED,
  }) {
    return COMPLETED(id, from, to, seat_price, total_seats, reserved_seats,
        departure_time, driver, tickets, is_full, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)?
        PENDING,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        FILLED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        DEPARTED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        COMPLETED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        CANCELLED,
  }) {
    return COMPLETED?.call(id, from, to, seat_price, total_seats,
        reserved_seats, departure_time, driver, tickets, is_full, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)?
        PENDING,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        FILLED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        DEPARTED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        COMPLETED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        CANCELLED,
    required TResult orElse(),
  }) {
    if (COMPLETED != null) {
      return COMPLETED(id, from, to, seat_price, total_seats, reserved_seats,
          departure_time, driver, tickets, is_full, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PENDING value) PENDING,
    required TResult Function(FILLED value) FILLED,
    required TResult Function(DEPARTED value) DEPARTED,
    required TResult Function(COMPLETED value) COMPLETED,
    required TResult Function(CANCELLED value) CANCELLED,
  }) {
    return COMPLETED(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PENDING value)? PENDING,
    TResult? Function(FILLED value)? FILLED,
    TResult? Function(DEPARTED value)? DEPARTED,
    TResult? Function(COMPLETED value)? COMPLETED,
    TResult? Function(CANCELLED value)? CANCELLED,
  }) {
    return COMPLETED?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PENDING value)? PENDING,
    TResult Function(FILLED value)? FILLED,
    TResult Function(DEPARTED value)? DEPARTED,
    TResult Function(COMPLETED value)? COMPLETED,
    TResult Function(CANCELLED value)? CANCELLED,
    required TResult orElse(),
  }) {
    if (COMPLETED != null) {
      return COMPLETED(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$COMPLETEDImplToJson(
      this,
    );
  }
}

abstract class COMPLETED implements Trip {
  const factory COMPLETED(
      {required final String id,
      required final String from,
      required final String to,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
      required final int seat_price,
      required final int total_seats,
      required final int reserved_seats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime departure_time,
      final Map<String, dynamic>? driver,
      final List<Map<String, dynamic>> tickets,
      required final bool is_full,
      final String? comment}) = _$COMPLETEDImpl;

  factory COMPLETED.fromJson(Map<String, dynamic> json) =
      _$COMPLETEDImpl.fromJson;

  @override
  String get id;
  @override
  String get from;
  @override
  String get to;
  @override
  @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
  int get seat_price;
  @override
  int get total_seats;
  @override
  int get reserved_seats;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get departure_time;
  @override
  Map<String, dynamic>? get driver;
  @override
  List<Map<String, dynamic>> get tickets;
  @override
  bool get is_full;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$COMPLETEDImplCopyWith<_$COMPLETEDImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CANCELLEDImplCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$CANCELLEDImplCopyWith(
          _$CANCELLEDImpl value, $Res Function(_$CANCELLEDImpl) then) =
      __$$CANCELLEDImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String from,
      String to,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
      int total_seats,
      int reserved_seats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime departure_time,
      Map<String, dynamic>? driver,
      List<Map<String, dynamic>> tickets,
      bool is_full,
      String? comment});
}

/// @nodoc
class __$$CANCELLEDImplCopyWithImpl<$Res>
    extends _$TripCopyWithImpl<$Res, _$CANCELLEDImpl>
    implements _$$CANCELLEDImplCopyWith<$Res> {
  __$$CANCELLEDImplCopyWithImpl(
      _$CANCELLEDImpl _value, $Res Function(_$CANCELLEDImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? to = null,
    Object? seat_price = null,
    Object? total_seats = null,
    Object? reserved_seats = null,
    Object? departure_time = null,
    Object? driver = freezed,
    Object? tickets = null,
    Object? is_full = null,
    Object? comment = freezed,
  }) {
    return _then(_$CANCELLEDImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      seat_price: null == seat_price
          ? _value.seat_price
          : seat_price // ignore: cast_nullable_to_non_nullable
              as int,
      total_seats: null == total_seats
          ? _value.total_seats
          : total_seats // ignore: cast_nullable_to_non_nullable
              as int,
      reserved_seats: null == reserved_seats
          ? _value.reserved_seats
          : reserved_seats // ignore: cast_nullable_to_non_nullable
              as int,
      departure_time: null == departure_time
          ? _value.departure_time
          : departure_time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      driver: freezed == driver
          ? _value._driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      is_full: null == is_full
          ? _value.is_full
          : is_full // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CANCELLEDImpl with DiagnosticableTreeMixin implements CANCELLED {
  const _$CANCELLEDImpl(
      {required this.id,
      required this.from,
      required this.to,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
      required this.seat_price,
      required this.total_seats,
      required this.reserved_seats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.departure_time,
      final Map<String, dynamic>? driver,
      final List<Map<String, dynamic>> tickets = const [],
      required this.is_full,
      this.comment,
      final String? $type})
      : _driver = driver,
        _tickets = tickets,
        $type = $type ?? 'CANCELLED';

  factory _$CANCELLEDImpl.fromJson(Map<String, dynamic> json) =>
      _$$CANCELLEDImplFromJson(json);

  @override
  final String id;
  @override
  final String from;
  @override
  final String to;
  @override
  @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
  final int seat_price;
  @override
  final int total_seats;
  @override
  final int reserved_seats;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime departure_time;
  final Map<String, dynamic>? _driver;
  @override
  Map<String, dynamic>? get driver {
    final value = _driver;
    if (value == null) return null;
    if (_driver is EqualUnmodifiableMapView) return _driver;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<Map<String, dynamic>> _tickets;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  final bool is_full;
  @override
  final String? comment;

  @JsonKey(name: 'status')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Trip.CANCELLED(id: $id, from: $from, to: $to, seat_price: $seat_price, total_seats: $total_seats, reserved_seats: $reserved_seats, departure_time: $departure_time, driver: $driver, tickets: $tickets, is_full: $is_full, comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Trip.CANCELLED'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('seat_price', seat_price))
      ..add(DiagnosticsProperty('total_seats', total_seats))
      ..add(DiagnosticsProperty('reserved_seats', reserved_seats))
      ..add(DiagnosticsProperty('departure_time', departure_time))
      ..add(DiagnosticsProperty('driver', driver))
      ..add(DiagnosticsProperty('tickets', tickets))
      ..add(DiagnosticsProperty('is_full', is_full))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CANCELLEDImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.seat_price, seat_price) ||
                other.seat_price == seat_price) &&
            (identical(other.total_seats, total_seats) ||
                other.total_seats == total_seats) &&
            (identical(other.reserved_seats, reserved_seats) ||
                other.reserved_seats == reserved_seats) &&
            (identical(other.departure_time, departure_time) ||
                other.departure_time == departure_time) &&
            const DeepCollectionEquality().equals(other._driver, _driver) &&
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
            (identical(other.is_full, is_full) || other.is_full == is_full) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      from,
      to,
      seat_price,
      total_seats,
      reserved_seats,
      departure_time,
      const DeepCollectionEquality().hash(_driver),
      const DeepCollectionEquality().hash(_tickets),
      is_full,
      comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CANCELLEDImplCopyWith<_$CANCELLEDImpl> get copyWith =>
      __$$CANCELLEDImplCopyWithImpl<_$CANCELLEDImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)
        PENDING,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        FILLED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        DEPARTED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        COMPLETED,
    required TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)
        CANCELLED,
  }) {
    return CANCELLED(id, from, to, seat_price, total_seats, reserved_seats,
        departure_time, driver, tickets, is_full, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)?
        PENDING,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        FILLED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        DEPARTED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        COMPLETED,
    TResult? Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        CANCELLED,
  }) {
    return CANCELLED?.call(id, from, to, seat_price, total_seats,
        reserved_seats, departure_time, driver, tickets, is_full, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            bool is_full,
            List<Map<String, dynamic>> tickets,
            String? comment)?
        PENDING,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        FILLED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        DEPARTED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        COMPLETED,
    TResult Function(
            String id,
            String from,
            String to,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int seat_price,
            int total_seats,
            int reserved_seats,
            @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
            DateTime departure_time,
            Map<String, dynamic>? driver,
            List<Map<String, dynamic>> tickets,
            bool is_full,
            String? comment)?
        CANCELLED,
    required TResult orElse(),
  }) {
    if (CANCELLED != null) {
      return CANCELLED(id, from, to, seat_price, total_seats, reserved_seats,
          departure_time, driver, tickets, is_full, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PENDING value) PENDING,
    required TResult Function(FILLED value) FILLED,
    required TResult Function(DEPARTED value) DEPARTED,
    required TResult Function(COMPLETED value) COMPLETED,
    required TResult Function(CANCELLED value) CANCELLED,
  }) {
    return CANCELLED(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PENDING value)? PENDING,
    TResult? Function(FILLED value)? FILLED,
    TResult? Function(DEPARTED value)? DEPARTED,
    TResult? Function(COMPLETED value)? COMPLETED,
    TResult? Function(CANCELLED value)? CANCELLED,
  }) {
    return CANCELLED?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PENDING value)? PENDING,
    TResult Function(FILLED value)? FILLED,
    TResult Function(DEPARTED value)? DEPARTED,
    TResult Function(COMPLETED value)? COMPLETED,
    TResult Function(CANCELLED value)? CANCELLED,
    required TResult orElse(),
  }) {
    if (CANCELLED != null) {
      return CANCELLED(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CANCELLEDImplToJson(
      this,
    );
  }
}

abstract class CANCELLED implements Trip {
  const factory CANCELLED(
      {required final String id,
      required final String from,
      required final String to,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
      required final int seat_price,
      required final int total_seats,
      required final int reserved_seats,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime departure_time,
      final Map<String, dynamic>? driver,
      final List<Map<String, dynamic>> tickets,
      required final bool is_full,
      final String? comment}) = _$CANCELLEDImpl;

  factory CANCELLED.fromJson(Map<String, dynamic> json) =
      _$CANCELLEDImpl.fromJson;

  @override
  String get id;
  @override
  String get from;
  @override
  String get to;
  @override
  @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
  int get seat_price;
  @override
  int get total_seats;
  @override
  int get reserved_seats;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get departure_time;
  @override
  Map<String, dynamic>? get driver;
  @override
  List<Map<String, dynamic>> get tickets;
  @override
  bool get is_full;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$CANCELLEDImplCopyWith<_$CANCELLEDImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
