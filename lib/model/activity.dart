class Activity {
  String image;
  String name;

  Activity({
    required this.image,
    required this.name,
  });

  Activity copyWith({
    String? image,
    String? name,
  }) =>
      Activity(
        image: image ?? this.image,
        name: name ?? this.name,
      );

  factory Activity.fromJson(Map<String, dynamic> json) => Activity(
        image: json["image"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
      };
}
