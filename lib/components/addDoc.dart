// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AddDocs extends StatefulWidget {
  const AddDocs({Key? key}) : super(key: key);

  @override
  State<AddDocs> createState() => _AddDocsState();
}

class _AddDocsState extends State<AddDocs> {
  late String _type = 'Choose from the list';
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
          child: Text("Choose from the list"), value: "Choose from the list"),
      DropdownMenuItem(child: Text("USA"), value: "USA"),
      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
    ];
    return menuItems;
  }

  Widget picture() {
    return Container(
      color: Colors.grey[300],
      height: 150,
      width: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.photo_camera_outlined,
            size: 80,
            color: Colors.grey[400],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Add Picture',
            style: TextStyle(color: Colors.grey[400], fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget documentTypes() {
    return DropdownButtonFormField(
      items: dropdownItems,
      value: _type,
      onChanged: (String? newValue) {
        setState(() {
          _type = newValue!;
        });
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 0, 0, 10.0),
        border: OutlineInputBorder(),
        labelText: "Type of Document",
      ),
    );
  }

  Widget description() {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: 4,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 0, 0, 10.0),
        border: OutlineInputBorder(),
        labelText: "Description",
        hintText: "Something to add?",
      ),
    );
  }

  Widget saveButon() {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(15.0),
      color: Color.fromRGBO(39, 201, 191, 1),
      child: MaterialButton(
        // minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
        onPressed: () {},
        child: Text(
          "Save",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(40),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0, top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 5.0),
                    picture(),
                    SizedBox(height: 15.0),
                    documentTypes(),
                    SizedBox(height: 15.0),
                    description(),
                    SizedBox(height: 15.0),
                    saveButon(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
