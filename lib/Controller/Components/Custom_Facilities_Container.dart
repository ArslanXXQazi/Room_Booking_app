
import '../../Controller/Constant/Linkers.dart';

class CustomFacilitiesContainer extends StatelessWidget {
  String text;
  String image;
  CustomFacilitiesContainer({super.key,required this.text,required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      width: 125.w,
      decoration: BoxDecoration(
        color:Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(image)),
            SizedBox(width: 5.w,),
            Customtext(text: text,fontsize: 12,),
          ],),
      ),
    );
  }
}
