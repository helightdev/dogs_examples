// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_field, unused_import, public_member_api_docs, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import 'dart:core';
import 'package:dogs_core/dogs_core.dart' as gen;
import 'package:lyell/lyell.dart' as gen;
import 'dart:core' as gen0;
import 'package:dogs_odm/src/annotations.dart' as gen1;
import 'package:petstore/models/order.dart' as gen2;
import 'package:petstore/models/order.dart';

class OrderConverter extends gen.DefaultStructureConverter<gen2.Order> {
  OrderConverter()
      : super(
            struct: const gen.DogStructure<gen2.Order>(
                'Order',
                gen.StructureConformity.dataclass,
                [
                  gen.DogStructureField(
                      gen.QualifiedTerminal<gen0.String>(),
                      gen.TypeToken<gen0.String>(),
                      null,
                      gen.IterableKind.none,
                      'id',
                      true,
                      false,
                      [gen1.Id()]),
                  gen.DogStructureField(
                      gen.QualifiedTerminal<gen0.String>(),
                      gen.TypeToken<gen0.String>(),
                      null,
                      gen.IterableKind.none,
                      'petId',
                      false,
                      false, []),
                  gen.DogStructureField(
                      gen.QualifiedTerminal<gen0.int>(),
                      gen.TypeToken<gen0.int>(),
                      null,
                      gen.IterableKind.none,
                      'quantity',
                      false,
                      false, []),
                  gen.DogStructureField(
                      gen.QualifiedTerminal<gen0.DateTime>(),
                      gen.TypeToken<gen0.DateTime>(),
                      null,
                      gen.IterableKind.none,
                      'shipDate',
                      false,
                      true, []),
                  gen.DogStructureField(
                      gen.QualifiedTerminal<gen2.OrderStatus>(),
                      gen.TypeToken<gen2.OrderStatus>(),
                      null,
                      gen.IterableKind.none,
                      'status',
                      false,
                      true, []),
                  gen.DogStructureField(
                      gen.QualifiedTerminal<gen0.bool>(),
                      gen.TypeToken<gen0.bool>(),
                      null,
                      gen.IterableKind.none,
                      'complete',
                      false,
                      false, [])
                ],
                [],
                gen.ObjectFactoryStructureProxy<gen2.Order>(
                    _activator,
                    [
                      _$id,
                      _$petId,
                      _$quantity,
                      _$shipDate,
                      _$status,
                      _$complete
                    ],
                    _values,
                    _hash,
                    _equals)));

  static dynamic _$id(gen2.Order obj) => obj.id;

  static dynamic _$petId(gen2.Order obj) => obj.petId;

  static dynamic _$quantity(gen2.Order obj) => obj.quantity;

  static dynamic _$shipDate(gen2.Order obj) => obj.shipDate;

  static dynamic _$status(gen2.Order obj) => obj.status;

  static dynamic _$complete(gen2.Order obj) => obj.complete;

  static List<dynamic> _values(gen2.Order obj) =>
      [obj.id, obj.petId, obj.quantity, obj.shipDate, obj.status, obj.complete];

  static gen2.Order _activator(List list) {
    return gen2.Order(
        id: list[0],
        petId: list[1],
        quantity: list[2],
        shipDate: list[3],
        status: list[4],
        complete: list[5]);
  }

  static int _hash(gen2.Order obj) =>
      obj.id.hashCode ^
      obj.petId.hashCode ^
      obj.quantity.hashCode ^
      obj.shipDate.hashCode ^
      obj.status.hashCode ^
      obj.complete.hashCode;

  static bool _equals(
    gen2.Order a,
    gen2.Order b,
  ) =>
      (a.id == b.id &&
          a.petId == b.petId &&
          a.quantity == b.quantity &&
          a.shipDate == b.shipDate &&
          a.status == b.status &&
          a.complete == b.complete);
}

class OrderBuilder {
  OrderBuilder([gen2.Order? $src]) {
    if ($src == null) {
      $values = List.filled(6, null);
    } else {
      $values = OrderConverter._values($src);
      this.$src = $src;
    }
  }

  late List<dynamic> $values;

  gen2.Order? $src;

  set id(gen0.String? value) {
    $values[0] = value;
  }

  gen0.String? get id => $values[0];

  set petId(gen0.String value) {
    $values[1] = value;
  }

  gen0.String get petId => $values[1];

  set quantity(gen0.int value) {
    $values[2] = value;
  }

  gen0.int get quantity => $values[2];

  set shipDate(gen0.DateTime value) {
    $values[3] = value;
  }

  gen0.DateTime get shipDate => $values[3];

  set status(gen2.OrderStatus value) {
    $values[4] = value;
  }

  gen2.OrderStatus get status => $values[4];

  set complete(gen0.bool value) {
    $values[5] = value;
  }

  gen0.bool get complete => $values[5];

  gen2.Order build() {
    var instance = OrderConverter._activator($values);

    return instance;
  }
}

extension OrderDogsExtension on gen2.Order {
  gen2.Order rebuild(Function(OrderBuilder b) f) {
    var builder = OrderBuilder(this);
    f(builder);
    return builder.build();
  }

  OrderBuilder toBuilder() {
    return OrderBuilder(this);
  }

  Map<String, dynamic> toNative() {
    return gen.dogs.convertObjectToNative(this, gen2.Order);
  }
}

class OrderStatusConverter
    extends gen.GeneratedEnumDogConverter<gen2.OrderStatus> {
  @override
  List<String> get values =>
      gen2.OrderStatus.values.map((e) => e.name).toList();

  @override
  gen.EnumToString<gen2.OrderStatus> get toStr => (e) => e!.name;

  @override
  gen.EnumFromString<gen2.OrderStatus> get fromStr =>
      (e) => gen2.OrderStatus.values
          .firstWhereOrNullDogs((element) => element.name == e);
}
