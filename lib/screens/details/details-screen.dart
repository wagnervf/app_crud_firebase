import 'package:app_crud_firebase/constants.dart';
import 'package:app_crud_firebase/screens/details/components/app_bar.dart';
import 'package:app_crud_firebase/screens/details/components/body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorDespesas,
      appBar: detailsAppBar(),
      body: Body(),
    );
  }
}
