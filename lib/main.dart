import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_bar/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedpage = 0;
  final _pageOptions = [
    HomePage(),
    Text('Item 2'),
    Text('Item 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Bottom Nav Bar'),
          ),
          body: _pageOptions[_selectedpage],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedpage,
            onTap: (int index) {
              setState(() {
                _selectedpage = index;
                print(_selectedpage);
              });
            },
            items: [
              BottomNavigationBarItem(
                title: Text('Home'),
                icon: Icon(
                  Icons.home,
                ),
              ),
              BottomNavigationBarItem(
                title: Text('Profile'),
                icon: Icon(
                  Icons.scanner,
                ),
              ),
              BottomNavigationBarItem(
                title: Text('Landscape'),
                icon: Icon(
                  Icons.landscape,
                ),
              ),
            ],
          ),
        ));
  }
}
