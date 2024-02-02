import 'package:dogs_core/dogs_core.dart';

@serializable
class Category with Dataclass<Category> {
  final int id;
  final String name;

  Category(this.id, this.name);
}

@serializable
class Tag with Dataclass<Tag> {
  final int id;
  final String name;

  Tag(this.id, this.name);
}
