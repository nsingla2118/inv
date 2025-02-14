import 'package:flutter/material.dart';

class SalesPage extends StatelessWidget {
  const SalesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Sales Page'),
        leading: IconButton(
        onPressed: () {Navigator.pop(context);},
        icon: const Icon(Icons.close)),
      ),
      body: const Center(
        child: 
          Center(child: Text('Sales Page TBD'))
        ,
      ),
    );
  }
}