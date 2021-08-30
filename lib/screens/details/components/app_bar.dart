import 'package:flutter/material.dart';

AppBar detailsAppBar() {
  return AppBar(
    brightness: Brightness.dark,
    elevation: 0,
    title: Text('Despesas'),
    centerTitle: true,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {},
    ),
    actions: <Widget>[
      // IconButton(
      //   icon: SvgPicture.asset("assets/icons/share.svg"),
      //   onPressed: () {},
      // ),
      // IconButton(
      //   icon: SvgPicture.asset("assets/icons/more.svg"),
      //   onPressed: () {},
      // ),
    ],
  );
}
