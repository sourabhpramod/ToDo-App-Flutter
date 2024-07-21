// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todolist/util/mybutton.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onsave;
  VoidCallback oncancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.oncancel,
      required this.onsave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 172, 245, 255),
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(
                    color: Colors.black, // Border color when not focused
                    width: 2.0, // Border width when not focused
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color.fromARGB(
                        255, 0, 0, 0), // Border color when focused
                    width: 2.0, // Border width when focused
                  ),
                ),
                hintText: "Add a new Task",
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Mybutton(text: "Save", onPressed: onsave),
              Mybutton(text: "Cancel", onPressed: oncancel),
            ],
          )
        ]),
      ),
    );
  }
}
