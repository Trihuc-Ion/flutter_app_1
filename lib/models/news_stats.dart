class NewsStats {
  final int likes;
  final int comments;
  final int shares;

  NewsStats({
    required this.likes, 
    required this.comments, 
    required this.shares
  });

  factory NewsStats.fromJson(Map<String, dynamic> json) {
    return NewsStats(
      likes: json['likes'] ?? 0,
      comments: json['comments'] ?? 0,
      shares: json['shares'] ?? 0,
    );
  }
}
