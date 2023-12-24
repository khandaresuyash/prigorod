// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

String _intToJson(int value) => value.toString();
int _intFromJson(String value) => int.parse(value);


@Freezed(unionKey: "user_type")
class User with _$User {
  const factory User.DRIVER({
    required String id,
    required String phone_number,
    required String name,
    required String city,
    required String village,
    required Car car,
    @JsonKey(fromJson: _intFromJson,toJson: _intToJson)
    required int earning
  }) = Driver;
  const factory User.CUSTOMER({
    required String id,
    required String phone_number,
    required String name,
    required String city,
    required String village,
  }) = Customer;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Car with _$Car {
  const factory Car({
    required String id,
    required String license_number,
    required String model,
    required String brand,
    required String color,
  }) = _Car;
  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
