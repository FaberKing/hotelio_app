class User {
  String? id;
  String? name;
  String? email;
  String? password;

  User({
    this.id,
    this.name,
    this.email,
    this.password,
  });

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? password,
  }) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        password: password ?? this.password,
      );

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "password": password,
      };
}
