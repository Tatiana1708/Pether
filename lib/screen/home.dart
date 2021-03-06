// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_app/screen/claimAdd.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Container(
                  color: const Color.fromRGBO(28, 107, 152, 1),
                  child: Column(children: [
                    Expanded(
                        child: Column(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child:
                            Image(image: AssetImage('assets/images/GLICO.png')),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Hello, ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Johnathan',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ])),
                    Expanded(
                        child: Column(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Text(
                                    'MembersShip ID:',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    '01-XHKA00013',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    'Validity period:',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    '2019-04-01 / 2031-03-01',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ])
                        ]),
                      ),
                    ])),
                    SizedBox(height: 30)
                  ])),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 200.0, 30.0, 16.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.only(top: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your latest claim',
                                style: TextStyle(
                                    color: Color.fromRGBO(28, 107, 152, 1),
                                    fontSize: 22),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    'Voucher no.',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(141, 107, 110, 112),
                                        fontSize: 14),
                                  ),
                                  Text(
                                    '0236156458',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 139, 143, 145),
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Benefit item',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(141, 107, 110, 112),
                                        fontSize: 14),
                                  ),
                                  Text(
                                    'Specialist',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 139, 143, 145),
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    'Submit date',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(141, 107, 110, 112),
                                        fontSize: 14),
                                  ),
                                  Text(
                                    '23/05/2022',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 139, 143, 145),
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Xiam status',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(141, 107, 110, 112),
                                        fontSize: 14),
                                  ),
                                  Text(
                                    'Processing',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 139, 143, 145),
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'View details',
                                style: TextStyle(
                                    color: Color.fromRGBO(28, 107, 152, 1),
                                    fontSize: 22),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  color: Color.fromRGBO(28, 107, 152, 1)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30.0, 200.0, 10.0, 16.0),
                  child: Column(
                    children: [
                      Container(
                        width: 110,
                        height: 100,
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.only(top: 215.0),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(28, 107, 152, 1),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.white,
                                  size: 45,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Find a service provider',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(5.0, 205.0, 30.0, 16.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ClaimAdd(),
                            ),
                          );
                        },
                        child: Container(
                          width: 110,
                          height: 100,
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(top: 210.0),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(28, 107, 152, 1),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.post_add_rounded,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                  Center(
                                    child: Text(
                                      'Submit a claim',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                      textAlign: TextAlign.center,
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
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 110,
                  height: 100,
                  margin: EdgeInsets.fromLTRB(30.0, 510.0, 30.0, 20.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(28, 107, 152, 1),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.fmd_good_rounded,
                                  color: Colors.white,
                                  size: 45,
                                ),
                                Center(
                                  child: Text(
                                    'Consult visits',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
