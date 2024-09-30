import '../../Controller/Constant/Linkers.dart';

class CustomCatagoryContainer extends StatelessWidget {
  double height;
  double width;
  double bordercircular;
  Color  color;
  Color fontcolor;
  String text;
   CustomCatagoryContainer({super.key,
     required this.text,
     this.height=34,
     this.width=77,
     this.bordercircular=20,
     this.color=Colors.white,
     this.fontcolor=Colors.black
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Appcolor.lightgray),
        borderRadius: BorderRadius.circular(bordercircular),
      ),
      child: Center(child: Customtext(text:text,color: fontcolor,),),
    );
  }
}
