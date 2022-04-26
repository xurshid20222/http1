class Comments {
  // feilds
  late int postId;
  late int id;
  late String name;
  late String email;
  late String body;


  Comments(this.postId,
      this.id,
      this.name,
      this.email,
      this.body,);


  Comments.fromJson(Map<String, dynamic> json){
   postId = json['postId'];
   id = json['id'];
   name = json['name'];
   email = json['email'];
   body = json['body'];
  }


  Map<String, dynamic> toJson() => {
   'postId' : postId,
   'id' : id,
   'name' : name,
   'email' : email,
   'body' : body,
  };

  @override
  String toString() {
    return toJson().toString();

  }
}