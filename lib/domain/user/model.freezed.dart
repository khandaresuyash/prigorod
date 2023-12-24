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

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['user_type']) {
    case 'DRIVER':
      return Driver.fromJson(json);
    case 'CUSTOMER':
      return Customer.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'user_type', 'User',
          'Invalid union type "${json['user_type']}"!');
  }
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get phone_number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get village => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String phone_number,
            String name,
            String city,
            String village,
            Car car,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int earning)
        DRIVER,
    required TResult Function(String id, String phone_number, String name,
            String city, String village)
        CUSTOMER,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String phone_number,
            String name,
            String city,
            String village,
            Car car,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int earning)?
        DRIVER,
    TResult? Function(String id, String phone_number, String name, String city,
            String village)?
        CUSTOMER,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String phone_number,
            String name,
            String city,
            String village,
            Car car,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int earning)?
        DRIVER,
    TResult Function(String id, String phone_number, String name, String city,
            String village)?
        CUSTOMER,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Driver value) DRIVER,
    required TResult Function(Customer value) CUSTOMER,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Driver value)? DRIVER,
    TResult? Function(Customer value)? CUSTOMER,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Driver value)? DRIVER,
    TResult Function(Customer value)? CUSTOMER,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String phone_number,
      String name,
      String city,
      String village});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone_number = null,
    Object? name = null,
    Object? city = null,
    Object? village = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      village: null == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DriverImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$DriverImplCopyWith(
          _$DriverImpl value, $Res Function(_$DriverImpl) then) =
      __$$DriverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String phone_number,
      String name,
      String city,
      String village,
      Car car,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int earning});

  $CarCopyWith<$Res> get car;
}

/// @nodoc
class __$$DriverImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$DriverImpl>
    implements _$$DriverImplCopyWith<$Res> {
  __$$DriverImplCopyWithImpl(
      _$DriverImpl _value, $Res Function(_$DriverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone_number = null,
    Object? name = null,
    Object? city = null,
    Object? village = null,
    Object? car = null,
    Object? earning = null,
  }) {
    return _then(_$DriverImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      village: null == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String,
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
      earning: null == earning
          ? _value.earning
          : earning // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CarCopyWith<$Res> get car {
    return $CarCopyWith<$Res>(_value.car, (value) {
      return _then(_value.copyWith(car: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverImpl with DiagnosticableTreeMixin implements Driver {
  const _$DriverImpl(
      {required this.id,
      required this.phone_number,
      required this.name,
      required this.city,
      required this.village,
      required this.car,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
      required this.earning,
      final String? $type})
      : $type = $type ?? 'DRIVER';

  factory _$DriverImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverImplFromJson(json);

  @override
  final String id;
  @override
  final String phone_number;
  @override
  final String name;
  @override
  final String city;
  @override
  final String village;
  @override
  final Car car;
  @override
  @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
  final int earning;

  @JsonKey(name: 'user_type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User.DRIVER(id: $id, phone_number: $phone_number, name: $name, city: $city, village: $village, car: $car, earning: $earning)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User.DRIVER'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('phone_number', phone_number))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('village', village))
      ..add(DiagnosticsProperty('car', car))
      ..add(DiagnosticsProperty('earning', earning));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone_number, phone_number) ||
                other.phone_number == phone_number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.village, village) || other.village == village) &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.earning, earning) || other.earning == earning));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, phone_number, name, city, village, car, earning);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverImplCopyWith<_$DriverImpl> get copyWith =>
      __$$DriverImplCopyWithImpl<_$DriverImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String phone_number,
            String name,
            String city,
            String village,
            Car car,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int earning)
        DRIVER,
    required TResult Function(String id, String phone_number, String name,
            String city, String village)
        CUSTOMER,
  }) {
    return DRIVER(id, phone_number, name, city, village, car, earning);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String phone_number,
            String name,
            String city,
            String village,
            Car car,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int earning)?
        DRIVER,
    TResult? Function(String id, String phone_number, String name, String city,
            String village)?
        CUSTOMER,
  }) {
    return DRIVER?.call(id, phone_number, name, city, village, car, earning);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String phone_number,
            String name,
            String city,
            String village,
            Car car,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int earning)?
        DRIVER,
    TResult Function(String id, String phone_number, String name, String city,
            String village)?
        CUSTOMER,
    required TResult orElse(),
  }) {
    if (DRIVER != null) {
      return DRIVER(id, phone_number, name, city, village, car, earning);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Driver value) DRIVER,
    required TResult Function(Customer value) CUSTOMER,
  }) {
    return DRIVER(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Driver value)? DRIVER,
    TResult? Function(Customer value)? CUSTOMER,
  }) {
    return DRIVER?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Driver value)? DRIVER,
    TResult Function(Customer value)? CUSTOMER,
    required TResult orElse(),
  }) {
    if (DRIVER != null) {
      return DRIVER(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverImplToJson(
      this,
    );
  }
}

abstract class Driver implements User {
  const factory Driver(
      {required final String id,
      required final String phone_number,
      required final String name,
      required final String city,
      required final String village,
      required final Car car,
      @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
      required final int earning}) = _$DriverImpl;

  factory Driver.fromJson(Map<String, dynamic> json) = _$DriverImpl.fromJson;

  @override
  String get id;
  @override
  String get phone_number;
  @override
  String get name;
  @override
  String get city;
  @override
  String get village;
  Car get car;
  @JsonKey(fromJson: _intFromJson, toJson: _intToJson)
  int get earning;
  @override
  @JsonKey(ignore: true)
  _$$DriverImplCopyWith<_$DriverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$CustomerImplCopyWith(
          _$CustomerImpl value, $Res Function(_$CustomerImpl) then) =
      __$$CustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String phone_number,
      String name,
      String city,
      String village});
}

/// @nodoc
class __$$CustomerImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$CustomerImpl>
    implements _$$CustomerImplCopyWith<$Res> {
  __$$CustomerImplCopyWithImpl(
      _$CustomerImpl _value, $Res Function(_$CustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone_number = null,
    Object? name = null,
    Object? city = null,
    Object? village = null,
  }) {
    return _then(_$CustomerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      village: null == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerImpl with DiagnosticableTreeMixin implements Customer {
  const _$CustomerImpl(
      {required this.id,
      required this.phone_number,
      required this.name,
      required this.city,
      required this.village,
      final String? $type})
      : $type = $type ?? 'CUSTOMER';

  factory _$CustomerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerImplFromJson(json);

  @override
  final String id;
  @override
  final String phone_number;
  @override
  final String name;
  @override
  final String city;
  @override
  final String village;

  @JsonKey(name: 'user_type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User.CUSTOMER(id: $id, phone_number: $phone_number, name: $name, city: $city, village: $village)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User.CUSTOMER'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('phone_number', phone_number))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('village', village));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone_number, phone_number) ||
                other.phone_number == phone_number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.village, village) || other.village == village));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, phone_number, name, city, village);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      __$$CustomerImplCopyWithImpl<_$CustomerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String phone_number,
            String name,
            String city,
            String village,
            Car car,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int earning)
        DRIVER,
    required TResult Function(String id, String phone_number, String name,
            String city, String village)
        CUSTOMER,
  }) {
    return CUSTOMER(id, phone_number, name, city, village);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String phone_number,
            String name,
            String city,
            String village,
            Car car,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int earning)?
        DRIVER,
    TResult? Function(String id, String phone_number, String name, String city,
            String village)?
        CUSTOMER,
  }) {
    return CUSTOMER?.call(id, phone_number, name, city, village);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String phone_number,
            String name,
            String city,
            String village,
            Car car,
            @JsonKey(fromJson: _intFromJson, toJson: _intToJson) int earning)?
        DRIVER,
    TResult Function(String id, String phone_number, String name, String city,
            String village)?
        CUSTOMER,
    required TResult orElse(),
  }) {
    if (CUSTOMER != null) {
      return CUSTOMER(id, phone_number, name, city, village);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Driver value) DRIVER,
    required TResult Function(Customer value) CUSTOMER,
  }) {
    return CUSTOMER(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Driver value)? DRIVER,
    TResult? Function(Customer value)? CUSTOMER,
  }) {
    return CUSTOMER?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Driver value)? DRIVER,
    TResult Function(Customer value)? CUSTOMER,
    required TResult orElse(),
  }) {
    if (CUSTOMER != null) {
      return CUSTOMER(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerImplToJson(
      this,
    );
  }
}

abstract class Customer implements User {
  const factory Customer(
      {required final String id,
      required final String phone_number,
      required final String name,
      required final String city,
      required final String village}) = _$CustomerImpl;

  factory Customer.fromJson(Map<String, dynamic> json) =
      _$CustomerImpl.fromJson;

  @override
  String get id;
  @override
  String get phone_number;
  @override
  String get name;
  @override
  String get city;
  @override
  String get village;
  @override
  @JsonKey(ignore: true)
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Car _$CarFromJson(Map<String, dynamic> json) {
  return _Car.fromJson(json);
}

/// @nodoc
mixin _$Car {
  String get id => throw _privateConstructorUsedError;
  String get license_number => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarCopyWith<Car> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarCopyWith<$Res> {
  factory $CarCopyWith(Car value, $Res Function(Car) then) =
      _$CarCopyWithImpl<$Res, Car>;
  @useResult
  $Res call(
      {String id,
      String license_number,
      String model,
      String brand,
      String color});
}

/// @nodoc
class _$CarCopyWithImpl<$Res, $Val extends Car> implements $CarCopyWith<$Res> {
  _$CarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? license_number = null,
    Object? model = null,
    Object? brand = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      license_number: null == license_number
          ? _value.license_number
          : license_number // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarImplCopyWith<$Res> implements $CarCopyWith<$Res> {
  factory _$$CarImplCopyWith(_$CarImpl value, $Res Function(_$CarImpl) then) =
      __$$CarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String license_number,
      String model,
      String brand,
      String color});
}

/// @nodoc
class __$$CarImplCopyWithImpl<$Res> extends _$CarCopyWithImpl<$Res, _$CarImpl>
    implements _$$CarImplCopyWith<$Res> {
  __$$CarImplCopyWithImpl(_$CarImpl _value, $Res Function(_$CarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? license_number = null,
    Object? model = null,
    Object? brand = null,
    Object? color = null,
  }) {
    return _then(_$CarImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      license_number: null == license_number
          ? _value.license_number
          : license_number // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarImpl with DiagnosticableTreeMixin implements _Car {
  const _$CarImpl(
      {required this.id,
      required this.license_number,
      required this.model,
      required this.brand,
      required this.color});

  factory _$CarImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarImplFromJson(json);

  @override
  final String id;
  @override
  final String license_number;
  @override
  final String model;
  @override
  final String brand;
  @override
  final String color;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Car(id: $id, license_number: $license_number, model: $model, brand: $brand, color: $color)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Car'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('license_number', license_number))
      ..add(DiagnosticsProperty('model', model))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('color', color));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.license_number, license_number) ||
                other.license_number == license_number) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, license_number, model, brand, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarImplCopyWith<_$CarImpl> get copyWith =>
      __$$CarImplCopyWithImpl<_$CarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarImplToJson(
      this,
    );
  }
}

abstract class _Car implements Car {
  const factory _Car(
      {required final String id,
      required final String license_number,
      required final String model,
      required final String brand,
      required final String color}) = _$CarImpl;

  factory _Car.fromJson(Map<String, dynamic> json) = _$CarImpl.fromJson;

  @override
  String get id;
  @override
  String get license_number;
  @override
  String get model;
  @override
  String get brand;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$$CarImplCopyWith<_$CarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
