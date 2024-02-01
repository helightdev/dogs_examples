import 'package:dogs_core/dogs_core.dart';

@serializable
class Order with Dataclass<Order> {

  final int id;
  final int petId;
  final int quantity;
  final DateTime shipDate;
  final OrderStatus status;
  final bool complete;

  Order({
    required this.id,
    required this.petId,
    required this.quantity,
    required this.shipDate,
    required this.status,
    required this.complete,
  });
}

@serializable
enum OrderStatus {
  placed,
  approved,
  delivered,
}