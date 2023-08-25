class Tweet {
  int id;
  String author;
  String message;

  Tweet({this.id=-1, this.author="", this.message=""});

  static Tweet fromJson(Map<String, dynamic> json){
    return Tweet(id: json["id"], author: json["author"], message: json["message"]);
  }

}