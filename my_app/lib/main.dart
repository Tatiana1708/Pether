import 'package:flutter/material.dart';
import 'package:my_app/screen/claimAdd.dart';
import 'package:my_app/screen/claims.dart';
import 'package:my_app/screen/home.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

void main() {
  runApp(const MyApp());
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  //list of widgets to call ontap
  final widgetOptions = [
    const HomePage(),
    const ClaimPage(),
    const ClaimPage(),
    const ClaimAdd(),
  ];

  void _updateIndex(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: buildBottomNavigationBar(),
        ));
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: _updateIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "SP"),
        BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined), label: "Claims"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp), label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.more_vert), label: "More"),
      ],
    );
  }
}
