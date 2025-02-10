import 'package:json_parsing/headers.dart';
import 'package:json_parsing/models/cartsdummymodel.dart';
import 'package:json_parsing/models/postdummymodel.dart';
import 'package:json_parsing/models/userdummy_model.dart';

class DummyJsonController with ChangeNotifier {
  List<UserDummy> userDummy = [];
  List<PostDummy> postsDummy = [];
  List<CartsModel> cartsDummy = [];

  Future<void> userDummyJson() async {
    JsonHelper jsonHelper = JsonHelper();
    List<UserDummy> data = await jsonHelper.usersDummyJsonParsing();
    userDummy = data;
    notifyListeners();
  }

  Future<void> postsDummyJson() async {
    JsonHelper jsonHelper = JsonHelper();
    List<PostDummy> data = await jsonHelper.postDummyJsonParsing();
    postsDummy = data;
    print(postsDummy);
    print('========================');
    notifyListeners();
  }

  Future<void> cartsDummyJson() async {
    JsonHelper jsonHelper = JsonHelper();
    List<CartsModel> data = await jsonHelper.cartsDummyJsonParsing();
    cartsDummy = data;
    notifyListeners();
  }
}
