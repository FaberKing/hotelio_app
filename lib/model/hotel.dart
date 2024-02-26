class Hotel {
  String id;
  String name;
  String cover;
  List<String> images;
  int price;
  String location;
  double rate;
  String description;
  List<Map<String, dynamic>> activity;
  String category;

  Hotel({
    required this.id,
    required this.name,
    required this.cover,
    required this.images,
    required this.price,
    required this.location,
    required this.rate,
    required this.description,
    required this.activity,
    required this.category,
  });

  Hotel copyWith({
    String? id,
    String? name,
    String? cover,
    List<String>? images,
    int? price,
    String? location,
    double? rate,
    String? description,
    List<Map<String, dynamic>>? activity,
    String? category,
  }) =>
      Hotel(
        id: id ?? this.id,
        name: name ?? this.name,
        cover: cover ?? this.cover,
        images: images ?? this.images,
        price: price ?? this.price,
        location: location ?? this.location,
        rate: rate ?? this.rate,
        description: description ?? this.description,
        activity: activity ?? this.activity,
        category: category ?? this.category,
      );

  factory Hotel.fromJson(Map<String, dynamic> json) => Hotel(
        id: json["id"],
        name: json["name"],
        cover: json["cover"],
        images: List<String>.from(json["images"].map((x) => x)),
        price: json["price"],
        location: json["location"],
        rate: json["rate"]?.toDouble(),
        description: json["description"],
        activity: List<Map<String, dynamic>>.from(
          json["activity"],
        ),
        category: json["category"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "cover": cover,
        "images": List<dynamic>.from(images.map((x) => x)),
        "price": price,
        "location": location,
        "rate": rate,
        "description": description,
        "activity": activity,
        "category": category,
      };
}
