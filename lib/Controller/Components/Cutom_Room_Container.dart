import 'package:booking/Views/Home/Room_description.dart';
import 'package:flutter/cupertino.dart';

import '../Constant/Linkers.dart';

class CustomRoomContainer extends StatelessWidget {
  String image;
  String roomName;
  String location;
  String ratting;
  String price;

   CustomRoomContainer({super.key,
     required this.image,
     required this.roomName,
     required this.location,
     required this.price,
     this.ratting='4.5',

   });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, CupertinoPageRoute(builder: (context)=>RoomDescription(
          image:image,
          roomName: roomName,
          location: location,
          price: price,
          ratting: ratting,
        )));
      },
      child: Container(
        height: 202.h,
        width: 163.5.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Appcolor.lightgray),
        ),
        child: Center(child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 90.h,
              width: 143.5.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Image.asset(image,fit: BoxFit.cover,),
            ),
            SizedBox(height: 5.h,),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: CustomBoldText(text: roomName,fontsize: 16,),
            ),
            SizedBox(height: 10.h,),
            Row(children: [
              Icon(Icons.location_on_outlined,size: 18,),
              Customtext(text: location,),
              SizedBox(width: 10.w,),
              Icon(Icons.star_border,size: 18,),
              Customtext(text: ratting),
            ],),
            SizedBox(height: 5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(children: [
                  CustomBoldText(text: price,fontsize: 16,),
                  Customtext(text: '/Night'),
                ],),
                Row(children: [
                  CircleAvatar(
                    radius: 18.r,
                    child: Image(image:AssetImage(Appicons.hearIcon)),
                  )
                ],)
              ],)
          ],),),
      ),
    );
  }
}
