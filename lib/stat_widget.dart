import 'package:flutter/material.dart';

Widget statWidget(String title, String stat) {
  return Expanded(
      child: Column(children: [
    Text(title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        )),
    Text(
      stat,
      style: const TextStyle(
        fontSize: 16.0,
      ),
    )
  ]));
}
