import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SearchBar(
          leading: IconButton(
            icon:const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: Navigator.of(context).pop,),
          hintText: 'Search',
          
        ),
      ),
    );
  }
}