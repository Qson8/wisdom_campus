import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wisdom_campus/components/side_widget.dart';
import 'package:wisdom_campus/style/style.dart';

class ContentWidget extends StatelessWidget {
  final Widget child;
  final Widget sideChild;
  ContentWidget({required this.child, required this.sideChild});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => child,
      desktop: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
            margin: EdgeInsets.only(top: 16),
            child: Row(
              children: [
                Expanded(
                  child: child,
                ),
                sideChild ?? SideWidget(),
              ],
            ),
            width: Style.bodyWidth,
          )
        ],
      ),
    );
  }
}
