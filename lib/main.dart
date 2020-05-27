import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
          primaryColor: Colors.red,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent
      ),
      home: MyStackPage(),
    );
  }
}

class MyStackPage extends StatefulWidget {
  @override
  _MyStackPageState createState() => _MyStackPageState();
}

class _MyStackPageState extends State<MyStackPage> {

int _currentIndex = 0;
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
       currentIndex: _currentIndex,
       unselectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
            ),
              BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类')
            ),
            
        ],
        onTap: (value){
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}