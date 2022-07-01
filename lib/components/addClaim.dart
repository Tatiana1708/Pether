// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AddClaims extends StatefulWidget {
  const AddClaims({Key? key}) : super(key: key);

  @override
  State<AddClaims> createState() => _AddClaimsState();
}

class _AddClaimsState extends State<AddClaims> {
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

  Widget productType() {
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
        labelText: "Type of Product",
        hintText: "Choose from the list",
      ),
    );
  }

  Widget productName() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 0, 0, 10.0),
        border: OutlineInputBorder(),
        labelText: "Product Name",
        hintText: "Product Name",
      ),
    );
  }

  Widget unitPrice() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 0, 0, 10.0),
        border: OutlineInputBorder(),
        labelText: "Unit Price",
        hintText: "Unit Price",
      ),
    );
  }

  Widget quantity() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 0, 0, 10.0),
        border: OutlineInputBorder(),
        labelText: "Quantity",
        hintText: "Quantity",
      ),
    );
  }

  Widget totalPrice() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 0, 0, 10.0),
        border: OutlineInputBorder(),
        labelText: "Total Price",
        hintText: "XXXX",
      ),
    );
  }

  Widget cancelButon() {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(15.0),
      color: Color.fromRGBO(39, 201, 191, 1),
      child: MaterialButton(
        // minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text(
          "Cancel",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget saveButon() {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(15.0),
      color: Color.fromRGBO(28, 107, 152, 1),
      child: MaterialButton(
        // minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
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
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    productType(),
                    SizedBox(height: 15.0),
                    productName(),
                    SizedBox(height: 15.0),
                    unitPrice(),
                    SizedBox(height: 15.0),
                    quantity(),
                    SizedBox(height: 15.0),
                    totalPrice(),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        cancelButon(),
                        SizedBox(width: 5.0),
                        saveButon(),
                      ],
                    ),
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
