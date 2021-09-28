import 'package:designe_waterfalls/src/screens/basic_design.dart';
import 'package:designe_waterfalls/src/screens/home_Screen.dart';
import 'package:designe_waterfalls/src/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Text('Hola mundo'),
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (BuildContext context) => BasicDesignScreen(),
        'scroll_design': (BuildContext context) => ScrollDesignScreen(),
        'home_screen': (BuildContext context) => HomeScreen()
      },
    );
  }
}
