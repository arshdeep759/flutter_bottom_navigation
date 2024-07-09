import 'package:flutter/material.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<bottomnavbar> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("NAVIGATION BAR"),
        ),
        body: Container(
          color: Colors.blueAccent,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            _currentIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "settings"),
          ],
        ),
      ),
    );
  }
}
