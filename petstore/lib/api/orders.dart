import 'package:dogs_core/dogs_core.dart';
import 'package:petstore/models/order.dart';
import 'package:petstore/repositories/orders.dart';

const ordersApiClient = OrdersApiClient._();
const ordersEndpoint = OrdersEndpoint._();

class OrdersApiClient {
  const OrdersApiClient._();

  Future<List<Order>> listOrders() async {
    var json = await ordersEndpoint.listOrders();
    return dogs.fromJson(json, type: Order, kind: IterableKind.list);
  }

  Future<void> delete(Order order) async {
    await ordersEndpoint.delete(order.id!);
  }

  Future<Order> update(Order order) async {
    var body = dogs.toJson<Order>(order);
    return await ordersEndpoint.update(body);
  }

  Future<Order> add(Order order) async {
    var body = dogs.toJson<Order>(order);
    return await ordersEndpoint.add(body);
  }
}

class OrdersEndpoint {
  const OrdersEndpoint._();

  Future<String> listOrders() async {
    var orders = await ordersRepository.findAll();
    return dogs.toJson(orders, type: Order, kind: IterableKind.list);
  }

  Future<void> delete(String id) async {
    await ordersRepository.deleteById(id);
  }

  Future<Order> update(String body) async {
    var order = dogs.fromJson<Order>(body);
    return await ordersRepository.save(order);
  }

  Future<Order> add(String body) async {
    var order = dogs.fromJson<Order>(body);
    return await ordersRepository.save(order);
  }
}
