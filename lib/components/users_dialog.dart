import 'package:flutter/material.dart';
import 'package:inventory/models/my_button.dart';

class UsersDialog extends StatelessWidget {
  const UsersDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[50],
      content: SizedBox(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TextField(
              // controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Full Name',
              ),
            ),
            const TextField(
              // controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
              ),
            ),     

            MyButton(text: 'Invite', onPressed: () {
              Navigator.pop(context);
            }),
            
          ],
        ),
      ),
    );
  }
}