

import '../Constant/Linkers.dart';

class CustomBoldText extends StatelessWidget {
  String text;
  double fontsize;
  Color color;
  FontWeight fontweight;
  CustomBoldText({super.key,
    required this.text,
    this.fontsize=24,
    this.color=Colors.black,
    this.fontweight=FontWeight.bold

  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        fontSize: fontsize.sp,
        color: color,
        fontWeight: fontweight
    ),);
  }
}
