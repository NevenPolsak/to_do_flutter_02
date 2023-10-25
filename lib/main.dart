import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_flutter_02/pages/home_page.dart';

void main() async {
//init  the hive
  await Hive.initFlutter();

  // open a box
  // ignore: unused_local_variable
  var box = await Hive.openBox('mybox');




  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "To Do List",
      theme: ThemeData(primarySwatch: Colors.pink),
      home: HomePage(),
    );
  }
}
