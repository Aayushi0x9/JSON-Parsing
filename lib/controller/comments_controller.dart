import 'package:json_parsing/headers.dart';

class CommentsController with ChangeNotifier {
  List commentsData = [];

  Future<void> getCommentsData() async {
    JsonHelper jsonHelper = JsonHelper();
    List data = await jsonHelper.commentsJsonParsing();
    commentsData = data;
    notifyListeners();
  }
}
