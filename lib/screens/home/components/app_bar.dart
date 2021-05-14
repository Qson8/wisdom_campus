import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
PreferredSizeWidget MyAppBar() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(112),
    child: AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xff8728AA),
      toolbarHeight: const Size.fromHeight(112).height,
      // ignore: avoid_unnecessary_containers
      title: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              "images/app_logo.png",
              height: 112,
            ),
          ],
        ),
      ),
    ),
  );
}
