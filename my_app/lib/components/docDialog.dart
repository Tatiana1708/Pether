// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AddDocDialog extends StatefulWidget {
  const AddDocDialog({Key? key}) : super(key: key);

  @override
  State<AddDocDialog> createState() => _AddDocDialogState();
}

class _AddDocDialogState extends State<AddDocDialog> {
  @override
  Widget build(BuildContext context) {
    Widget buildTextfield(String hint, TextEditingController controller) {
      return Container(
        margin: EdgeInsets.all(4),
        child: TextField(
          decoration: InputDecoration(
              labelText: hint,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black38,
              ))),
          controller: controller,
        ),
      );
    }

    var controller1 = TextEditingController();
    var controller2 = TextEditingController();

    return Container(
      padding: EdgeInsets.all(0),
      height: 300,
      width: 400,
      child: Column(
        children: [
          buildTextfield('Choose from list', controller1),
          buildTextfield('Something to add ?', controller2),
          ElevatedButton(onPressed: () {}, child: Text('save'))
        ],
      ),
    );
  }
}
