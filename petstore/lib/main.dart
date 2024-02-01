import 'package:dogs_core/dogs_core.dart';
import 'package:dogs_odm/dogs_odm.dart';
import 'package:dogs_odm/memory_db.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petstore/blocs/pet_list_cubit.dart';
import 'package:petstore/dogs.g.dart';
import 'package:petstore/repositories/pets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petstore/widgets/pet_add_field.dart';
import 'package:petstore/widgets/pet_list_tile.dart';
import 'package:dogs_forms/dogs_forms.dart';

Future<void> main() async {
  await initialiseDogs();
  dogs.registerModeFactory(defaultFormFactories);
  installOdmConverters();
  OdmSystem.register<MemoryOdmSystem>(MemoryOdmSystem());
  await petsRepository.populate();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: false,
        textTheme: GoogleFonts.notoSansTextTheme(),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pet Store"),
      ),
      body: ListView(
        children: [
          BlocBuilder<PetListCubit, PetListState>(
            bloc: petListCubit,
            builder: (context, state) {
              if (state.loading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state.error != null) return Center(child: Text(state.error!));
              return Column(children: state.pets.map(PetListTile.new).toList());
            },
          ),
          const PetAddField()
        ],
      ),
    );
  }
}
