import 'package:flutter/material.dart';
import 'package:inventory/pages/bills_page.dart';
import 'package:inventory/pages/dashboard_page.dart';
import 'package:inventory/pages/inventory_page.dart';
import 'package:inventory/pages/sales_page.dart';
import 'package:inventory/pages/scanning_page.dart';
import 'package:inventory/pages/cart_page.dart';
import 'package:inventory/pages/users_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List _pages = [
    //dashboard
    const DashboardPage(),
    //inventory
    const InventoryPage(),
    //availability
    const ScanningPage(),
    //users
    const CartPage(),
    //scanning
    const UsersPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        
      ),
      drawer: Drawer(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            //logo
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const DrawerHeader(child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.blueAccent,
                    ),
                    Text('Inventory Management System')
                  ],
                )),     
                //other items
                const ListTile(
                  leading: Icon(Icons.money_off_csred_rounded, color: Colors.white,),
                  title: Text('Orders',
                   style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BillsPage()));
                  },
                  leading: const Icon(Icons.blinds_closed_sharp, color: Colors.white,),
                  title: const Text('Bills',
                   style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SalesPage()));
                  },
                  leading: const Icon(Icons.countertops_outlined, color: Colors.white,),
                  title: const Text('Sale & Purchase',
                   style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.settings, color: Colors.white,),
                  title: const Text('Settings',
                   style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.exit_to_app, color: Colors.white,),
                  title: const Text('Logout',
                   style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text('Developed by TarChsSolutions', style: TextStyle(color: Colors.grey[300]),),
            )
          ],
        ),
      ),
       
      body: _pages[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        selectedItemColor: Colors.blueAccent,
        currentIndex: _selectedindex,
        onTap: _navigateBottomBar,
        unselectedItemColor: Colors.grey,
        items: const [
          // dashboard
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: "Dashboard",),
          // inventory
            BottomNavigationBarItem(icon: Icon(Icons.inventory),
            label: "Inventory"),
          
          //availability
            BottomNavigationBarItem(icon: Icon(Icons.qr_code),
            label: "Scanning"),

          // users
            BottomNavigationBarItem(icon: Icon(Icons.card_travel),
            label: "Cart"),

          //scanning
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),
          label: "Users")
      ]),
    );
  }
}