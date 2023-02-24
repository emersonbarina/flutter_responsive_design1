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
      padding: const EdgeInsets.all(20),
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
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              /// Table Header
              TableRow(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                ),
                children: [
                  tableHeader("Full Name"),
                  tableHeader("Designation"),
                  tableHeader("Status"),
                  tableHeader(""),
                ],
              ),

              /// Table Data
              tableRow(
                context,
                name: "Mary G Lolus",
                color: Colors.blue,
                image: "assets/user1.jpg",
                designation: "Project Manager",
                status: "Practical Round",
              ),
              tableRow(
                context,
                name: "Vince Jacob",
                color: Colors.blue,
                image: "assets/user2.jpg",
                designation: "UI/UX Designer",
                status: "Practical Round",
              ),
              tableRow(
                context,
                name: "Nell Brian",
                color: Colors.green,
                image: "assets/user3.jpg",
                designation: "React Developer",
                status: "Final Round",
              ),
              tableRow(
                context,
                name: "Vince Jacob",
                color: Colors.yellow,
                image: "assets/user2.jpg",
                designation: "UI/UX Designer",
                status: "HR Round",
              ),

            ],
          ),
        ],
      ),
    );
  }

  TableRow tableRow(context,{name, image, designation, status, color}){
    return TableRow(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      children: [
        // Full Name
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.asset(
                  image,
                  width: 30,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(name),
            ],
          ),
        ),
        // Designation
        Text(designation),
        // Status
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              height: 10,
              width: 10,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(status),
          ],
        ),
        Image.asset(
          "assets/more.png",
          color: Colors.grey,
          height: 30,
        ),
      ],
    );
  }

  Widget tableHeader(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColor.black,
        ),
      ),
    );
  }
}
