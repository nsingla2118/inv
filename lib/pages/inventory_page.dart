import 'package:flutter/material.dart';
import 'package:inventory/components/dialog_box.dart';
import 'package:inventory/models/item.dart';
import 'package:inventory/components/item_tile.dart';
import 'package:inventory/models/search_widget.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    showdialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const DialogBox();
    });
    }
    return Scaffold(
      body: Column(
        children: [
          // search box
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.only(bottom: 10),
            decoration: const BoxDecoration(color: Colors.blueAccent),
             child: Column(
               children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Inventory', style: TextStyle(fontSize: 28),),
                      IconButton(icon: const Icon(Icons.add_circle_outline, size: 26,),
                       onPressed: showdialog,)
                    ],
                  ),
                ),
                const SearchWidget(),
               ],
             ),
           ),
      
            // inventory grid
          
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              childAspectRatio: 1.0,
              
              ),

            itemCount: 10,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              Item item = Item(
                name: 'Concrete',
                count: '50',
                imagePath: '',
                costPrice: 10,
                sellingPrice: 15,
              );
              return ItemTile(
                item: item);
              }),
          )
        ],
      ),
      
      
    );
  }
}