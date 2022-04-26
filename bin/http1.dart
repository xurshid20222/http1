
import 'package:http1/model/comments_class.dart';
import 'package:http1/servise/http_servise.dart';

void main() async{
 // String body = await NetworkServise.GET(NetworkServise.apiComments, NetworkServise.headers);
 // List comments = NetworkServise.parseCommentList(body);
 // print(comments);




  Comments comment = Comments(1234, 333333, 'Xurshidjon', 'email@com', 'Hello World');
 // print(comment);
 // String response = await NetworkServise.POST(NetworkServise.apiComments, NetworkServise.headers, comment.toJson());
 // print(response);

 // String response = await NetworkServise.GET(NetworkServise.apiComment + comment.id.toString(), NetworkServise.headers);
 // print('Get: $response1');

  // String response = await NetworkServise.PUT(NetworkServise.apiComment + comment.id.toString(), NetworkServise.headers, comment.toJson());
  // print(response.toString());

  // String response = await NetworkServise.PATCH(NetworkServise.apiComment + comment.id.toString(), NetworkServise.headers, {'body' : 'Salom'});
  // print(response);

  String response = await NetworkServise.DELETE(NetworkServise.apiComment + comment.id.toString(), NetworkServise.headers);

  print("del $response");
}
