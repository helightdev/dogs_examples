import 'package:dogs_forms/dogs_forms.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:petstore/blocs/pet_list_cubit.dart';
import 'package:petstore/forms/pet.dart';

class PetAddField extends StatefulWidget {

  const PetAddField({super.key});

  @override
  State<PetAddField> createState() => _PetAddFieldState();
}

class _PetAddFieldState extends State<PetAddField> {

  var formRef = DogsFormRef<PetFormData>();

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ExpandablePanel(
            theme: const ExpandableThemeData(
              headerAlignment: ExpandablePanelHeaderAlignment.center,
              tapBodyToCollapse: true,
            ),
            collapsed: _buildCollapsed(),
            expanded: _buildExpanded(),
            builder: (_, collapsed, expanded) {
              return Expandable(
                collapsed: collapsed,
                expanded: expanded,
                theme: const ExpandableThemeData(crossFadePoint: 0),
              );
            },
          ),
        ),
      ),
    );
  }

  Column _buildExpanded() {
    return Column(
      children: [
        DogsForm<PetFormData>(reference: formRef),
        const SizedBox(height: 8),
        ElevatedButton(
            onPressed: () {
              var petData = formRef.read();
              if (petData != null) {
                var pet = petData.toPet();
                petListCubit.addPet(pet);
                setState(() {
                  formRef = DogsFormRef<PetFormData>();
                });
              }
            },
            child: const Text("Submit")),
        const SizedBox(height: 16),
        SizedBox(
          height: 24,
          child: ExpandableButton(
            child: Stack(
              children: [
                Center(child: Text("Collapse", style: Theme.of(context).textTheme.titleMedium,)),
                const Positioned(
                  right: 8,
                  child: Icon(Icons.expand_less),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  SizedBox _buildCollapsed() {
    return SizedBox(
      height: 24,
      child: ExpandableButton(
        child: Row(
          children: [
            const SizedBox(width: 8,),
            Text("Add a new pet", style: Theme.of(context).textTheme.titleMedium,),
            const Spacer(),
            const Icon(Icons.expand_more),
            const SizedBox(width: 8,),
          ],
        ),
      ),
    );
  }
}
