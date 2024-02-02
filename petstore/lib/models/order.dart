import 'package:dogs_core/dogs_core.dart';
import 'package:dogs_odm/dogs_odm.dart';

@serializable
class Order with Dataclass<Order> {
  @Id()
  final String? id;
  final String petId;
  final int quantity;
  final DateTime shipDate;
  final OrderStatus status;
  final bool complete;

  Order({
    this.id,
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
