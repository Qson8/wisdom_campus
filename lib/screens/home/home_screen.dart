import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wisdom_campus/screens/home/controllers/menu_controller.dart';
import './components/side_menu.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 使用Get.put()实例化你的类，使其对当下的所有子路由可用。
    final MenuController c = Get.put(MenuController());

    return Scaffold(
      key: c.scaffoldKey, // 绑定key
      drawer: const SideMenu(), // 侧滑菜单
      // appBar: MyAppBar(),
      body: Body(),
    );
  }
}
