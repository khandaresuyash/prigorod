// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PENDINGImpl _$$PENDINGImplFromJson(Map<String, dynamic> json) =>
    _$PENDINGImpl(
      id: json['id'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      seat_price: _intFromJson(json['seat_price'] as String),
      total_seats: json['total_seats'] as int,
      reserved_seats: json['reserved_seats'] as int,
      departure_time: _dateTimeFromJson(json['departure_time'] as String),
      driver: json['driver'] as Map<String, dynamic>?,
      is_full: json['is_full'] as bool,
      tickets: (json['tickets'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      comment: json['comment'] as String?,
      $type: json['status'] as String?,
    );

Map<String, dynamic> _$$PENDINGImplToJson(_$PENDINGImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'to': instance.to,
      'seat_price': _intToJson(instance.seat_price),
      'total_seats': instance.total_seats,
      'reserved_seats': instance.reserved_seats,
      'departure_time': _dateTimeToJson(instance.departure_time),
      'driver': instance.driver,
      'is_full': instance.is_full,
      'tickets': instance.tickets,
      'comment': instance.comment,
      'status': instance.$type,
    };

_$FILLEDImpl _$$FILLEDImplFromJson(Map<String, dynamic> json) => _$FILLEDImpl(
      id: json['id'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      seat_price: _intFromJson(json['seat_price'] as String),
      total_seats: json['total_seats'] as int,
      reserved_seats: json['reserved_seats'] as int,
      departure_time: _dateTimeFromJson(json['departure_time'] as String),
      driver: json['driver'] as Map<String, dynamic>?,
      tickets: (json['tickets'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      is_full: json['is_full'] as bool,
      comment: json['comment'] as String?,
      $type: json['status'] as String?,
    );

Map<String, dynamic> _$$FILLEDImplToJson(_$FILLEDImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'to': instance.to,
      'seat_price': _intToJson(instance.seat_price),
      'total_seats': instance.total_seats,
      'reserved_seats': instance.reserved_seats,
      'departure_time': _dateTimeToJson(instance.departure_time),
      'driver': instance.driver,
      'tickets': instance.tickets,
      'is_full': instance.is_full,
      'comment': instance.comment,
      'status': instance.$type,
    };

_$DEPARTEDImpl _$$DEPARTEDImplFromJson(Map<String, dynamic> json) =>
    _$DEPARTEDImpl(
      id: json['id'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      seat_price: _intFromJson(json['seat_price'] as String),
      total_seats: json['total_seats'] as int,
      reserved_seats: json['reserved_seats'] as int,
      departure_time: _dateTimeFromJson(json['departure_time'] as String),
      driver: json['driver'] as Map<String, dynamic>?,
      tickets: (json['tickets'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      is_full: json['is_full'] as bool,
      comment: json['comment'] as String?,
      $type: json['status'] as String?,
    );

Map<String, dynamic> _$$DEPARTEDImplToJson(_$DEPARTEDImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'to': instance.to,
      'seat_price': _intToJson(instance.seat_price),
      'total_seats': instance.total_seats,
      'reserved_seats': instance.reserved_seats,
      'departure_time': _dateTimeToJson(instance.departure_time),
      'driver': instance.driver,
      'tickets': instance.tickets,
      'is_full': instance.is_full,
      'comment': instance.comment,
      'status': instance.$type,
    };

_$COMPLETEDImpl _$$COMPLETEDImplFromJson(Map<String, dynamic> json) =>
    _$COMPLETEDImpl(
      id: json['id'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      seat_price: _intFromJson(json['seat_price'] as String),
      total_seats: json['total_seats'] as int,
      reserved_seats: json['reserved_seats'] as int,
      departure_time: _dateTimeFromJson(json['departure_time'] as String),
      driver: json['driver'] as Map<String, dynamic>?,
      tickets: (json['tickets'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      is_full: json['is_full'] as bool,
      comment: json['comment'] as String?,
      $type: json['status'] as String?,
    );

Map<String, dynamic> _$$COMPLETEDImplToJson(_$COMPLETEDImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'to': instance.to,
      'seat_price': _intToJson(instance.seat_price),
      'total_seats': instance.total_seats,
      'reserved_seats': instance.reserved_seats,
      'departure_time': _dateTimeToJson(instance.departure_time),
      'driver': instance.driver,
      'tickets': instance.tickets,
      'is_full': instance.is_full,
      'comment': instance.comment,
      'status': instance.$type,
    };

_$CANCELLEDImpl _$$CANCELLEDImplFromJson(Map<String, dynamic> json) =>
    _$CANCELLEDImpl(
      id: json['id'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      seat_price: _intFromJson(json['seat_price'] as String),
      total_seats: json['total_seats'] as int,
      reserved_seats: json['reserved_seats'] as int,
      departure_time: _dateTimeFromJson(json['departure_time'] as String),
      driver: json['driver'] as Map<String, dynamic>?,
      tickets: (json['tickets'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      is_full: json['is_full'] as bool,
      comment: json['comment'] as String?,
      $type: json['status'] as String?,
    );

Map<String, dynamic> _$$CANCELLEDImplToJson(_$CANCELLEDImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'to': instance.to,
      'seat_price': _intToJson(instance.seat_price),
      'total_seats': instance.total_seats,
      'reserved_seats': instance.reserved_seats,
      'departure_time': _dateTimeToJson(instance.departure_time),
      'driver': instance.driver,
      'tickets': instance.tickets,
      'is_full': instance.is_full,
      'comment': instance.comment,
      'status': instance.$type,
    };
