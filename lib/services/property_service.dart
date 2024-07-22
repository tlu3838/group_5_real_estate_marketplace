import 'dart:convert';
import '../models/property.dart';

class PropertyService {
  Future<List<Property>> fetchProperties() async {
    // Dummy data for testing
    List<Map<String, dynamic>> jsonResponse = [
      {
        "id": "1",
        "title": "Beautiful House",
        "description": "A beautiful house with a nice garden.",
        "price": 250000.0,
        "imageUrl": "https://via.placeholder.com/150",
        "location": "123 Main St, Springfield, USA"
      },
      {
        "id": "2",
        "title": "Modern Apartment",
        "description": "A modern apartment in the city center.",
        "price": 300000.0,
        "imageUrl": "https://via.placeholder.com/150",
        "location": "456 Elm St, Springfield, USA"
      },
    ];
    await Future.delayed(Duration(seconds: 1)); // Simulate network delay
    return jsonResponse.map((property) => Property.fromJson(property)).toList();
  }
}
