


import '../Constant/Linkers.dart';

class CustomButton extends StatelessWidget {
  double height;
  double width;
  double bordercircular;
  String text;
  Color color;
  VoidCallback ontab;
  CustomButton({super.key,
    required this.text,
    required this.ontab,
    this.height=60,
    this.width=335,
    this.bordercircular=10,
    this.color=Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontab,
      child: Container(
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(bordercircular),
        ),
        child: Center(child: Customtext(text: text,color: Colors.white,fontweight: FontWeight.bold,),),
      ),
    );
  }
}
