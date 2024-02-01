import 'package:dogs_core/dogs_core.dart';
import 'package:dogs_core/dogs_validation.dart';
import 'package:dogs_odm/dogs_odm.dart';
import 'package:petstore/models/category.dart';
import 'package:petstore/validators/url.dart';

@serializable
class Pet with Dataclass<Pet> {

  @Id()
  final String? id;

  @notBlank
  final String name;
  final Category category;

  @UrlValidator()
  final List<String> photoUrls;
  final List<Tag> tags;
  final PetStatus status;

  Pet({
    this.id,
    required this.name,
    required this.category,
    required this.photoUrls,
    required this.tags,
    required this.status,
  });
}

@serializable
enum PetStatus {
  available,
  pending,
  sold,
}