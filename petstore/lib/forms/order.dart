import 'package:dogs_core/dogs_core.dart';
import 'package:dogs_forms/dogs_forms.dart';
import 'package:flutter/material.dart';
import 'package:petstore/forms/pet_selector_field.dart';
import 'package:petstore/models/order.dart';
import 'package:petstore/models/pet.dart';

@serializable
@AutoForm()
class OrderFormData with Dataclass<OrderFormData> {
  @AutoFormField(factory: PetSelectorFormFieldFactory())
  final Pet pet;

  @AutoFormField(
      subtitle: "I don't know why this field exists, ask Swagger",
      initializer: ValueInitializer(1))
  final int quantity;

  @AutoFormField(title: "Planned Shipping Data")
  final DateTime shipDate;

  @AutoFormField(initializer: ValueInitializer(OrderStatus.placed))
  final OrderStatus status;

  @AutoFormField(
      title: "Completed",
      subtitle: "Has this pet already been delivered?",
      initializer: ValueInitializer(false))
  final bool complete;

  OrderFormData({
    required this.pet,
    required this.quantity,
    required this.shipDate,
    required this.status,
    required this.complete,
  });

  Order toOrder() => dogs.createProjection(Order, objects: [
        this
      ], transformers: [
        Projections.move("pet.id", "petId"),
      ]);
}