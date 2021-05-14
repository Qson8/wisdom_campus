import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * 创建你的业务逻辑类，并将所有的变量，方法和控制器放在里面。 
 * 你可以使用一个简单的".obs "使任何变量成为可观察的
 */
class MenuController extends GetxController {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }
}
