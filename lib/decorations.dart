import 'package:flutter/material.dart';

class Decorations {
  static BoxDecoration decorationTextField() {
    return BoxDecoration(
      color: Colors.white,
      border: Border.all(
          color: Colors.grey[100], // set border color
          width: 1.0), // set border width
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ), // set rounded corner radius
    );
  }

  static InputDecoration inputDecorationValor() {
    return InputDecoration(
      prefixText: 'R\$ ',
      prefixStyle: TextStyle(
        wordSpacing: 4.0,
        color: Colors.white,
        fontSize: 30,
        height: 1.5,
        fontWeight: FontWeight.bold,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor: Color(0xFFff5b67),
      contentPadding: EdgeInsets.all(20),
    );
  }

  static InputDecoration inputDecorationDefault(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      contentPadding: EdgeInsets.all(18),
      disabledBorder: InputBorder.none,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
    );
  }

  static BoxDecoration boxDecorationCircular() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    );
  }
}
