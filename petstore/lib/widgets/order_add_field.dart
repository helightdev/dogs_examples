import 'package:dogs_forms/dogs_forms.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:petstore/blocs/order_list_cubit.dart';
import 'package:petstore/forms/order.dart';

class OrderAddField extends StatefulWidget {
  const OrderAddField({super.key});

  @override
  State<OrderAddField> createState() => _OrderAddFieldState();
}

class _OrderAddFieldState extends State<OrderAddField> {
  var formRef = DogsFormRef<OrderFormData>();

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
        DogsForm<OrderFormData>(reference: formRef),
        const SizedBox(height: 8),
        ElevatedButton(
            onPressed: () {
              var orderData = formRef.read();
              if (orderData != null) {
                var pet = orderData.toOrder();
                ordersCubit.addOrder(pet);
                setState(() {
                  formRef = DogsFormRef<OrderFormData>();
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
                Center(
                    child: Text(
                  "Collapse",
                  style: Theme.of(context).textTheme.titleMedium,
                )),
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
            const SizedBox(
              width: 8,
            ),
            Text(
              "Add a new Order",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Spacer(),
            const Icon(Icons.expand_more),
            const SizedBox(
              width: 8,
            ),
          ],
        ),
      ),
    );
  }
}
