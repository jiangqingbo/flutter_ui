import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/FlowLayoutRouter.dart';

class MainPanel extends StatelessWidget {
  Widget _buildPanelWidget(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text("通用dialog"),
          onTap: () {},
        ),
        ListTile(
          title: Text("通用FlowLayout"),
          onTap: () {
            toOtherPage(context, FlowLayoutRouter());
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildPanelWidget(context);
  }

  toOtherPage(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }
}