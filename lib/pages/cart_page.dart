import 'package:flutter/material.dart';
import 'package:inventory/components/cart_tile.dart';
import 'package:inventory/models/item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('My Cart', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
            return CartTile(
              item: Item(
                name: 'name',
                count: 'count',
                imagePath: 'imagePath',
                costPrice: 100,
                sellingPrice: 150
                ));
          }))
        ],
      ),),
    );
  }
}