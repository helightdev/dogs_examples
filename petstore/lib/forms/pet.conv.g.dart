// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_field, unused_import, public_member_api_docs, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import 'dart:core';
import 'package:dogs_core/dogs_core.dart' as gen;
import 'package:lyell/lyell.dart' as gen;
import 'dart:core' as gen0;
import 'package:dogs_core/validation/blank.dart' as gen1;
import 'package:petstore/validators/url.dart' as gen2;
import 'package:petstore/models/pet.dart' as gen3;
import 'package:petstore/forms/pet.dart' as gen4;
import 'package:dogs_forms/src/form.dart' as gen5;
import 'package:petstore/forms/pet.dart';

class PetFormDataConverter extends gen.DefaultStructureConverter<gen4.PetFormData> {
  PetFormDataConverter()
      : super(
            struct: const gen.DogStructure<gen4.PetFormData>(
                'PetFormData',
                gen.StructureConformity.basic,
                [
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.String>(), gen.TypeToken<gen0.String>(), null, gen.IterableKind.none, 'name', false, false, [gen1.notBlank]),
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.String>(), gen.TypeToken<gen0.String>(), null, gen.IterableKind.none, 'category', false, false, []),
                  gen.DogStructureField(gen.QualifiedTypeTreeN<gen0.List<gen0.String>, gen0.List<dynamic>>([gen.QualifiedTerminal<gen0.String>()]), gen.TypeToken<gen0.String>(), null,
                      gen.IterableKind.list, 'photoUrls', false, false, [gen2.UrlValidator()]),
                  gen.DogStructureField(gen.QualifiedTypeTreeN<gen0.List<gen0.String>, gen0.List<dynamic>>([gen.QualifiedTerminal<gen0.String>()]), gen.TypeToken<gen0.String>(), null,
                      gen.IterableKind.list, 'tags', false, false, []),
                  gen.DogStructureField(gen.QualifiedTerminal<gen3.PetStatus>(), gen.TypeToken<gen3.PetStatus>(), null, gen.IterableKind.none, 'status', false, true, [])
                ],
                [gen5.AutoForm(decorator: gen4.PetFormDecorator())],
                gen.ObjectFactoryStructureProxy<gen4.PetFormData>(_activator, [_$name, _$category, _$photoUrls, _$tags, _$status], _values)));

  static dynamic _$name(gen4.PetFormData obj) => obj.name;

  static dynamic _$category(gen4.PetFormData obj) => obj.category;

  static dynamic _$photoUrls(gen4.PetFormData obj) => obj.photoUrls;

  static dynamic _$tags(gen4.PetFormData obj) => obj.tags;

  static dynamic _$status(gen4.PetFormData obj) => obj.status;

  static List<dynamic> _values(gen4.PetFormData obj) => [obj.name, obj.category, obj.photoUrls, obj.tags, obj.status];

  static gen4.PetFormData _activator(List list) {
    return gen4.PetFormData(list[0], list[1], list[2].cast<gen0.String>(), list[3].cast<gen0.String>(), list[4]);
  }
}

class PetFormDataBuilder {
  PetFormDataBuilder([gen4.PetFormData? $src]) {
    if ($src == null) {
      $values = List.filled(5, null);
    } else {
      $values = PetFormDataConverter._values($src);
    }
  }

  late List<dynamic> $values;

  set name(gen0.String value) {
    $values[0] = value;
  }

  gen0.String get name => $values[0];

  set category(gen0.String value) {
    $values[1] = value;
  }

  gen0.String get category => $values[1];

  set photoUrls(gen0.List<gen0.String> value) {
    $values[2] = value;
  }

  gen0.List<gen0.String> get photoUrls => $values[2];

  set tags(gen0.List<gen0.String> value) {
    $values[3] = value;
  }

  gen0.List<gen0.String> get tags => $values[3];

  set status(gen3.PetStatus value) {
    $values[4] = value;
  }

  gen3.PetStatus get status => $values[4];

  gen4.PetFormData build() => PetFormDataConverter._activator($values);
}

extension PetFormDataDogsExtension on gen4.PetFormData {
  gen4.PetFormData rebuild(Function(PetFormDataBuilder b) f) {
    var builder = PetFormDataBuilder(this);
    f(builder);
    return builder.build();
  }

  PetFormDataBuilder toBuilder() {
    return PetFormDataBuilder(this);
  }

  Map<String, dynamic> toNative() {
    return gen.dogs.convertObjectToNative(this, gen4.PetFormData);
  }
}
