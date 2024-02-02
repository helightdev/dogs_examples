import 'package:dogs_forms/dogs_forms.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_extra_fields/form_builder_extra_fields.dart';
import 'package:petstore/api/pets.dart';
import 'package:petstore/models/pet.dart';

class PetSelectorFormFieldFactory extends AutoFormFieldFactory<Pet> {
  const PetSelectorFormFieldFactory();

  @override
  Widget build(BuildContext context, DogsFormField field) {
    return FormBuilderSearchableDropdown<Pet>(
      name: field.delegate.name,
      decoration: field.buildInputDecoration(
          context,
          const DecorationPreference(
            contentPadding: EdgeInsets.all(8),
            borderPreference: BorderPreference.outline,
          )),
      dropdownBuilder: (context, pet) => pet == null
          ? const Text("Please select a pet")
          : ListTile(
              title: Text(pet.name),
              subtitle: Text(pet.category.name),
            ),
      compareFn: (a, b) => a.id == b.id,
      itemAsString: (pet) => pet.name,
      asyncItems: (query) async {
        var pets = await petsApiClient.listPets();
        return pets
            .where((element) => element.searchableString.contains(query))
            .map((e) => e)
            .toList();
      },
    );
  }
}
