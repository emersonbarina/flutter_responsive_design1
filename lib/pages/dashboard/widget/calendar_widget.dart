import 'package:flutter/material.dart';
import 'package:flutter_responsive_design1/common/app_colors.dart';
import 'package:intl/intl.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime _focusDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${DateFormat("MMM, yyyy").format(_focusDay)}",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                children: [

                  InkWell(
                    onTap: (){
                      setState(() {
                        _focusDay = DateTime(_focusDay.year, _focusDay.month+1);
                      });
                    },
                    child: Icon(
                      Icons.chevron_left,
                      color: AppColor.black,
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _focusDay = DateTime(_focusDay.year, _focusDay.month-1);
                      });
                    },
                    child: Icon(
                      Icons.chevron_right,
                      color: AppColor.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
