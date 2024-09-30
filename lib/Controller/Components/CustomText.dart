

import '../Constant/Linkers.dart';

class Customtext extends StatelessWidget {
  String text;
  double fontsize;
  Color color;
  FontWeight fontweight;
  Customtext({super.key,
    required this.text,
    this.fontsize=14,
    this.color=Colors.black,
    this.fontweight=FontWeight.normal

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
