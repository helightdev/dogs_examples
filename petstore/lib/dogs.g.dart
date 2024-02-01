// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_field, unused_import, public_member_api_docs, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_markimport 'package:petstore/forms/pet.conv.g.dart';
import 'package:petstore/blocs/pet_list_cubit.conv.g.dart';
import 'package:petstore/models/pet.conv.g.dart';
import 'package:petstore/models/category.conv.g.dart';
import 'package:petstore/models/order.conv.g.dart';
import 'package:dogs_core/dogs_core.dart';
import 'package:petstore/forms/pet.conv.g.dart' as gen0;
import 'package:petstore/blocs/pet_list_cubit.conv.g.dart' as gen1;
import 'package:petstore/models/pet.conv.g.dart' as gen2;
import 'package:petstore/models/category.conv.g.dart' as gen3;
import 'package:petstore/models/order.conv.g.dart' as gen4;
export 'package:petstore/forms/pet.conv.g.dart';
export 'package:petstore/blocs/pet_list_cubit.conv.g.dart';
export 'package:petstore/models/pet.conv.g.dart';
export 'package:petstore/models/category.conv.g.dart';
export 'package:petstore/models/order.conv.g.dart';

Future initialiseDogs() async {
  var engine = DogEngine.hasValidInstance ? DogEngine.instance : DogEngine();
  engine.registerAllConverters([
    gen0.PetFormDataConverter(),
    gen1.PetListStateConverter(),
    gen2.PetConverter(),
    gen2.PetStatusConverter(),
    gen3.CategoryConverter(),
    gen3.TagConverter(),
    gen4.OrderConverter(),
    gen4.OrderStatusConverter()
  ]);
  engine.setSingleton();
}
