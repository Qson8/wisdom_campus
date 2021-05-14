import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wisdom_campus/screens/home/home_screen.dart';

import 'components/unknown_route_page.dart';
import 'style/style.dart';

void main() {
  runApp(MyApp());
}

/*
 * @description 智慧校园 admin UI模板
 * @author Qson
 * @date 2021-05-14 14:22:58
*/
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
      ],
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Style.bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: Style.secondaryColor,
      ),
    );
  }
}
