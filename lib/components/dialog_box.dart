import 'package:flutter/material.dart';
import 'package:inventory/models/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[50],
      content: Container(
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TextField(
              // controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Item Name',
              ),
            ),
            const TextField(
              // controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Quantity',
              ),
            ),
            const TextField(
              // controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Cost Price',
              ),
            ),
            const TextField(
              // controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Selling Price',
              ),
            ),
            const TextField(
              // controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Minimum Quantity',
              ),
            ),
            const TextField(
              // controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Upload Image',
              ),
            ),
            

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: 'Save', onPressed: () {
                  Navigator.pop(context);
                }),
                const SizedBox(width: 4,),
                MyButton(text:'Cancel', onPressed: () {
                  Navigator.pop(context);
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}