// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_field, unused_import, public_member_api_docs, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import 'dart:core';
import 'package:dogs_core/dogs_core.dart' as gen;
import 'package:lyell/lyell.dart' as gen;
import 'dart:core' as gen0;
import 'package:petstore/models/pet.dart' as gen1;
import 'package:petstore/blocs/pet_list_cubit.dart' as gen2;
import 'package:petstore/blocs/pet_list_cubit.dart';

class PetListStateConverter extends gen.DefaultStructureConverter<gen2.PetListState> {
  PetListStateConverter()
      : super(
            struct: const gen.DogStructure<gen2.PetListState>(
                'PetListState',
                gen.StructureConformity.dataclass,
                [
                  gen.DogStructureField(gen.QualifiedTypeTreeN<gen0.List<gen1.Pet>, gen0.List<dynamic>>([gen.QualifiedTerminal<gen1.Pet>()]), gen.TypeToken<gen1.Pet>(), null, gen.IterableKind.list,
                      'pets', false, true, []),
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.bool>(), gen.TypeToken<gen0.bool>(), null, gen.IterableKind.none, 'loading', false, false, []),
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.String>(), gen.TypeToken<gen0.String>(), null, gen.IterableKind.none, 'error', true, false, [])
                ],
                [],
                gen.ObjectFactoryStructureProxy<gen2.PetListState>(_activator, [_$pets, _$loading, _$error], _values, _hash, _equals)));

  static dynamic _$pets(gen2.PetListState obj) => obj.pets;

  static dynamic _$loading(gen2.PetListState obj) => obj.loading;

  static dynamic _$error(gen2.PetListState obj) => obj.error;

  static List<dynamic> _values(gen2.PetListState obj) => [obj.pets, obj.loading, obj.error];

  static gen2.PetListState _activator(List list) {
    return gen2.PetListState(pets: list[0].cast<gen1.Pet>(), loading: list[1], error: list[2]);
  }

  static int _hash(gen2.PetListState obj) => gen.deepEquality.hash(obj.pets) ^ obj.loading.hashCode ^ obj.error.hashCode;

  static bool _equals(
    gen2.PetListState a,
    gen2.PetListState b,
  ) =>
      (gen.deepEquality.equals(a.pets, b.pets) && a.loading == b.loading && a.error == b.error);
}

class PetListStateBuilder {
  PetListStateBuilder([gen2.PetListState? $src]) {
    if ($src == null) {
      $values = List.filled(3, null);
    } else {
      $values = PetListStateConverter._values($src);
    }
  }

  late List<dynamic> $values;

  set pets(gen0.List<gen1.Pet> value) {
    $values[0] = value;
  }

  gen0.List<gen1.Pet> get pets => $values[0];

  set loading(gen0.bool value) {
    $values[1] = value;
  }

  gen0.bool get loading => $values[1];

  set error(gen0.String? value) {
    $values[2] = value;
  }

  gen0.String? get error => $values[2];

  gen2.PetListState build() => PetListStateConverter._activator($values);
}

extension PetListStateDogsExtension on gen2.PetListState {
  gen2.PetListState rebuild(Function(PetListStateBuilder b) f) {
    var builder = PetListStateBuilder(this);
    f(builder);
    return builder.build();
  }

  PetListStateBuilder toBuilder() {
    return PetListStateBuilder(this);
  }

  Map<String, dynamic> toNative() {
    return gen.dogs.convertObjectToNative(this, gen2.PetListState);
  }
}
