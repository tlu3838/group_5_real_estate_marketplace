import 'package:flutter/material.dart';
import 'property_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Real Estate Marketplace'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('View Properties'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PropertyListScreen()),
            );
          },
        ),
      ),
    );
  }
}
