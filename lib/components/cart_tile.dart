import 'package:flutter/material.dart';
import 'package:inventory/models/item.dart';

class CartTile extends StatelessWidget {
  final Item item;
  const CartTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10),),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // image path
          // Image.asset(item.imagePath),
          SizedBox(
            width: 20,
            height: 20,
            child: Container(
              decoration: const BoxDecoration(
              color: Colors.white,)
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.name, style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18),
                ),
              Text('${item.sellingPrice}')
            ],
          ),
          Text(item.count),
          IconButton(icon: const Icon(Icons.delete),
          onPressed: () {},)
        ],
      ),
    );
  }
}