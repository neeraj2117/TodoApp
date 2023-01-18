import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    Key? key ,
    required this.controller,
    required this.onCancel,
    required this.onSave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration:
              const InputDecoration(
                  border: OutlineInputBorder(),
                hintText: "Add a new Task"
              ),
            ),

          //  save buttons and cancel buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              //  save button
                MyButton(text: "Save", onPressed: onSave),
              const SizedBox(width: 10),

              //  cancel button
                MyButton(text: "Cancel", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
