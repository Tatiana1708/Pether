// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70),
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )),
              ),
              ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) => const ClaimCard(),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

class ClaimCard extends StatelessWidget {
  const ClaimCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 2,
      ),
      height: 200,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
              ),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                ),
              )),
          Positioned(
            top: 50,
            right: 0,
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: 20,
                width: 110,
                child: Chip(
                  label: Text(
                    'APPROVED',
                    style: TextStyle(color: Colors.black, fontSize: 11),
                  ),
                  backgroundColor: Colors.teal[200],
                  elevation: 10,
                  autofocus: true,
                )),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 120,
              // width: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Claim 2021-03-12',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ),
                  Divider(
                    color: Color.fromRGBO(28, 107, 152, 1),
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Code :',
                          style: TextStyle(
                              color: Color.fromRGBO(28, 107, 152, 1),
                              fontSize: 13),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          '331',
                          style: TextStyle(
                              color: Color.fromARGB(147, 89, 113, 121),
                              fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Place :',
                          style: TextStyle(
                              color: Color.fromRGBO(28, 107, 152, 1),
                              fontSize: 13),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'DATEWELL MEDICAL CENTER-EAST',
                          style: TextStyle(
                              color: Color.fromARGB(147, 89, 113, 121),
                              fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'REASON :',
                          style: TextStyle(
                              color: Color.fromRGBO(28, 107, 152, 1),
                              fontSize: 13),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'test',
                          style: TextStyle(
                              color: Color.fromARGB(147, 89, 113, 121),
                              fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
