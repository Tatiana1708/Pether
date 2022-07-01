// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:my_app/components/listClaim.dart';
import 'package:my_app/screen/claimAdd.dart';

class ClaimPage extends StatelessWidget {
  const ClaimPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListClaim(),
      floatingActionButton: FloatingActionButton(
        elevation: 20,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: Icon(
          Icons.feed_rounded,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ClaimAdd(),
            ),
          );
        },
      ),
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
          Text('Claims'),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('2022-02-04'),
              Text('-'),
              Text('2022-05-04'),
            ],
          ),
        ],
      ),
      centerTitle: true,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.vertical(
      //     bottom: Radius.elliptical(10, 10),
      //   ),
      // ),
    );
  }
}
