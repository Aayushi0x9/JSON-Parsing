import 'package:json_parsing/headers.dart';

class TodosController with ChangeNotifier {
  List todosData = [];

  Future<void> getTodosData() async {
    JsonHelper jsonHelper = JsonHelper();
    List data = await jsonHelper.todosJsonParsing();
    todosData = data;
    print(todosData);
    notifyListeners();
  }
}
