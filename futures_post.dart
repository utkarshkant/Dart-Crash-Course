/*
FUTURES
- Futures in dart is like `promises` in JavaScript.
- They represent the result of an asynchronous task that takes some time to complete, like making a network request to fetch some data.
- Futures have two states - uncompleted & completed:
  -- Uncompleted state: A future will have the uncompleted state from the moment the request was made, up to a response that comes back.
  -- Completed state: A future will have the completed state in which the future gets resolved or completed into either the response value or an error.
*/

void main() {
  fetchPost().then((p) {
    print(p.title);
    print(p.userId);
  });
}  // Start delay . . . \n my post \n 123

Future<Post> fetchPost() {
  print("Start delay . . . ");
  // make a delay
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
