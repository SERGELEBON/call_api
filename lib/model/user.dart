class User {
  final String cell;
  final String email;
  final String gender;
  final String nat;
  final String phone;
  final UserName name;

  User({
    required this.cell,
    required this.email,
    required this.gender,
    required this.nat,
    required this.phone,
    required this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      cell: json['cell'],
      email: json['email'],
      gender: json['gender'],
      nat: json['nat'],
      phone: json['phone'],
      name: UserName.fromJson(json['name']), // Correction ici
    );
  }
}

class UserName {
  final String title;
  final String first;
  final String last;

  UserName({
    required this.title,
    required this.first,
    required this.last,
  });

  factory UserName.fromJson(Map<String, dynamic> json) {
    return UserName(
      title: json['title'],
      first: json['first'],
      last: json['last'],
    );
  }
}
