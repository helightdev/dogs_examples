import 'package:bloc/bloc.dart';
import 'package:dogs_core/dogs_core.dart';
import 'package:meta/meta.dart';
import 'package:petstore/api/pets.dart';
import 'package:petstore/dogs.g.dart';
import 'package:petstore/models/pet.dart';


final petListCubit = PetListCubit();

class PetListCubit extends Cubit<PetListState> {

  PetListCubit() : super(PetListState(pets: [], loading: false)) {
    loadPets();
  }

  Future<void> loadPets() async {
    emit(state.rebuild((b) => b..loading = true));
    try {
      var pets = await petsApiClient.listPets();
      emit(PetListState.value(pets));
    } catch (e) {
      emit(PetListState.error(e.toString()));
    }
  }

  void deletePet(Pet pet) async {
    try {
      await petsApiClient.delete(pet);
    } catch (e) {
      emit(PetListState.error(e.toString()));
    }
    await loadPets();
  }

  void cycleStatus(Pet pet) async {
    var updatedPet = pet.rebuild((b) => b
      ..status = PetStatus.values[(pet.status.index + 1) % PetStatus.values.length]
    );
    await petsApiClient.update(updatedPet);
    await loadPets();
  }

  void addPet(Pet pet) async {
    await petsApiClient.add(pet);
    await loadPets();
  }
}


@serializable
class PetListState with Dataclass<PetListState> {
  final List<Pet> pets;
  final bool loading;
  final String? error;

  PetListState({
    this.pets = const <Pet>[],
    this.loading = false,
    this.error,
  });

  factory PetListState.value(List<Pet> value) => PetListState(pets: value);
  factory PetListState.error(String value) => PetListState(error: value);
}