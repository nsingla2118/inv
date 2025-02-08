import 'package:flutter/material.dart';

class BillsPage extends StatelessWidget {
  const BillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Biils Page'),
        leading: IconButton(
        onPressed: () {Navigator.pop(context);},
        icon: const Icon(Icons.close)),
      ),
      body: const Center(
        child: 
          Center(child: Text('Bills Page TBD'))
        ,
      ),
    );
  }
}