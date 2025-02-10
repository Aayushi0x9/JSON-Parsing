import 'package:json_parsing/headers.dart';

class PostsController with ChangeNotifier {
  List postData = [];

  // Future<void> getPostData() async {
  //   JsonHelper jsonHelper = JsonHelper();
  //   List<Posts>? data = await jsonHelper.PostJsonParsing();
  //   postData = data!;
  //   notifyListeners();
  // }

  Future<void> getPostData() async {
    JsonHelper jsonHelper = JsonHelper();
    List data = await jsonHelper.postJsonParsing();
    postData = data;
    print(postData);
    notifyListeners();
  }
}
