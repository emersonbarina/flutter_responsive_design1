import 'package:flutter/material.dart';
import 'package:flutter_responsive_design1/pages/dashboard/widget/header_widget.dart';

import '../../common/app_colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: const [
          /// Header Part
          HeaderWidget(),
        ],
      ),
    );
  }
}
