import 'package:flutter/material.dart';
import 'package:inventory/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Welcome to Inventory App', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),),
              const SizedBox(height: 20,),
          
              const Text('Easy and convinient way to manage your inventory',
               style: TextStyle(
                fontSize: 16,
                color: Colors.grey
              ),
              textAlign: TextAlign.center,),
          
              const SizedBox(height: 50,),
          
              GestureDetector(
                onTap: () { 
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
                child: Container(
                  decoration: BoxDecoration( 
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text('Get Started',
                     style: TextStyle(color: Colors.white,
                     fontSize: 16,
                     fontWeight: FontWeight.bold),
                     ),
                  ),
                ),
              )
              
          
            ],
          ),
        ),
      ),
    );
  }
}