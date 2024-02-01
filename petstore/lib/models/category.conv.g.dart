// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_field, unused_import, public_member_api_docs, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import 'dart:core';
import 'package:dogs_core/dogs_core.dart' as gen;
import 'package:lyell/lyell.dart' as gen;
import 'dart:core' as gen0;
import 'package:petstore/models/category.dart' as gen1;
import 'package:petstore/models/category.dart';

class CategoryConverter extends gen.DefaultStructureConverter<gen1.Category> {
  CategoryConverter()
      : super(
            struct: const gen.DogStructure<gen1.Category>(
                'Category',
                gen.StructureConformity.dataclass,
                [
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.int>(), gen.TypeToken<gen0.int>(), null, gen.IterableKind.none, 'id', false, false, []),
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.String>(), gen.TypeToken<gen0.String>(), null, gen.IterableKind.none, 'name', false, false, [])
                ],
                [],
                gen.ObjectFactoryStructureProxy<gen1.Category>(_activator, [_$id, _$name], _values, _hash, _equals)));

  static dynamic _$id(gen1.Category obj) => obj.id;

  static dynamic _$name(gen1.Category obj) => obj.name;

  static List<dynamic> _values(gen1.Category obj) => [obj.id, obj.name];

  static gen1.Category _activator(List list) {
    return gen1.Category(list[0], list[1]);
  }

  static int _hash(gen1.Category obj) => obj.id.hashCode ^ obj.name.hashCode;

  static bool _equals(
    gen1.Category a,
    gen1.Category b,
  ) =>
      (a.id == b.id && a.name == b.name);
}

class CategoryBuilder {
  CategoryBuilder([gen1.Category? $src]) {
    if ($src == null) {
      $values = List.filled(2, null);
    } else {
      $values = CategoryConverter._values($src);
    }
  }

  late List<dynamic> $values;

  set id(gen0.int value) {
    $values[0] = value;
  }

  gen0.int get id => $values[0];

  set name(gen0.String value) {
    $values[1] = value;
  }

  gen0.String get name => $values[1];

  gen1.Category build() => CategoryConverter._activator($values);
}

extension CategoryDogsExtension on gen1.Category {
  gen1.Category rebuild(Function(CategoryBuilder b) f) {
    var builder = CategoryBuilder(this);
    f(builder);
    return builder.build();
  }

  CategoryBuilder toBuilder() {
    return CategoryBuilder(this);
  }

  Map<String, dynamic> toNative() {
    return gen.dogs.convertObjectToNative(this, gen1.Category);
  }
}

class TagConverter extends gen.DefaultStructureConverter<gen1.Tag> {
  TagConverter()
      : super(
            struct: const gen.DogStructure<gen1.Tag>(
                'Tag',
                gen.StructureConformity.dataclass,
                [
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.int>(), gen.TypeToken<gen0.int>(), null, gen.IterableKind.none, 'id', false, false, []),
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.String>(), gen.TypeToken<gen0.String>(), null, gen.IterableKind.none, 'name', false, false, [])
                ],
                [],
                gen.ObjectFactoryStructureProxy<gen1.Tag>(_activator, [_$id, _$name], _values, _hash, _equals)));

  static dynamic _$id(gen1.Tag obj) => obj.id;

  static dynamic _$name(gen1.Tag obj) => obj.name;

  static List<dynamic> _values(gen1.Tag obj) => [obj.id, obj.name];

  static gen1.Tag _activator(List list) {
    return gen1.Tag(list[0], list[1]);
  }

  static int _hash(gen1.Tag obj) => obj.id.hashCode ^ obj.name.hashCode;

  static bool _equals(
    gen1.Tag a,
    gen1.Tag b,
  ) =>
      (a.id == b.id && a.name == b.name);
}

class TagBuilder {
  TagBuilder([gen1.Tag? $src]) {
    if ($src == null) {
      $values = List.filled(2, null);
    } else {
      $values = TagConverter._values($src);
    }
  }

  late List<dynamic> $values;

  set id(gen0.int value) {
    $values[0] = value;
  }

  gen0.int get id => $values[0];

  set name(gen0.String value) {
    $values[1] = value;
  }

  gen0.String get name => $values[1];

  gen1.Tag build() => TagConverter._activator($values);
}

extension TagDogsExtension on gen1.Tag {
  gen1.Tag rebuild(Function(TagBuilder b) f) {
    var builder = TagBuilder(this);
    f(builder);
    return builder.build();
  }

  TagBuilder toBuilder() {
    return TagBuilder(this);
  }

  Map<String, dynamic> toNative() {
    return gen.dogs.convertObjectToNative(this, gen1.Tag);
  }
}
