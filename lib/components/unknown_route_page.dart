import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 *  空数据页面
 */
class UnknownRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: const Center(
          child: Text('暂时没数据'),
        ),
      ),
    );
  }
}
