// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/components/body.dart';
import 'package:my_app/screen/claimAdd.dart';

class ClaimPage extends StatelessWidget {
  const ClaimPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 107, 152, 1),
      appBar: buildAppBar(),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        elevation: 20,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: Icon(
          Icons.feed_rounded,
        ),
        onPressed: () {
          ClaimAdd();
        },
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: const Color.fromRGBO(28, 107, 152, 1),
      elevation: 0,
      leading: Icon(Icons.arrow_back_ios),
      title: const Text('Claims'),
      centerTitle: true,
    );
  }
}
