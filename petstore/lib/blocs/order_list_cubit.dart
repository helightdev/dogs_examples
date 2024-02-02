import 'package:dogs_core/dogs_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petstore/api/orders.dart';
import 'package:petstore/models/order.dart';
import 'package:petstore/dogs.g.dart';

final ordersCubit = OrdersCubit();

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit() : super(OrdersState(orders: [], loading: false)) {
    loadOrders();
  }

  Future<void> loadOrders() async {
    emit(state.rebuild((b) => b..loading = true));
    try {
      var orders = await ordersApiClient.listOrders();
      emit(OrdersState.value(orders));
    } catch (e) {
      emit(OrdersState.error(e.toString()));
    }
  }

  void deleteOrder(Order order) async {
    try {
      await ordersApiClient.delete(order);
    } catch (e) {
      emit(OrdersState.error(e.toString()));
    }
    await loadOrders();
  }

  void updateOrder(Order order) async {
    try {
      await ordersApiClient.update(order);
      await loadOrders();
    } catch (e) {
      emit(OrdersState.error(e.toString()));
    }
  }

  void addOrder(Order order) async {
    try {
      await ordersApiClient.add(order);
      await loadOrders();
    } catch (e) {
      emit(OrdersState.error(e.toString()));
    }
  }
}

@serializable
class OrdersState with Dataclass<OrdersState> {
  final List<Order> orders;
  final bool loading;
  final String? error;

  OrdersState({
    this.orders = const <Order>[],
    this.loading = false,
    this.error,
  });

  factory OrdersState.value(List<Order> value) => OrdersState(orders: value);
  factory OrdersState.error(String value) => OrdersState(error: value);
}
