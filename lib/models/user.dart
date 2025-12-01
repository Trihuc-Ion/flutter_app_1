class User {
  // final int id;
  final String name;
  final String profileImage;
  final int notificationCount;

  User({
    // required this.id,
    required this.name, 
    required this.profileImage, 
    required this.notificationCount
  });

  factory User.fromJson(Map<String, dynamic> json) {
    // final userJson = json['user'];
    return User(
      // id: json['id'],
      name: json['name'],
      profileImage: json['profile_image'],
      notificationCount: json['notification_count'],
    );
  }
}
