class Property {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String location;

  Property({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.location,
  });

  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'].toDouble(),
      imageUrl: json['imageUrl'],
      location: json['location'],
    );
  }
}
