import 'package:flutter/material.dart';
import 'package:wisdom_campus/core/util/ui_util.dart';
import 'package:wisdom_campus/screens/dashboard/dashboard_screen.dart';

import 'side_menu.dart';

// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {
  // static double itemW = ((Adapt.screenW() - 2 * 53) - 2 * 30);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context)) // 桌面端
            Expanded(
              child: SideMenu(),
            ),
          Expanded(
            flex: 5,
            child: DashboardScreen(),
          ),
        ],
      ),
    );
  }
}
