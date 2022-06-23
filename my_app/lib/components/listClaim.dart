// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ListClaim extends StatefulWidget {
  const ListClaim({Key? key}) : super(key: key);

  @override
  State<ListClaim> createState() => _ListClaimState();
}

class _ListClaimState extends State<ListClaim> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, i) {
        return Container(
          height: 110.0,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 1.0,
              ),
            ],
            color: Colors.white,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Claim 2021-03-12',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromRGBO(28, 107, 152, 1),
                        decorationThickness: 4,
                        color: Colors.transparent,
                        shadows: [
                          Shadow(
                            offset: Offset(0, -5),
                            color: Colors.black,
                          )
                        ],
                      )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('Code :',
                              style: TextStyle(
                                  color: Color.fromRGBO(28, 107, 152, 1),
                                  fontSize: 13)),
                          SizedBox(
                            width: 3.0,
                          ),
                          Text('331',
                              style: TextStyle(
                                  color: Color.fromARGB(147, 89, 113, 121),
                                  fontSize: 13)),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text('Place :',
                              style: TextStyle(
                                  color: Color.fromRGBO(28, 107, 152, 1),
                                  fontSize: 13)),
                          SizedBox(
                            width: 3.0,
                          ),
                          Text('DATEWELL MEDICAL CENTER-EAST',
                              style: TextStyle(
                                  color: Color.fromARGB(147, 89, 113, 121),
                                  fontSize: 13)),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text('REASON :',
                              style: TextStyle(
                                  color: Color.fromRGBO(28, 107, 152, 1),
                                  fontSize: 13)),
                          SizedBox(
                            width: 3.0,
                          ),
                          Text('test',
                              style: TextStyle(
                                  color: Color.fromARGB(147, 89, 113, 121),
                                  fontSize: 13)),
                        ],
                      )
                    ],
                  )
                ],
              )),
              Container(
                  padding: EdgeInsets.all(30.0),
                  margin: EdgeInsets.only(bottom: 30.0),
                  child: Chip(
                    label: Text(
                      'APPROVED',
                      style: TextStyle(color: Colors.black, fontSize: 11),
                    ),
                    backgroundColor: Colors.teal[200],
                    elevation: 10,
                    autofocus: true,
                  )),
            ],
          ),
        );
      },
    );
  }
}
