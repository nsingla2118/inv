import 'package:flutter/material.dart';

class AvailabilityPage extends StatelessWidget {
  const AvailabilityPage({super.key});

  @override
  Widget build(BuildContext context) {
    void dialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            title: Text('Add Item'),
            content: Column(
              children:  [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Item Name',
                  ),
                  
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Item Price',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Item WPrice',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Min. Stock Count',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Item Count',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'select Picture',
                  ),
                ),
              ],
            ),
           
          );
        }

      );
    }
    return Scaffold(
      body: Column(
        children: [
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
                      const Text('Availability', style: TextStyle(fontSize: 28),),
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

            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(columns: const [
                        DataColumn(label: Text('Item'),),
                        DataColumn(label: Text('Price'),),
                        DataColumn(label: Text('Stock'),),
                        DataColumn(label: Text('Image'),),
                      ], 
                      rows: const[
                        DataRow(cells: [
                          DataCell(Text('Lumber')),
                          DataCell(Text('25')),
                          DataCell(Text('100')),
                          DataCell(Text('image')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Lumber')),
                          DataCell(Text('25')),
                          DataCell(Text('100')),
                          DataCell(Text('image')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Lumber')),
                          DataCell(Text('25')),
                          DataCell(Text('100')),
                          DataCell(Text('image')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Lumber')),
                          DataCell(Text('25')),
                          DataCell(Text('100')),
                          DataCell(Text('image')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Concrete')),
                          DataCell(Text('25')),
                          DataCell(Text('70')),
                          DataCell(Text('image')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Nails')),
                          DataCell(Text('5')),
                          DataCell(Text('1000')),
                          DataCell(Text('image')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Paint')),
                          DataCell(Text('30')),
                          DataCell(Text('50')),
                          DataCell(Text('image')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Drywall')),
                          DataCell(Text('25')),
                          DataCell(Text('100')),
                          DataCell(Text('image')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Screws')),
                          DataCell(Text('25')),
                          DataCell(Text('1000')),
                          DataCell(Text('image')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Plywood')),
                          DataCell(Text('45')),
                          DataCell(Text('90')),
                          DataCell(Text('image')),
                        ]),
                        
                      ]),
              ),
            ),
        ],
      )
        
      
    );
  }
}