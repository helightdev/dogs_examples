import 'package:dogs_core/dogs_core.dart';
import 'package:petstore/models/pet.dart';
import 'package:petstore/repositories/pets.dart';

const petsApiClient = PetsApiClient._();
const petsEndpoint = PetsEndpoint._();

class PetsApiClient {
  const PetsApiClient._();

  Future<Pet?> getPet(String id) async {
    var json = await petsEndpoint.getPet(id);
    if (json == null) return null;
    return dogs.fromJson<Pet>(json);
  }

  Future<List<Pet>> listPets() async {
    var json = await petsEndpoint.listPets();
    return dogs.fromJson(json, type: Pet, kind: IterableKind.list);
  }

  Future<void> delete(Pet pet) async {
    await petsEndpoint.delete(pet.id!);
  }

  Future<Pet> update(Pet pet) async {
    var body = dogs.toJson<Pet>(pet);
    return await petsEndpoint.update(body);
  }

  Future<Pet> add(Pet pet) async {
    var body = dogs.toJson<Pet>(pet);
    return await petsEndpoint.add(body);
  }
}

class PetsEndpoint {
  const PetsEndpoint._();

  Future<String?> getPet(String id) async {
    var pet = await petsRepository.findById(id);
    if (pet == null) return null;
    return dogs.toJson<Pet>(pet);
  }

  Future<String> listPets() async {
    var pets = await petsRepository.findAll();
    return dogs.toJson(pets, type: Pet, kind: IterableKind.list);
  }

  Future<void> delete(String id) async {
    await petsRepository.deleteById(id);
  }

  Future<Pet> update(String body) async {
    var pet = dogs.fromJson<Pet>(body);
    return await petsRepository.save(pet);
  }

  Future<Pet> add(String body) async {
    var pet = dogs.fromJson<Pet>(body);
    return await petsRepository.save(pet);
  }
}
