


import 'package:booking/Controller/Constant/Linkers.dart';

class CustomColumn extends StatelessWidget {
  String name;
  String hinttext;
  Color color;
  double bordercircular;
  TextEditingController controller;
  CustomColumn({
    super.key,
    required this.name,
    required this.hinttext,
    this.color = Colors.white,
    this.bordercircular = 10,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Customtext(
          text: name,
          fontsize: 14.sp,
        ),
        Container(
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(bordercircular),
              border: Border.all(color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hinttext,
              ),
            ),
          ),
        )
      ],
    );
  }
}