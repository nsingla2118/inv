import 'package:flutter/material.dart';

class ScanningPage extends StatelessWidget {
  const ScanningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text('Welcome to the Scanning Page'),
          Text('Scan the barcode of the item to add it to the inventory')
        ],
      ),
    )
    ;
  }
}