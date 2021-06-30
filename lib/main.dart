import 'package:flutter/material.dart';
import 'package:moor_crud/screens/posts.dart';
import 'package:provider/provider.dart';
import 'data/moor_db.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => BlogDb(),
      child: MaterialApp(
        title: 'PostsApp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: PostsScreen(),
      ),
    );
  }
}
