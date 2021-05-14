import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
// import 'package:router_impl/app_route.dart';
// import 'package:router_impl/app_router_delegate.dart';
// import 'package:wisdom_campus/pages/home_page.dart';
// import 'package:wisdom_campus/router/about_route.dart';
// import 'package:wisdom_campus/router/home_route.dart';
import 'package:wisdom_campus/style/style.dart';

class NavContent extends StatelessWidget {
  const NavContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: Style.bodyWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // AppRouter.of(context).setNewRoutePath(
                          //   HomeRoute(),
                          // );
                        },
                        child: Text(
                          'Hi Flutter',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Style.primaryColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // AppRouter.of(context).setNewRoutePath(
                          //   AboutRoute(),
                          // );
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            '关于',
                            style: TextStyle(
                              fontSize: 16,
                              color: Style.mainTextColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        );
      },
      mobile: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Hi Flutter',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Style.primaryColor,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
