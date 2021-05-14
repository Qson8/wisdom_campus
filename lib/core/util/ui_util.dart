import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wisdom_campus/components/nav_content.dart';
import 'package:wisdom_campus/style/style.dart';

/*
 * @description UI工具，如导航、加载框
 * @author Qson
 * @date 2021-05-14 11:55:42
*/
class UIUtil {
  static AppBar appBar(BuildContext context) {
    return AppBar(
      toolbarHeight: getValueForScreenType<double>(
        context: context,
        mobile: 44,
        tablet: 44,
        desktop: 72,
      ),
      automaticallyImplyLeading: false,
      title: NavContent(),
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  static Widget loading() {
    return const SpinKitWave(
      color: Style.primaryColor,
      type: SpinKitWaveType.start,
    );
  }
}


class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,   // 手机端
    required this.tablet,   // 平板端
    required this.desktop,  // 桌面端
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (_size.width >= 1100) {
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (_size.width >= 850 && tablet != null) {
      return tablet;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}