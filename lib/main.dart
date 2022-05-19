import 'package:flutter/material.dart';
import 'package:init_flutter_bloc/ui/movie_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLoC Demo',
      theme: ThemeData.dark(),
      home: const MovieList(),
    );
  }
}
