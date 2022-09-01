import 'package:flutter/material.dart';

Widget button1({String text ,Function function})=>
  MaterialButton(onPressed: function,
    color: Colors.blue,
    child: Text(text,
      style: TextStyle(fontSize: 25 ,color: Colors.red),),);
