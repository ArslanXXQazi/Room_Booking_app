
import 'package:booking/Controller/Components/Custom_Facilities_Container.dart';
import 'package:booking/Controller/Components/Custom_Nearby_Container.dart';
import 'package:booking/Views/Home/BookingScreen.dart';
import 'package:flutter/cupertino.dart';

import '../../Controller/Constant/Linkers.dart';

class RoomDescription extends StatefulWidget {
  String image;
  String roomName;
  String location;
  String price;
  String ratting;
   RoomDescription({super.key,
     required this.image,
     required this.roomName,
     required this.location,
     required this.price,
     required this.ratting,


   });

  @override
  State<RoomDescription> createState() => _RoomDescriptionState();
}

class _RoomDescriptionState extends State<RoomDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Expanded(
          flex: 90,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 340.h,
                      width: 375.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                        ),
                      ),
                      child: Image.asset(Appimages.room6,fit: BoxFit.cover,),
                    ),
                    Positioned(
                      left: 90.w,top: 260.h,
                      child: Container(
                        height: 62,
                        width: 218,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(image: AssetImage(Appimages.room7)),
                            Image(image: AssetImage(Appimages.room10)),
                            Image(image: AssetImage(Appimages.room8)),
                            Image(image: AssetImage(Appimages.room9)),
                          ],),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          CustomBoldText(text:widget.roomName),
                        ],),
                        Row(children: [
                          CustomBoldText(text:widget.price),
                          Customtext(text: '/Night'),
                        ],),
                      ],),
                    SizedBox(height: 10.h,),
                    Row(children: [
                      Icon(Icons.location_on_outlined,size: 18,),
                      Customtext(text:widget.location),
                      SizedBox(width: 10.w,),
                      Icon(Icons.star_border,size: 18,),
                      Customtext(text: widget.ratting),
                    ],)
                  ],),
                ),
                SizedBox(height: 20.h,),
                Container(
                  width: 325.w,
                  height: 1.h,
                  color: Colors.grey,
                ),
                SizedBox(height: 20.h,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomBoldText(text: 'About'),
                      Customtext(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum...Read more'),
                      SizedBox(height: 10,),
                      CustomBoldText(text: 'Faclities'),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          CustomFacilitiesContainer(text: 'Swimming pool',image: Appicons.facilitiesIcon1,),
                          SizedBox(width: 10.w,),
                          CustomFacilitiesContainer(text: 'Lounge bar & cafe',image: Appicons.facilitiesIcon2,),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        children: [
                          CustomFacilitiesContainer(text: 'Free wifi',image: Appicons.facilitiesIcon4,),
                          SizedBox(width: 10.w,),
                          CustomFacilitiesContainer(text: 'Air conditioner',image: Appicons.facilitiesIcon3,),
                          SizedBox(width: 10.w,),
                          CircleAvatar(
                            radius: 25.r,
                            child: Center(child: Customtext(text: '+10',fontweight: FontWeight.bold,),),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      CustomBoldText(text: 'Nearby Places'),
                      SizedBox(height: 10.h,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CustomNearbyContainer(
                              roomImage:Appimages.room3 ,
                              roomName: 'Cozy Cottage',
                              price: '\$270',
                              location: 'Nepa Valley',
                            ),
                            SizedBox(width: 10.w,),
                            CustomNearbyContainer(
                                roomImage:Appimages.room3 ,
                                roomName: 'Cozy Cottage',
                                price: '\$270',
                                location: 'Nepa Valley'
                            ),
                            SizedBox(width: 10.w,),
                            CustomNearbyContainer(
                                roomImage:Appimages.room3 ,
                                roomName: 'Cozy Cottage',
                                price: '\$270',
                                location: 'Nepa Valley'
                            ),
                          ],),
                      )
                    ],),
                ),
              ],
            ),
          ),),
        Expanded(
          flex: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Row(children: [
                CustomBoldText(text: '\$270'),
                Customtext(text: '/Per Night')
              ],),
              Container(
                height: 30,
                width: 2,
                color: Colors.black,
              ),
              Row(children: [
                CustomButton(text: "Book Now", width: 195,height: 56,
                    ontab: (){
                  Navigator.push(context,CupertinoPageRoute(builder: (context)=>Bookingscreen()));
                    })
              ],)
            ],)),
      ],)
    );
  }
}
