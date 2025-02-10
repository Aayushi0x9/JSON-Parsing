import 'package:json_parsing/headers.dart';
import 'package:json_parsing/screens/views/cartsdummyscreen.dart';
import 'package:json_parsing/screens/views/postsdummyscreen.dart';
import 'package:json_parsing/screens/views/userdummyscreen.dart';

class AppRoutes {
  static String home = 'home';

  static Map<String, WidgetBuilder> routes = {
    AppRoutes.home: (context) => const Homescreen(),
    Globals.json_data[0]['route']: (context) => const PostsScreen(),
    Globals.json_data[1]['route']: (context) => const AlbumsScreen(),
    Globals.json_data[2]['route']: (context) => const TodosScreen(),
    Globals.json_data[3]['route']: (context) => const CommentsScreen(),
    Globals.json_data[4]['route']: (context) => const PhotosScreen(),
    Globals.json_data[5]['route']: (context) => const UsersScreen(),
    Globals.json_data[6]['route']: (context) => const PostsDummyScreen(),
    Globals.json_data[7]['route']: (context) => const CartsDummyScreen(),
    Globals.json_data[8]['route']: (context) => const UsersDummyScreen(),
  };
}
