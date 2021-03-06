import 'package:app_crud_firebase/decorations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bottomsheet extends StatelessWidget {
  final String label;
  final List<String> titles;
  final List<String> subtitles;
  final List<IconData> icons;

  Bottomsheet({
    Key key,
    @required this.label,
    @required this.titles,
    @required this.subtitles,
    @required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: Decorations.decorationTextField(),
      child: ListTile(
        title: Text(
          label,
          style: TextStyle(color: Colors.grey),
        ),
        trailing: Icon(Icons.keyboard_arrow_down),
        onTap: () => _openDialogBottom(size),
      ),
    );
  }

  _openDialogBottom(Size size) {
    Get.bottomSheet(
      Container(
        height: size.height * 0.5,
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: Decorations.boxDecorationCircular(),
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: titles.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(titles[index]),
                subtitle: Text(subtitles[index]),
                leading: Icon(icons[index]),
                onTap: () {
                  Get.back();
                },
                hoverColor: Colors.amber,
                //trailing: Icon(Icons.star),
              );
            }),
      ),
      isDismissible: true,
    );
  }
}
