// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_app/components/theme/color.dart';

class Home1 extends StatelessWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Palette.primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 1,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 52),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/images/GLICO.png')),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          // 'Hello,',
                          AppLocalizations.of(context)!.pushCounterText,
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        Text(
                          ', Jonathan',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // 'MemberShip ID :',
                                AppLocalizations.of(context)!.text2,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                '01-XHKA00013',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // 'Validity period :',
                                AppLocalizations.of(context)!.text3,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                '2019-04-01/2031-03-01',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          // height: 228,
          // width: 316,
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width / 1,
          margin: EdgeInsets.only(left: 30, top: 220, right: 29),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(0, 25, 25, 26),
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17, top: 20),
                child: Row(
                  children: [
                    Text(
                      // 'Your latest claim',
                      AppLocalizations.of(context)!.text,
                      style:
                          TextStyle(color: Palette.primaryColor, fontSize: 22),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 18,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // 'Voucher no.',
                          AppLocalizations.of(context)!.text4,
                          style: TextStyle(
                              color: Color.fromARGB(141, 107, 110, 112),
                              fontSize: 14),
                        ),
                        Text(
                          '0236156458',
                          style: TextStyle(
                              color: Color.fromARGB(255, 139, 143, 145),
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 74),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // 'Submit date',
                          AppLocalizations.of(context)!.text5,
                          style: TextStyle(
                              color: Color.fromARGB(141, 107, 110, 112),
                              fontSize: 14),
                        ),
                        Text(
                          '23/05/2022',
                          style: TextStyle(
                              color: Color.fromARGB(255, 139, 143, 145),
                              fontSize: 14),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18, top: 17, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // 'Benefit item',
                          AppLocalizations.of(context)!.text6,
                          style: TextStyle(
                              color: Color.fromARGB(141, 107, 110, 112),
                              fontSize: 14),
                        ),
                        Text(
                          // 'Specialist',
                          AppLocalizations.of(context)!.text7,
                          style: TextStyle(
                              color: Color.fromARGB(255, 139, 143, 145),
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 74, top: 17, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // 'Claim status',
                          AppLocalizations.of(context)!.text8,
                          style: TextStyle(
                              color: Color.fromARGB(141, 107, 110, 112),
                              fontSize: 14),
                        ),
                        Row(
                          children: [
                            Text(
                              // 'Processing',
                              AppLocalizations.of(context)!.text9,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 139, 143, 145),
                                  fontSize: 14),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                height: 20,
                                width: 16,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(250, 241, 158, 1),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Row(
                      children: [
                        Text(
                          // 'View details',
                          AppLocalizations.of(context)!.text1,
                          style: TextStyle(
                              color: Palette.primaryColor, fontSize: 22),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Icon(Icons.arrow_forward_ios,
                              color: Palette.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 108,
              width: 116,
              margin: EdgeInsets.only(left: 46, top: 462),
              decoration: BoxDecoration(
                color: Palette.primaryColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                      SizedBox(
                        height: 32,
                        width: 91,
                        child: Text(
                          'Find a service provider',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 108,
              width: 116,
              margin: EdgeInsets.only(left: 48, top: 462, right: 49),
              decoration: BoxDecoration(
                color: Palette.primaryColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.post_add_rounded,
                        color: Colors.white,
                        size: 50,
                      ),
                      SizedBox(
                        height: 16,
                        width: 94,
                        child: Text(
                          'Submit a claim',
                          style: TextStyle(color: Colors.white, fontSize: 14),
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
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(
        //       height: 108,
        //       width: 116,
        //       margin: EdgeInsets.only(left: 128, top: 594, right: 131),
        //       decoration: BoxDecoration(
        //         color: Palette.primaryColor,
        //         borderRadius: BorderRadius.circular(15.0),
        //       ),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [
        //           Column(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             crossAxisAlignment: CrossAxisAlignment.center,
        //             children: [
        //               Icon(
        //                 Icons.fmd_good_rounded,
        //                 color: Colors.white,
        //                 size: 45,
        //               ),
        //               Positioned(
        //                 height: 16,
        //                 width: 85,
        //                 child: Text(
        //                   'Consult visits',
        //                   style: TextStyle(color: Colors.white, fontSize: 14),
        //                   textAlign: TextAlign.center,
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
