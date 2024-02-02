// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_field, unused_import, public_member_api_docs, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import 'dart:core';
import 'package:dogs_core/dogs_core.dart' as gen;
import 'package:lyell/lyell.dart' as gen;
import 'dart:core' as gen0;
import 'package:petstore/models/order.dart' as gen1;
import 'package:petstore/blocs/order_list_cubit.dart' as gen2;
import 'package:petstore/blocs/order_list_cubit.dart';

class OrdersStateConverter
    extends gen.DefaultStructureConverter<gen2.OrdersState> {
  OrdersStateConverter()
      : super(
            struct: const gen.DogStructure<gen2.OrdersState>(
                'OrdersState',
                gen.StructureConformity.dataclass,
                [
                  gen.DogStructureField(
                      gen.QualifiedTypeTreeN<gen0.List<gen1.Order>,
                              gen0.List<dynamic>>(
                          [gen.QualifiedTerminal<gen1.Order>()]),
                      gen.TypeToken<gen1.Order>(),
                      null,
                      gen.IterableKind.list,
                      'orders',
                      false,
                      true,
                      []),
                  gen.DogStructureField(
                      gen.QualifiedTerminal<gen0.bool>(),
                      gen.TypeToken<gen0.bool>(),
                      null,
                      gen.IterableKind.none,
                      'loading',
                      false,
                      false, []),
                  gen.DogStructureField(
                      gen.QualifiedTerminal<gen0.String>(),
                      gen.TypeToken<gen0.String>(),
                      null,
                      gen.IterableKind.none,
                      'error',
                      true,
                      false, [])
                ],
                [],
                gen.ObjectFactoryStructureProxy<gen2.OrdersState>(_activator,
                    [_$orders, _$loading, _$error], _values, _hash, _equals)));

  static dynamic _$orders(gen2.OrdersState obj) => obj.orders;

  static dynamic _$loading(gen2.OrdersState obj) => obj.loading;

  static dynamic _$error(gen2.OrdersState obj) => obj.error;

  static List<dynamic> _values(gen2.OrdersState obj) =>
      [obj.orders, obj.loading, obj.error];

  static gen2.OrdersState _activator(List list) {
    return gen2.OrdersState(
        orders: list[0].cast<gen1.Order>(), loading: list[1], error: list[2]);
  }

  static int _hash(gen2.OrdersState obj) =>
      gen.deepEquality.hash(obj.orders) ^
      obj.loading.hashCode ^
      obj.error.hashCode;

  static bool _equals(
    gen2.OrdersState a,
    gen2.OrdersState b,
  ) =>
      (gen.deepEquality.equals(a.orders, b.orders) &&
          a.loading == b.loading &&
          a.error == b.error);
}

class OrdersStateBuilder {
  OrdersStateBuilder([gen2.OrdersState? $src]) {
    if ($src == null) {
      $values = List.filled(3, null);
    } else {
      $values = OrdersStateConverter._values($src);
      this.$src = $src;
    }
  }

  late List<dynamic> $values;

  gen2.OrdersState? $src;

  set orders(gen0.List<gen1.Order> value) {
    $values[0] = value;
  }

  gen0.List<gen1.Order> get orders => $values[0];

  set loading(gen0.bool value) {
    $values[1] = value;
  }

  gen0.bool get loading => $values[1];

  set error(gen0.String? value) {
    $values[2] = value;
  }

  gen0.String? get error => $values[2];

  gen2.OrdersState build() {
    var instance = OrdersStateConverter._activator($values);

    return instance;
  }
}

extension OrdersStateDogsExtension on gen2.OrdersState {
  gen2.OrdersState rebuild(Function(OrdersStateBuilder b) f) {
    var builder = OrdersStateBuilder(this);
    f(builder);
    return builder.build();
  }

  OrdersStateBuilder toBuilder() {
    return OrdersStateBuilder(this);
  }

  Map<String, dynamic> toNative() {
    return gen.dogs.convertObjectToNative(this, gen2.OrdersState);
  }
}
