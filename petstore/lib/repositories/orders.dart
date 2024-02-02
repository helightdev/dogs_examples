import 'package:dogs_odm/memory/repository.dart';
import 'package:petstore/models/order.dart';
import 'package:petstore/repositories/pets.dart';

final ordersRepository = OrdersRepository();

class OrdersRepository extends MemoryRepository<Order, String> {
  Future<void> populate() async {
    var pets = await petsRepository.findAllNotAvailable();
    await saveAll([
      Order(
          petId: pets[0].id!,
          quantity: 1,
          shipDate: DateTime.now(),
          status: OrderStatus.approved,
          complete: true),
      Order(
          petId: pets[1].id!,
          quantity: 1,
          shipDate: DateTime.now(),
          status: OrderStatus.placed,
          complete: false),
    ]);
  }
}
