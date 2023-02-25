import 'package:flutter/material.dart';

import '../../../common/app_colors.dart';

class ProfileCardWidget extends StatefulWidget {
  const ProfileCardWidget({Key? key}) : super(key: key);

  @override
  State<ProfileCardWidget> createState() => _ProfileCardWidgetState();
}

class _ProfileCardWidgetState extends State<ProfileCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.white, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.asset(
                  "assets/user1.jpg",
                  height: 60,
                  width: 60,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                children: const [
                  Text(
                    "Kathy Silva",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("HR Manager"),
                ],
              ),
            ],
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),

          profileListTile("Joined Date", "18-Apr-2021"),
          profileListTile("Projects", "32 Active"),
          profileListTile("Accomplishment", "105"),
        ],
      ),
    );
  }

  Widget profileListTile(text, value){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Text(value,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColor.black,
              ),
          ),
        ],
      ),
    );
  }
}
