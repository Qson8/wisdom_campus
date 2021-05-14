import 'package:flutter/material.dart';
import 'package:wisdom_campus/style/style.dart';

class SideWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Style.sideWidth,
      margin: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: Style.sideWidth,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '扫码关注微信公众号Hi Flutter，交流学习flutter技术！',
                ),
                Image.asset(
                  'assets/images/wechat_img.png',
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
