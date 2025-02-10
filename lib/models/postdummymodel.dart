class PostDummy {
  int? id;
  String? title, body;
  List<String>? tags;
  Reactions? reactions;
  int? views, userId;

  PostDummy({
    this.id,
    this.title,
    this.body,
    this.tags,
    this.reactions,
    this.views,
    this.userId,
  });

  factory PostDummy.maptomodel(Map<String, dynamic> m1) => PostDummy(
        id: m1["id"],
        title: m1["title"],
        body: m1["body"],
        tags: List<String>.from(m1["tags"].map((e) => e)),
        reactions: Reactions.maptomodel(m1["reactions"]),
        views: m1["views"],
        userId: m1["userId"],
      );
}

class Reactions {
  int? likes, dislikes;

  Reactions({
    this.likes,
    this.dislikes,
  });

  factory Reactions.maptomodel(Map<String, dynamic> m1) => Reactions(
        likes: m1["likes"],
        dislikes: m1["dislikes"],
      );
}
