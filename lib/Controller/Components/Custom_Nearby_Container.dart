
import 'package:flutter/cupertino.dart';

import '../../Views/Home/Room_description.dart';
import '../Constant/Linkers.dart';

class CustomNearbyContainer extends StatelessWidget {
  String roomName;
  String roomImage;
  String price;
  String location;
  String ratting;


  CustomNearbyContainer({super.key,
    required this.roomImage,
    required this.roomName,
    required this.price,
    required this.location,
    this.ratting='4.5',

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, CupertinoPageRoute(builder: (context)=>RoomDescription(
          image:roomImage,
          roomName: roomName,
          location: location,
          price: price,
          ratting: ratting,
        )));
      },
      child: Container(
        height: 238.h,
        width: 335.w,
        decoration: BoxDecoration(
          color: Colors.white,
          //  borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          Container(
            height: 180.h,
            width: 335.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(roomImage,fit: BoxFit.cover,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBoldText(text: roomName,fontsize: 16,),
                CustomBoldText(text: price,fontsize: 16,),
              ],),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Icon(Icons.location_on_outlined,size: 18,),
                  Customtext(text: location),
                  SizedBox(width: 10.w,),
                  Icon(Icons.star_border,size: 18,),
                  Customtext(text:ratting),

                ],),
                Row(children: [
                  Customtext(text: 'Per Neight')
                ],),
              ],),
          ),
        ],),
      ),
    );
  }
}
