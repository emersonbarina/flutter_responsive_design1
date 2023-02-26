import 'package:flutter/material.dart';
import 'package:flutter_responsive_design1/common/app_responsive.dart';
import 'package:flutter_responsive_design1/controllers/menu_controller.dart';
import 'package:flutter_responsive_design1/pages/dashboard/dashboard.dart';
import 'package:flutter_responsive_design1/pages/widget/side_bar_menu.dart';
import 'package:provider/provider.dart';

import '../common/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBarMenu(),
      key: Provider.of<MenuController>(context, listen:  false).scaffoldKey,
      backgroundColor: AppColor.bgSideMenu,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Side Navigation Menu
            /// Only show in desktop
            if (AppResponsive.isDesktop(context))
              const Expanded(
                child: SideBarMenu(),
              ),

            /// Main Body Part
            Expanded(
              flex: 4,
              child: Dashboard(),
            ),
          ],
        ),
      ),
    );
  }
}
