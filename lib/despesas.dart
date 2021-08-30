import 'package:app_crud_firebase/bottomSheet.dart';
import 'package:app_crud_firebase/componentsUtils.dart';
import 'package:app_crud_firebase/customSwitch.dart';
import 'package:app_crud_firebase/decorations.dart';
import 'package:app_crud_firebase/screens/details/components/app_bar.dart';
import 'package:app_crud_firebase/screens/details/components/order_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants.dart';

class Despesas extends StatelessWidget {
  final TextEditingController controlValor = TextEditingController();
  final TextEditingController _controlDescricao = TextEditingController();
  final isSwitched = true;
  final isSwitchedC = false;

  final titles = ["List 1", "List 2", "List 3"];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle"
  ];
  final titles2 = [
    "Conta Empresa",
    "Conta Alan / Thaís",
    "Conta Wagner / Luana"
  ];
  final subtitles2 = ["Conta da empresa", "Conta Alan", "Conta Wagner"];

  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kColorDespesas,
        appBar: detailsAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Componentsutils.buildHeaderValor(size, controlValor),
              _buildBody(size),
            ],
          ),
        ));
  }

  Widget _buildBody(Size size) {
    return Container(
      height: size.height,
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: Decorations.boxDecorationCircular(),
      child: Wrap(
        spacing: 10, // to apply margin in the main axis of the wrap
        runSpacing: 10,

        children: <Widget>[
          Bottomsheet(
            label: 'Categoria',
            titles: titles,
            subtitles: subtitles,
            icons: icons,
          ),
          Componentsutils.inputTextDefault(_controlDescricao, 'Descrição'),
          CustomSwitch(label: 'Dinheiro', isSwitched: isSwitched),
          CustomSwitch(label: 'Cartão Débito', isSwitched: isSwitchedC),
          CustomSwitch(label: 'Cartão Crédito', isSwitched: isSwitchedC),
          Bottomsheet(
            label: 'Fundo Retirado',
            titles: titles2,
            subtitles: subtitles2,
            icons: icons,
          ),
          // Componentsutils.inputTextDefault(_controlDescricao, 'Conta'),
          SizedBox(height: 20),
          OrderButton(
            size: size,
            press: () {},
          ),
        ],
      ),
    );
  }
}
