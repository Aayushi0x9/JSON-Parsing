import 'package:json_parsing/controller/dummyjsoncontroller.dart';

import 'headers.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => PostsController()),
      ChangeNotifierProvider(create: (_) => AlbumsController()),
      ChangeNotifierProvider(create: (_) => PhotosController()),
      ChangeNotifierProvider(create: (_) => UsersController()),
      ChangeNotifierProvider(create: (_) => CommentsController()),
      ChangeNotifierProvider(create: (_) => TodosController()),
      ChangeNotifierProvider(create: (_) => DummyJsonController()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Json Parsing',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            elevation: 0,
            scrolledUnderElevation: 0,
          )),
      home: Homescreen(),
      routes: AppRoutes.routes,
    );
  }
}
