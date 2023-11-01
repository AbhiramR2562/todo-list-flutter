import 'package:flutter/material.dart';
import 'package:to_do/util/my_buttons.dart';

class MyAlert extends StatelessWidget {
  VoidCallback alertOk;
  MyAlert({super.key, required this.alertOk});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple[200],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Error... +_+',
              style: TextStyle(color: Colors.red),
            ),
            Text("The task cannot be empty.."),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [MyButtons(text: 'Ok', onPressed: alertOk)],
            ),
          ],
        ),
      ),
    );
  }
}
