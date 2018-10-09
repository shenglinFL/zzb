import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:zzb/View/Home/HomeView.dart';

class MainTabbarController extends StatefulWidget {
  @override
  _MainTabbarControllerState createState() => _MainTabbarControllerState();
}

class _MainTabbarControllerState extends State<MainTabbarController> {
  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      home: new MainTabbar(),
    );
  }
}

class MainTabbar extends StatefulWidget {
  @override
  _MainTabbarState createState() => _MainTabbarState();
}

class _MainTabbarState extends State<MainTabbar> {
  var _currentIndex = 0;

  var _appBar = new CupertinoNavigationBar(
    middle: Text(
      "HOME",
      style: TextStyle(color: Colors.white),
    ),
    backgroundColor: Colors.brown,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _appBar,
      body: new HomeView(),
      bottomNavigationBar: new CupertinoTabBar(
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Home")),
          new BottomNavigationBarItem(
              icon: Icon(Icons.book), title: Text("Bookmark")),
          new BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), title: Text("More")),
          new BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("My"))
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
