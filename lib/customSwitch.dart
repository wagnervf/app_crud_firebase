import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  final bool isSwitched;
  final String label;

  CustomSwitch({
    Key key,
    @required this.isSwitched,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      trailing: Switch(
        value: isSwitched,
        onChanged: (value) {},
        activeTrackColor: Colors.lightBlueAccent,
        activeColor: Colors.blueAccent,
      ),
    );
  }
}
