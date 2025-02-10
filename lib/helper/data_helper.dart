import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:json_parsing/models/cartsdummymodel.dart';
import 'package:json_parsing/models/postdummymodel.dart';
import 'package:json_parsing/models/userdummy_model.dart';

class JsonHelper {
  Future<List> postJsonParsing() async {
    String jsonString =
        await rootBundle.loadString('assets/json_data/posts_data.json');
    List json = jsonDecode(jsonString);
    return json;
  }

  Future<List> photosJsonParsing() async {
    String jsonString =
        await rootBundle.loadString('assets/json_data/photos_data.json');
    List json = jsonDecode(jsonString);
    return json;
  }

  Future<List> albumsJsonParsing() async {
    String jsonString =
        await rootBundle.loadString('assets/json_data/albums_data.json');
    List json = jsonDecode(jsonString);
    return json;
  }

  Future<List> todosJsonParsing() async {
    String jsonString =
        await rootBundle.loadString('assets/json_data/atodos_data.json');
    List json = jsonDecode(jsonString);
    return json;
  }

  Future<List> commentsJsonParsing() async {
    String jsonString =
        await rootBundle.loadString('assets/json_data/comments_data.json');
    List json = jsonDecode(jsonString);
    return json;
  }

  Future<List> usersJsonParsing() async {
    String jsonString =
        await rootBundle.loadString('assets/json_data/users_data.json');
    List json = jsonDecode(jsonString);
    return json;
  }

  Future<List<UserDummy>> usersDummyJsonParsing() async {
    String jsonString =
        await rootBundle.loadString('assets/json_data/userssdummy.json');
    Map<String, dynamic> json1 = jsonDecode(jsonString);
    List<dynamic> json = json1['users'];
    List<UserDummy> userList =
        json.map((e) => UserDummy.maptomodel(e)).toList();
    print('===========\n${userList}');
    return userList;
  }

  Future<List<PostDummy>> postDummyJsonParsing() async {
    String jsonString =
        await rootBundle.loadString('assets/json_data/postsdummy.json');
    Map<String, dynamic> json1 = jsonDecode(jsonString);
    List<dynamic> json = json1['posts'];
    List<PostDummy> postList =
        json.map((e) => PostDummy.maptomodel(e)).toList();
    print(postList);
    return postList;
  }

  Future<CartsModel> cartsDummyJsonParsing() async {
    String jsonString =
        await rootBundle.loadString('assets/json_data/cartsdummy.json');
    Map<String, dynamic> json1 = jsonDecode(jsonString);
    // List<dynamic> json = json1['carts'];
    CartsModel model = CartsModel.maptomodel(json1);
    // List<CartsModel> cartList = json
    //     .map((e) => CartsModel.maptomodel(e))
    //     .toList();
    return model;
  }
}
