// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_app/components/docDialog.dart';

class ClaimAdd extends StatelessWidget {
  const ClaimAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void showDocDialog() {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: AddDocDialog(),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          );
        },
      );
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(28, 107, 152, 1),
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios),
          title: const Text('Claims'),
          centerTitle: false,
          actions: [
            Icon(Icons.search),
            SizedBox(width: 20),
            Icon(Icons.replay)
          ],
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(height: 50),
                child:
                    TabBar(labelColor: Color.fromRGBO(28, 107, 152, 1), tabs: [
                  Tab(text: "BATCH"),
                  Tab(text: "CLAIMS"),
                  Tab(text: "DOCUMENTS"),
                ]),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    Container(
                      child: Text("BATCH"),
                    ),
                    Container(
                      child: Text("CLAIMS"),
                    ),
                    Container(
                      child: showDocDialog(),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   elevation: 20,
        //   backgroundColor: Colors.blue,
        //   foregroundColor: Colors.white,
        //   child: Icon(
        //     Icons.feed_rounded,
        //   ),
        //   onPressed: () {
        //     showDocDialog();
        //   },
        // ),
      ),
    );
  }
}
