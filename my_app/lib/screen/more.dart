// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, override_on_non_overriding_member

import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      // body: ListClaim(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: const Color.fromRGBO(28, 107, 152, 1),
      elevation: 0,
      toolbarHeight: 120,
      leading: Icon(Icons.arrow_back_ios),
      title: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Text('More'),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}
