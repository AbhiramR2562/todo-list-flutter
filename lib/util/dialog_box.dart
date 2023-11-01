import 'package:flutter/material.dart';
import 'package:to_do/util/my_buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;

  //methods for buttons
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple[200],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Get user in put
            Expanded(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Add new task"),
              ),
            ),

            // Buttons -> Save and Cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Save Button
                MyButtons(text: "Save", onPressed: onSave),

                const SizedBox(
                  width: 8,
                ),

                // Cancel Button
                MyButtons(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
