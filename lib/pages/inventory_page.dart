import 'package:flutter/material.dart';
import 'package:inventory/models/item.dart';
import 'package:inventory/components/item_tile.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    void dialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Add Item'),
            content: const Column(
              children:  [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Item Name',
                  ),
                  
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Item Count',
                  ),
                )
              ],
            ),
            actions: [
              TextButton(
                child: const Text('Add'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },)

            ],
          );
        }

      );
    }
    return Scaffold(
      body: Expanded(
        child: Column(
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
                         onPressed: dialog,)
                      ],
                    ),
                  ),
                   Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(8)),
                    child: const Row(
                      children: [
                        Icon(Icons.search),
                        Text('Search'),
                      ],
                    ),),
                 ],
               ),
             ),

              // inventory grid
            
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: 10,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                Item item = Item(
                  name: 'Concrete',
                  count: '50',
                  imagePath: '',
                );
                return ItemTile(item: item);
                          }),
            )
          ],
        ),
      ),
      
      
    );
  }
}