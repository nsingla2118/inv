
import 'package:flutter/material.dart';
import 'package:inventory/models/item.dart';

class ItemTile extends StatelessWidget {
  final Item item;
  const ItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          width: 200,
          height: 120,
          decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text(item.name, textScaler: const TextScaler.linear(1.1),),
                    Text(item.count)
                  ],),
                
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text(item.costPrice.toString()),
                    Text(item.sellingPrice.toString())
                  ],),
              ],
            ),
          )
      ],
    );
  }
}