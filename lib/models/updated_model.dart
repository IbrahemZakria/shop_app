class UpdatedModel {
  final int id;
  final String title;
  final String price;
  final String description;
  final String image;
  final String category;

  UpdatedModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.category,
  });

  // تحويل الكائن إلى Map لإرساله إلى API
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    };
  }

  // تحويل Map (من استجابة API) إلى كائن Product
  factory UpdatedModel.fromJson(Map<String, dynamic> json) {
    return UpdatedModel(
      title: json['title'] as String,
      id: json['id'],
      price: json['price'] as String, // تنظيف المسافات وتحويل إلى double
      description: json['description'] as String,
      image: json['image'] as String,
      category: json['category'] as String,
    );
  }
}
