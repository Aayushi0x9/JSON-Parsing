import 'package:json_parsing/headers.dart';

class UsersController with ChangeNotifier {
  List usersData = [];

  Future<void> getUsersData() async {
    JsonHelper jsonHelper = JsonHelper();
    usersData = await jsonHelper.usersJsonParsing();
    notifyListeners();
  }
}
