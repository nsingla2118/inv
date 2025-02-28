import 'package:flutter/material.dart';
import 'package:inventory/components/users_dialog.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {

  @override
  Widget build(BuildContext context) {
     showdialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const UsersDialog();
    });
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
        onPressed: showdialog,
        child: const Icon(Icons.add)),
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
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Users', style: TextStyle(fontSize: 28),),
                    ],
                  ),
                ),
                
               ],
             ),
           ),
           const Padding(
             padding: EdgeInsets.all(8.0),
             child: Column(
              children: [
                 ListTile(
                  leading: Icon(Icons.person),
                  title: Text('John Doe'),
                  subtitle: Text('Admin/Owner'),
                ),
                
              ],
             ),
           ),
           
           
        ],
      ),
    );
  }
}