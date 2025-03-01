import 'package:flutter/material.dart';
import 'package:inventory/components/cart_tile.dart';
import 'package:inventory/models/item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
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
          })),
          const SizedBox(height: 10,),
          const Divider(),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
          Text('Grand Total', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),

          // does the total of the cart
          Text('N 1000', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
              ],
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )
              ), 
              child: const Text('Checkout', style: TextStyle(fontSize: 20),),
            ),
          ],
        ),

          ],
        ),
        
      
    ));
  
  }
}