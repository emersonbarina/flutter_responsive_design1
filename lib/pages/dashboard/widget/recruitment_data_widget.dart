import 'package:flutter/material.dart';

import '../../../common/app_colors.dart';

class RecruitmentDataWidget extends StatefulWidget {
  const RecruitmentDataWidget({Key? key}) : super(key: key);

  @override
  State<RecruitmentDataWidget> createState() => _RecruitmentDataWidgetState();
}

class _RecruitmentDataWidgetState extends State<RecruitmentDataWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColor.white,
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recruitment Progress",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColor.black),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColor.yellow,
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColor.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
