import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/CustomerTabLayoutRoute.dart';
import 'package:flutter_app/EmptyPage.dart';
import 'package:flutter_app/FlowLayoutRouter.dart';
import 'package:flutter_app/GradientButtonRoute.dart';
import 'package:flutter_app/citypicker/picker_popup_route.dart';

import 'CitypickerRouter.dart';
import 'SharePopupRouter.dart';

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
        ListTile(
          title: Text("通用TabLayout"),
          onTap: () {
            toOtherPage(context, CustomerTabLayoutRoute());
          },
        ),
        ListTile(
          title: Text("通用BottomSheet"),
          onTap: () {
            toOtherPage(context, SharePopupRouter());
          },
        ),
        ListTile(
          title: Text("通用空页面"),
          onTap: () {
            toOtherPage(
                context,
                EmptyPage(
                  imageUrl: "images/nonet.png",
                  desc: "网络飞走了",
                ));
          },
        ),
        ListTile(
          title: Text("通用Button"),
          onTap: () {
            toOtherPage(context, GradientButtonRoute());
          },
        ),
        ListTile(
          title: Text("通用地址选择器"),
          onTap: () {
            toOtherPage(context, CitypickerRouter());
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
