import 'package:flutter/material.dart';
import '../services/property_service.dart';
import '../models/property.dart';

class PropertyListScreen extends StatelessWidget {
  final PropertyService _propertyService = PropertyService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Property Listings'),
      ),
      body: FutureBuilder<List<Property>>(
        future: _propertyService.fetchProperties(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error: ${snapshot.error}');
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            print('No properties found');
            return Center(child: Text('No properties found'));
          } else {
            final properties = snapshot.data!;
            print('Properties found: ${properties.length}');
            return ListView.builder(
              itemCount: properties.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(properties[index].title),
                  subtitle: Text('\$${properties[index].price.toString()}'),
                  leading: Image.network(properties[index].imageUrl, width: 50, height: 50, fit: BoxFit.cover),
                  onTap: () {
                    // Navigate to property details (implement this as needed)
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
