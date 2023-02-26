import 'package:flutter/material.dart';
import 'package:flutter_responsive_design1/common/app_responsive.dart';

import '../../../common/app_colors.dart';

class NotificationCardWidget extends StatefulWidget {
  const NotificationCardWidget({Key? key}) : super(key: key);

  @override
  State<NotificationCardWidget> createState() => _NotificationCardWidgetState();
}

class _NotificationCardWidgetState extends State<NotificationCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColor.yellow,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  style: TextStyle(fontSize: 16, color: AppColor.black),
                  children: const [
                    TextSpan(text: "Good Morning "),
                    TextSpan(
                      text: "Emerson Barina",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Today you have 9 New Applications.\nAlso you need to hire 2 new UX Designers. 1\nFlutter Developer",
                style: TextStyle(
                  fontSize: 14,
                  color: AppColor.black,
                  height: 1.5,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Read more",
                style: TextStyle(
                  fontSize: 14,
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
          if ((MediaQuery.of(context).size.width >= 620 && AppResponsive.isMobile(context)) ||
              (MediaQuery.of(context).size.width >= 1120 && AppResponsive.isDesktop(context))) ...{
            const Spacer(),
            Image.asset(
              "assets/notification_image.png",
              height: 160,
            ),
          }
        ],
      ),
    );
  }
}
