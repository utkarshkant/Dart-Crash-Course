/*
ASYNC & AWAIT
*/

import 'package:http/http.dart' as http;

void main() async {
  final post = await fetchPost();
  print(post.title);
  print(post.userId);
}

Future<Post> fetchPost() {
  // make a delay mimicking a network request
  const delay = Duration(seconds: 3);

  // create future
  return Future.delayed(delay, () {
    return Post('my post', 123);
  });
}

class Post {
  String title;
  int userId;

  Post(this.title, this.userId);
}
