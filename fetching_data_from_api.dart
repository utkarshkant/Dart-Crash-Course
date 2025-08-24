/*
Example of fetching data from an external API.
*/

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async {
  final post = await fetchPost();
  print(post.title);
  print(post.userId);
}

Future<Post> fetchPost() async {
  var uri = Uri.https('jsonplaceholder.typicode.com', '/posts/1');
  final response = await http.get(uri);
  print(
    response,
  ); // returns the json, the elements cannot be accessed as is, therefore, this needs to be converted into a map
  Map<String, dynamic> data = convert.jsonDecode(response.body);
  return Post(data["title"], data["userId"]);
}

class Post {
  String title;
  int userId;

  Post(this.title, this.userId);
}
