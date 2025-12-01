class Publisherstats {
  final int newsCount;
  final int followers;
  final int following;

  Publisherstats({
    required this.newsCount, 
    required this.followers, 
    required this.following
  });

  factory Publisherstats.fromJson(Map<String, dynamic> json) {
    return Publisherstats(
      newsCount: json['news_count'] ?? 0,
      followers: json['followers'] ?? 0,
      following: json['following'] ?? 0,
    );
  }
}
