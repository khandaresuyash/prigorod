// ignore_for_file: non_constant_identifier_names, invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@Freezed(unionKey: "status")
class Trip with _$Trip {
  const factory Trip.PENDING({
    required String id,
    required String from,
    required String to,
    @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
    required int seat_price,
    required int total_seats,
    required int  reserved_seats,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime departure_time,
    Map<String,dynamic>? driver,
    required bool is_full,
    @Default([]) List<Map<String,dynamic>> tickets,
    String? comment,
  }) = PENDING;
  const factory Trip.FILLED({
    required String id,
    required String from,
    required String to,
    @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
    required int seat_price,
    required int total_seats,
    required int  reserved_seats,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime departure_time,
    Map<String,dynamic>? driver,
    @Default([]) List<Map<String,dynamic>> tickets,
    required bool is_full,
    String? comment,
  }) = FILLED;
  const factory Trip.DEPARTED({
    required String id,
    required String from,
    required String to,
    @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
    required int seat_price,
    required int total_seats, required int  reserved_seats,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime departure_time,
    Map<String,dynamic>? driver,
    @Default([]) List<Map<String,dynamic>> tickets,
    required bool is_full,
    String? comment,
  }) = DEPARTED;
  const factory Trip.COMPLETED({
    required String id,
    required String from,
    required String to,
    @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
    required int seat_price,
    required int total_seats,
    required int  reserved_seats,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime departure_time,
    Map<String,dynamic>? driver,
    @Default([]) List<Map<String,dynamic>> tickets,
    required bool is_full,
    String? comment,
  }) = COMPLETED;
  const factory Trip.CANCELLED({
    required String id,
    required String from,
    required String to,
    @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
    required int seat_price,
    required int total_seats,   required int  reserved_seats,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime departure_time,
    Map<String,dynamic>? driver,
    @Default([]) List<Map<String,dynamic>> tickets,
    required bool is_full,
    String? comment,
  }) = CANCELLED;

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);
}

String _dateTimeToJson(DateTime value) => value.toIso8601String();
DateTime _dateTimeFromJson(String value) => DateTime.parse(value);

String _intToJson(int value) => value.toString();
int _intFromJson(String value) => int.parse(value);
