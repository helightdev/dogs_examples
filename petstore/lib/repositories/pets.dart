import 'package:dogs_odm/memory/repository.dart';
import 'package:dogs_odm/query_dsl.dart';
import 'package:petstore/models/category.dart';
import 'package:petstore/models/pet.dart';

final petsRepository = PetsRepository();

class PetsRepository extends MemoryRepository<Pet, String> {
  Future<void> populate() async {
    await saveAll([
      Pet(
          name: "Luna",
          category: Category(0, "Dog"),
          photoUrls: [],
          tags: [Tag(0, "Husky")],
          status: PetStatus.available),
      Pet(
          name: "Bella",
          category: Category(0, "Dog"),
          photoUrls: [],
          tags: [Tag(1, "Golden Retriever")],
          status: PetStatus.available),
      Pet(
          name: "Charlie",
          category: Category(0, "Dog"),
          photoUrls: [],
          tags: [Tag(2, "Labrador Retriever")],
          status: PetStatus.pending),
      Pet(
          name: "Lucy",
          category: Category(0, "Dog"),
          photoUrls: [],
          tags: [Tag(3, "Poodle")],
          status: PetStatus.sold),
    ]);
  }

  Future<List<Pet>> findAllNotAvailable() =>
      findAllByQuery(inArray("status", ["sold", "pending"]));
}
