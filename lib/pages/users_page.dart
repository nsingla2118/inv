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
    void more() {
      showMenu(
                      context: context,
                      position: const RelativeRect.fromLTRB(100, 100, 0, 0),
                      items: [
                        const PopupMenuItem(
                          value: 'Edit',
                          child: Row(
                            children: [
                              Icon(Icons.edit),
                              SizedBox(width: 8),
                              Text('Edit'),
                            ],
                          ),
                        ),
                        const PopupMenuItem(
                          value: 'Delete',
                          child: Row(
                            children: [
                              Icon(Icons.delete),
                              SizedBox(width: 8),
                              Text('Delete'),
                            ],
                          ),
                        ),
                      ],
                    );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
        onPressed: () {Navigator.pop(context);},
        icon: const Icon(Icons.close)),
      ),
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
                      const Text('Profile', style: TextStyle(fontSize: 28),),
                      IconButton(icon: const Icon(Icons.add_circle_outline, size: 26,),
                       onPressed: Dialog,)                    ],
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
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('John Doe'),
                  trailing: IconButton(icon: const Icon(Icons.more_horiz),
                  onPressed: more,),
                  subtitle: const Text('Admin/Owner'),
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Jane Doe'),
                  trailing: IconButton(icon: const Icon(Icons.more_horiz),
                   onPressed: more),
                  subtitle: const Text('Employee'),
                ),
              ],
             ),
           ),
           const Padding(padding: EdgeInsets.all(8.0),
           child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.card_giftcard),
                      title: Text('Payment Method'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.password),
                      title: Text('Change Password'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.question_mark_outlined),
                      title: Text('Get Help'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.exit_to_app_outlined),
                      title: Text('Logout'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),)
           
        ],
      ),
    );
  }
}