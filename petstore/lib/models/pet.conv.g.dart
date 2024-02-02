// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_field, unused_import, public_member_api_docs, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import 'dart:core';
import 'package:dogs_core/dogs_core.dart' as gen;
import 'package:lyell/lyell.dart' as gen;
import 'dart:core' as gen0;
import 'package:dogs_odm/src/annotations.dart' as gen1;
import 'package:dogs_core/validation/blank.dart' as gen2;
import 'package:petstore/models/category.dart' as gen3;
import 'package:petstore/validators/url.dart' as gen4;
import 'package:petstore/models/pet.dart' as gen5;
import 'package:petstore/models/pet.dart';

class PetConverter extends gen.DefaultStructureConverter<gen5.Pet> {
  PetConverter()
      : super(
            struct: const gen.DogStructure<gen5.Pet>(
                'Pet',
                gen.StructureConformity.dataclass,
                [
                  gen.DogStructureField(
                      gen.QualifiedTerminal<gen0.String>(),
                      gen.TypeToken<gen0.String>(),
                      null,
                      gen.IterableKind.none,
                      'id',
                      true,
                      false,
                      [gen1.Id()]),
                  gen.DogStructureField(
                      gen.QualifiedTerminal<gen0.String>(),
                      gen.TypeToken<gen0.String>(),
                      null,
                      gen.IterableKind.none,
                      'name',
                      false,
                      false,
                      [gen2.notBlank]),
                  gen.DogStructureField(
                      gen.QualifiedTerminal<gen3.Category>(),
                      gen.TypeToken<gen3.Category>(),
                      null,
                      gen.IterableKind.none,
                      'category',
                      false,
                      true, []),
                  gen.DogStructureField(
                      gen.QualifiedTypeTreeN<gen0.List<gen0.String>,
                              gen0.List<dynamic>>(
                          [gen.QualifiedTerminal<gen0.String>()]),
                      gen.TypeToken<gen0.String>(),
                      null,
                      gen.IterableKind.list,
                      'photoUrls',
                      false,
                      false,
                      [gen4.UrlValidator()]),
                  gen.DogStructureField(
                      gen.QualifiedTypeTreeN<
                          gen0.List<gen3.Tag>,
                          gen0
                          .List<dynamic>>([gen.QualifiedTerminal<gen3.Tag>()]),
                      gen.TypeToken<gen3.Tag>(),
                      null,
                      gen.IterableKind.list,
                      'tags',
                      false,
                      true,
                      []),
                  gen.DogStructureField(
                      gen.QualifiedTerminal<gen5.PetStatus>(),
                      gen.TypeToken<gen5.PetStatus>(),
                      null,
                      gen.IterableKind.none,
                      'status',
                      false,
                      true, [])
                ],
                [],
                gen.ObjectFactoryStructureProxy<gen5.Pet>(
                    _activator,
                    [_$id, _$name, _$category, _$photoUrls, _$tags, _$status],
                    _values,
                    _hash,
                    _equals)));

  static dynamic _$id(gen5.Pet obj) => obj.id;

  static dynamic _$name(gen5.Pet obj) => obj.name;

  static dynamic _$category(gen5.Pet obj) => obj.category;

  static dynamic _$photoUrls(gen5.Pet obj) => obj.photoUrls;

  static dynamic _$tags(gen5.Pet obj) => obj.tags;

  static dynamic _$status(gen5.Pet obj) => obj.status;

  static List<dynamic> _values(gen5.Pet obj) =>
      [obj.id, obj.name, obj.category, obj.photoUrls, obj.tags, obj.status];

  static gen5.Pet _activator(List list) {
    return gen5.Pet(
        id: list[0],
        name: list[1],
        category: list[2],
        photoUrls: list[3].cast<gen0.String>(),
        tags: list[4].cast<gen3.Tag>(),
        status: list[5]);
  }

  static int _hash(gen5.Pet obj) =>
      obj.id.hashCode ^
      obj.name.hashCode ^
      obj.category.hashCode ^
      gen.deepEquality.hash(obj.photoUrls) ^
      gen.deepEquality.hash(obj.tags) ^
      obj.status.hashCode;

  static bool _equals(
    gen5.Pet a,
    gen5.Pet b,
  ) =>
      (a.id == b.id &&
          a.name == b.name &&
          a.category == b.category &&
          gen.deepEquality.equals(a.photoUrls, b.photoUrls) &&
          gen.deepEquality.equals(a.tags, b.tags) &&
          a.status == b.status);
}

class PetBuilder {
  PetBuilder([gen5.Pet? $src]) {
    if ($src == null) {
      $values = List.filled(6, null);
    } else {
      $values = PetConverter._values($src);
      this.$src = $src;
    }
  }

  late List<dynamic> $values;

  gen5.Pet? $src;

  set id(gen0.String? value) {
    $values[0] = value;
  }

  gen0.String? get id => $values[0];

  set name(gen0.String value) {
    $values[1] = value;
  }

  gen0.String get name => $values[1];

  set category(gen3.Category value) {
    $values[2] = value;
  }

  gen3.Category get category => $values[2];

  set photoUrls(gen0.List<gen0.String> value) {
    $values[3] = value;
  }

  gen0.List<gen0.String> get photoUrls => $values[3];

  set tags(gen0.List<gen3.Tag> value) {
    $values[4] = value;
  }

  gen0.List<gen3.Tag> get tags => $values[4];

  set status(gen5.PetStatus value) {
    $values[5] = value;
  }

  gen5.PetStatus get status => $values[5];

  gen5.Pet build() {
    var instance = PetConverter._activator($values);

    return instance;
  }
}

extension PetDogsExtension on gen5.Pet {
  gen5.Pet rebuild(Function(PetBuilder b) f) {
    var builder = PetBuilder(this);
    f(builder);
    return builder.build();
  }

  PetBuilder toBuilder() {
    return PetBuilder(this);
  }

  Map<String, dynamic> toNative() {
    return gen.dogs.convertObjectToNative(this, gen5.Pet);
  }
}

class PetStatusConverter extends gen.GeneratedEnumDogConverter<gen5.PetStatus> {
  @override
  List<String> get values => gen5.PetStatus.values.map((e) => e.name).toList();

  @override
  gen.EnumToString<gen5.PetStatus> get toStr => (e) => e!.name;

  @override
  gen.EnumFromString<gen5.PetStatus> get fromStr => (e) => gen5.PetStatus.values
      .firstWhereOrNullDogs((element) => element.name == e);
}
