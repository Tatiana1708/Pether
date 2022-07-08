// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:my_app/components/addClaim.dart';
import 'package:my_app/components/addDoc.dart';
import 'package:my_app/components/addSP.dart';
import 'package:my_app/components/listBatch.dart';

class ServiceProvider extends StatefulWidget {
  const ServiceProvider({Key? key}) : super(key: key);

  @override
  State<ServiceProvider> createState() => _ServiceProviderState();
}

class _ServiceProviderState extends State<ServiceProvider> {
  @override
  Widget build(BuildContext context) {
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
            SizedBox(width: 10),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddSP()),
                );
              },
            )
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
                      child: Center(child: ListBatch()),
                    ),
                    Container(
                      color: Colors.grey,
                      child: Center(child: AddClaims()),
                    ),
                    Container(
                      color: Colors.grey,
                      child: Center(child: AddDocs()),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
