import 'package:dogs_core/dogs_core.dart';
import 'package:dogs_core/dogs_validation.dart';
import 'package:dogs_forms/dogs_forms.dart';
import 'package:flutter/material.dart';
import 'package:petstore/models/pet.dart';
import 'package:petstore/validators/url.dart';

@serializable
@AutoForm(decorator: PetFormDecorator())
class PetFormData {
  @notBlank
  final String name;
  final String category;

  @UrlValidator()
  final List<String> photoUrls;
  final List<String> tags;
  final PetStatus status;

  PetFormData(this.name, this.category, this.photoUrls, this.tags, this.status);

  Pet toPet() {
    // This of course is not the fastest way, but it showcases most features of dogs projections
    return dogs.createProjection(Pet, objects: [
      this
    ], transformers: [
      Projections.field(
          "category", (TraverseResult e) => {"name": e.value, "id": -1}),
      Projections.iterable(
          "tags", (TraverseResult e) => {"name": e.value, "id": -1}),
    ]);
  }
}

class PetFormDecorator extends FormColumnDecorator<PetFormData> {
  const PetFormDecorator();

  @override
  void decorate(BuildContext context, FormStackConfigurator configurator) {
    switch (MediaQuery.of(context).orientation) {
      case Orientation.landscape:
        {
          configurator.row(["name", "category", "status"]);
          break;
        }
      case Orientation.portrait:
        {
          configurator.field("name");
          configurator.field("category");
          configurator.field("status");
          break;
        }
    }
    configurator.field("photoUrls");
    configurator.field("tags");
    super.decorate(context, configurator);
  }
}
