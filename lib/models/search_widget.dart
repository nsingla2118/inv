
import 'package:flutter/material.dart';
import 'package:inventory/components/search_page.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle the onPressed event here
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SearchPage()));
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(8)),
        child: const Row(
          children: [
            Icon(Icons.search),
            Text('Search'),
          ],
        ),
      ),
    );
  }
}