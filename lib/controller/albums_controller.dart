import 'package:json_parsing/headers.dart';

class AlbumsController with ChangeNotifier {
  List albumsData = [];

  Future<void> getAlbumstData() async {
    JsonHelper jsonHelper = JsonHelper();
    List data = await jsonHelper.postJsonParsing();
    albumsData = data;
    print(albumsData);
    notifyListeners();
  }
}
