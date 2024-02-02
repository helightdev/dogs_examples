import 'package:flutter/material.dart';
import 'package:petstore/api/pets.dart';
import 'package:petstore/blocs/order_list_cubit.dart';
import 'package:petstore/models/order.dart';
import 'package:petstore/models/pet.dart';

class OrderListTile extends StatelessWidget {
  final Order order;

  const OrderListTile(this.order, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.sell),
      title: FutureBuilder<Pet?>(
          future: petsApiClient.getPet(order.petId),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            }
            if (snapshot.data == null) {
              return const Text("Unknown pet");
            }
            return Text(snapshot.data!.name);
          }),
      subtitle: Row(
        children: [
          Text(order.petId),
          const Text(" · "),
          Text(order.status.name),
          const Text(" · "),
          Text(order.shipDate.toString()),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => ordersCubit.deleteOrder(order),
          )
        ],
      ),
    );
  }
}
