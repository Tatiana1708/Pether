// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AddSP extends StatefulWidget {
  const AddSP({Key? key}) : super(key: key);

  @override
  State<AddSP> createState() => _AddSPState();
}

class _AddSPState extends State<AddSP> {
  final dynamic items = ['Cameroon', 'Angola', 'Burkina Faso', 'Burundi'];
  String dropdownValue = 'Cameroon';

  double value = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(28, 107, 152, 1),
        elevation: 0,
        title: Text('Filters'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Enter your location to diplay sevice providers around you',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                DropdownButtonFormField<String>(
                    // value: dropdownValue,
                    isExpanded: true,
                    elevation: 10,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 0, 0, 10.0),
                      border: OutlineInputBorder(),
                      labelText: "Select country",
                    ),
                    items: items.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    }),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter city...",
                    contentPadding: EdgeInsets.fromLTRB(20.0, 0, 0, 10.0),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Distance offset '),
                    Text(value.toString()),
                  ],
                ),
                Slider(
                  value: value,
                  min: 1,
                  max: 20,
                  divisions: 10,
                  activeColor: Colors.blue,
                  onChanged: (_value) {
                    setState(() {
                      value = _value;
                    });
                  },
                  label: '${value.round()}',
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(children: [
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                    child: Divider(
                      color: Colors.grey,
                      height: 35,
                    )),
              ),
              Text("OR"),
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                    child: Divider(
                      color: Colors.grey,
                      height: 35,
                    )),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.gps_fixed_sharp),
                Text(
                  '  Click to pick your geographic coordinates',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Appliquer",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
