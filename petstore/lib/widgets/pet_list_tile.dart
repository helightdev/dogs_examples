import 'package:flutter/material.dart';
import 'package:petstore/blocs/pet_list_cubit.dart';
import 'package:petstore/models/pet.dart';

class PetListTile extends StatelessWidget {
  final Pet pet;

  const PetListTile(this.pet, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.pets),
      title: Text(pet.name),
      subtitle: Row(
        children: [
          Text(pet.category.name),
          const Text(" · "),
          Text(pet.status.name),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IconButton(
            icon: const Icon(Icons.inventory),
            onPressed: () => petListCubit.cycleStatus(pet),
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => petListCubit.deletePet(pet),
          )
        ],
      ),
    );
  }
}
