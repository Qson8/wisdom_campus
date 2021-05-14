
import 'package:flutter/material.dart';
import 'package:wisdom_campus/core/util/ui_util.dart';
import 'package:wisdom_campus/style/style.dart';

import 'components/header.dart';
import 'components/my_fiels.dart';
import 'components/recent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(Style.defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: Style.defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiels(),
                      SizedBox(height: Style.defaultPadding),
                      RecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: Style.defaultPadding),
                      if (Responsive.isMobile(context)) StarageDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: Style.defaultPadding),
                // On Mobile means if the screen is less than 850 we dont want to show it
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StarageDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
