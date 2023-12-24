// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverImpl _$$DriverImplFromJson(Map<String, dynamic> json) => _$DriverImpl(
      id: json['id'] as String,
      phone_number: json['phone_number'] as String,
      name: json['name'] as String,
      city: json['city'] as String,
      village: json['village'] as String,
      car: Car.fromJson(json['car'] as Map<String, dynamic>),
      earning: _intFromJson(json['earning'] as String),
      $type: json['user_type'] as String?,
    );

Map<String, dynamic> _$$DriverImplToJson(_$DriverImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone_number': instance.phone_number,
      'name': instance.name,
      'city': instance.city,
      'village': instance.village,
      'car': instance.car.toJson(),
      'earning': _intToJson(instance.earning),
      'user_type': instance.$type,
    };

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      id: json['id'] as String,
      phone_number: json['phone_number'] as String,
      name: json['name'] as String,
      city: json['city'] as String,
      village: json['village'] as String,
      $type: json['user_type'] as String?,
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone_number': instance.phone_number,
      'name': instance.name,
      'city': instance.city,
      'village': instance.village,
      'user_type': instance.$type,
    };

_$CarImpl _$$CarImplFromJson(Map<String, dynamic> json) => _$CarImpl(
      id: json['id'] as String,
      license_number: json['license_number'] as String,
      model: json['model'] as String,
      brand: json['brand'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$CarImplToJson(_$CarImpl instance) => <String, dynamic>{
      'id': instance.id,
      'license_number': instance.license_number,
      'model': instance.model,
      'brand': instance.brand,
      'color': instance.color,
    };
