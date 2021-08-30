import 'package:app_crud_firebase/decorations.dart';
import 'package:flutter/material.dart';

class Componentsutils {
  static Container buildHeaderValor(
      Size size, TextEditingController controller) {
    return Container(
      height: size.height * 0.2,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _builLabelValor(),
          _buildInputValor(controller),
        ],
      ),
    );
  }

  static Container _builLabelValor() {
    return Container(
      padding: EdgeInsets.all(4.0),
      alignment: Alignment.topLeft,
      child: Text(
        'Valor',
        style: TextStyle(color: Colors.white70),
        textAlign: TextAlign.left,
      ),
    );
  }

  static Container _buildInputValor(TextEditingController controller) {
    return Container(
      alignment: Alignment.topLeft,
      child: TextField(
        controller: controller,
        //  autofocus: true,
        cursorColor: Colors.white,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 30,
          height: 1.5,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        decoration: Decorations.inputDecorationValor(),
      ),
    );
  }

  static Container inputTextDefault(
      TextEditingController controller, String label) {
    return Container(
      decoration: Decorations.decorationTextField(),
      child: TextField(
        controller: controller,
        decoration: Decorations.inputDecorationDefault(label),
      ),
    );
  }
}
