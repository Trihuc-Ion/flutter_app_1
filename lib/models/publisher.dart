import 'package:flutter_app/models/publisher_stats.dart';

class Publisher {
  final int id;
  final bool isVerified;
  final bool isFollowing;
  final String name;
  final String logo;
  final String userName;
  final String bio;
  final Publisherstats stats;

  Publisher({
    required this.id,
    required this.isFollowing,
    required this.isVerified,
    required this.name,
    required this.logo,
    required this.userName,
    required this.bio ,
    required this.stats,
  });

  factory Publisher.fromJson(Map<String, dynamic> json) {

    var statsJson = json['stats'];

    Publisherstats publisherStats = Publisherstats.fromJson(statsJson);

    return Publisher(
      id: json['id'],
      name: json['name'],
      userName: json['username'] ?? 'unknown',
      logo: json['logo'],
      bio: json['bio'] ?? "Author has no biography",
      isFollowing: json['is_following'],
      isVerified: json['is_verified'],
      stats: publisherStats,
    );
  }
}
