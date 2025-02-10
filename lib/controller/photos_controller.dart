import 'package:json_parsing/headers.dart';

class PhotosController with ChangeNotifier {
  List photosData = [];

  Future<void> getPhotosData() async {
    JsonHelper jsonHelper = JsonHelper();
    List data = await jsonHelper.photosJsonParsing();
    photosData = data;
    print(photosData);
    print('empty');
    notifyListeners();
  }
}
