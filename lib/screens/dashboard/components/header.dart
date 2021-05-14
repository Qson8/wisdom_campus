import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wisdom_campus/core/util/ui_util.dart';
import 'package:wisdom_campus/screens/home/controllers/menu_controller.dart';
import 'package:wisdom_campus/style/style.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MenuController c = Get.put(MenuController());
    
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu),
            // onPressed: context.read<MenuController>().controlMenu,
            onPressed: c.controlMenu,
          ),
        if (!Responsive.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        Expanded(child: SearchField()),
        ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Style.defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: Style.defaultPadding,
        vertical: Style.defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Style.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/profile_pic.png",
            height: 38,
          ),
          if (!Responsive.isMobile(context))
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Style.defaultPadding / 2),
              child: Text("Angelina Joli"),
            ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: Style.secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(Style.defaultPadding * 0.75),
            margin: EdgeInsets.symmetric(horizontal: Style.defaultPadding / 2),
            decoration: BoxDecoration(
              color: Style.primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
    );
  }
}
