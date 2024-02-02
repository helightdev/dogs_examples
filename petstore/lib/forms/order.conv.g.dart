// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_field, unused_import, public_member_api_docs, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import 'dart:core';
import 'package:dogs_core/dogs_core.dart' as gen;
import 'package:lyell/lyell.dart' as gen;
import 'package:petstore/models/pet.dart' as gen0;
import 'package:dogs_forms/src/field.dart' as gen1;
import 'package:petstore/forms/pet_selector_field.dart' as gen2;
import 'dart:core' as gen3;
import 'package:dogs_forms/src/initializer.dart' as gen4;
import 'package:petstore/models/order.dart' as gen5;
import 'package:petstore/forms/order.dart' as gen6;
import 'package:dogs_forms/src/form.dart' as gen7;
import 'package:petstore/forms/order.dart';

class OrderFormDataConverter
    extends gen.DefaultStructureConverter<gen6.OrderFormData> {
  OrderFormDataConverter()
      : super(
            struct: const gen.DogStructure<gen6.OrderFormData>(
                'OrderFormData',
                gen.StructureConformity.dataclass,
                [
                  gen.DogStructureField(
                      gen.QualifiedTerminal<gen0.Pet>(),
                      gen.TypeToken<gen0.Pet>(),
                      null,
                      gen.IterableKind.none,
                      'pet',
                      false,
                      true, [
                    gen1.AutoFormField(
                        factory: gen2.PetSelectorFormFieldFactory())
                  ]),
                  gen.DogStructureField(
                      gen.QualifiedTerminal<gen3.int>(),
                      gen.TypeToken<gen3.int>(),
                      null,
                      gen.IterableKind.none,
                      'quantity',
                      false,
                      false, [
                    gen1.AutoFormField(
                        subtitle:
                            'I don\'t know why this field exists, ask Swagger',
                        initializer: gen4.ValueInitializer(1))
                  ]),
                  gen.DogStructureField(
                      gen.QualifiedTerminal<gen3.DateTime>(),
                      gen.TypeToken<gen3.DateTime>(),
                      null,
                      gen.IterableKind.none,
                      'shipDate',
                      false,
                      true,
                      [gen1.AutoFormField(title: 'Planned Shipping Data')]),
                  gen.DogStructureField(
                      gen.QualifiedTerminal<gen5.OrderStatus>(),
                      gen.TypeToken<gen5.OrderStatus>(),
                      null,
                      gen.IterableKind.none,
                      'status',
                      false,
                      true, [
                    gen1.AutoFormField(
                        initializer:
                            gen4.ValueInitializer(gen5.OrderStatus.placed))
                  ]),
                  gen.DogStructureField(
                      gen.QualifiedTerminal<gen3.bool>(),
                      gen.TypeToken<gen3.bool>(),
                      null,
                      gen.IterableKind.none,
                      'complete',
                      false,
                      false, [
                    gen1.AutoFormField(
                        title: 'Completed',
                        subtitle: 'Has this pet already been delivered?',
                        initializer: gen4.ValueInitializer(false))
                  ])
                ],
                [gen7.AutoForm(decorator: gen6.OrderFormDecorator())],
                gen.ObjectFactoryStructureProxy<gen6.OrderFormData>(
                    _activator,
                    [_$pet, _$quantity, _$shipDate, _$status, _$complete],
                    _values,
                    _hash,
                    _equals)));

  static dynamic _$pet(gen6.OrderFormData obj) => obj.pet;

  static dynamic _$quantity(gen6.OrderFormData obj) => obj.quantity;

  static dynamic _$shipDate(gen6.OrderFormData obj) => obj.shipDate;

  static dynamic _$status(gen6.OrderFormData obj) => obj.status;

  static dynamic _$complete(gen6.OrderFormData obj) => obj.complete;

  static List<dynamic> _values(gen6.OrderFormData obj) =>
      [obj.pet, obj.quantity, obj.shipDate, obj.status, obj.complete];

  static gen6.OrderFormData _activator(List list) {
    return gen6.OrderFormData(
        pet: list[0],
        quantity: list[1],
        shipDate: list[2],
        status: list[3],
        complete: list[4]);
  }

  static int _hash(gen6.OrderFormData obj) =>
      obj.pet.hashCode ^
      obj.quantity.hashCode ^
      obj.shipDate.hashCode ^
      obj.status.hashCode ^
      obj.complete.hashCode;

  static bool _equals(
    gen6.OrderFormData a,
    gen6.OrderFormData b,
  ) =>
      (a.pet == b.pet &&
          a.quantity == b.quantity &&
          a.shipDate == b.shipDate &&
          a.status == b.status &&
          a.complete == b.complete);
}

class OrderFormDataBuilder {
  OrderFormDataBuilder([gen6.OrderFormData? $src]) {
    if ($src == null) {
      $values = List.filled(5, null);
    } else {
      $values = OrderFormDataConverter._values($src);
      this.$src = $src;
    }
  }

  late List<dynamic> $values;

  gen6.OrderFormData? $src;

  set pet(gen0.Pet value) {
    $values[0] = value;
  }

  gen0.Pet get pet => $values[0];

  set quantity(gen3.int value) {
    $values[1] = value;
  }

  gen3.int get quantity => $values[1];

  set shipDate(gen3.DateTime value) {
    $values[2] = value;
  }

  gen3.DateTime get shipDate => $values[2];

  set status(gen5.OrderStatus value) {
    $values[3] = value;
  }

  gen5.OrderStatus get status => $values[3];

  set complete(gen3.bool value) {
    $values[4] = value;
  }

  gen3.bool get complete => $values[4];

  gen6.OrderFormData build() {
    var instance = OrderFormDataConverter._activator($values);

    return instance;
  }
}

extension OrderFormDataDogsExtension on gen6.OrderFormData {
  gen6.OrderFormData rebuild(Function(OrderFormDataBuilder b) f) {
    var builder = OrderFormDataBuilder(this);
    f(builder);
    return builder.build();
  }

  OrderFormDataBuilder toBuilder() {
    return OrderFormDataBuilder(this);
  }

  Map<String, dynamic> toNative() {
    return gen.dogs.convertObjectToNative(this, gen6.OrderFormData);
  }
}
