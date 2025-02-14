import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    void Dialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Add Item'),
            content: Column(
              children:  [
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'User Name',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Email'
                  ),
                ),
                DropdownButton(
                  hint: const Text('Select Role'),
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'Employee',
                      child: Text('Employee'),
                    ),
                  ], onChanged: (String? value) {  },
                  // onChanged: ,
                )
            ],            
            ),
            actions: [
              TextButton(
                child: const Text('Invite'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
             
            ],
          );
        }
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
        onPressed: Dialog,
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