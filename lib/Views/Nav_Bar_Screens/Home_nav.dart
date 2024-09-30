


import 'package:booking/Controller/Components/Custom_Catagory_Container.dart';
import 'package:booking/Controller/Components/Custom_Nearby_Container.dart';
import 'package:booking/Controller/Components/Cutom_Room_Container.dart';

import '../../Controller/Constant/Linkers.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40,left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //=================================================>>Location Container
            Container(
              height: 42.h,
              width: 133.w,
              decoration: BoxDecoration(
                color: Appcolor.lightgray,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.location_on_rounded,color: Colors.black,),
                Customtext(text: 'Dakha, BD'),
                Icon(Icons.keyboard_arrow_down,)
              ],),),
            ),
              SizedBox(height: 20.h,),

             CustomBoldText(text: 'Find Your',),
             CustomBoldText(text: 'Perfect Stay'),
              SizedBox(height: 20.h,),
              Customtext(text: 'Discover the best hotel deals worldwide'),
              SizedBox(height: 20.h,),
              //==========================================Where to go Container
              Container(
                height: 72.h,
                width: 335.w,
               decoration: BoxDecoration(
                 color: Appcolor.lightgray,
                 borderRadius: BorderRadius.circular(10),
               ),
                child: Center(child: Row(children: [
                  Expanded(
                    flex: 20,
                      child: ImageIcon(AssetImage(Appicons.searchIcon2))),

                  Expanded(flex : 60,
                      child:TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Where to go?'
                        ),
                      ),),
                  Expanded(
                    flex: 20,
                      child:ImageIcon(AssetImage(Appicons.searchIcon1))),
                ],),),
              ),
              SizedBox(height: 20.h,),

              //==========================================Row For Catagory
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Image(image: AssetImage(Appicons.categoryIcon)),
                  SizedBox(width: 10.w,),
                  CustomCatagoryContainer(text: 'Popular',color: Colors.black,fontcolor: Colors.white,),
                  SizedBox(width: 10.w,),
                  CustomCatagoryContainer(text: 'Luxury',width: 70,),
                  SizedBox(width: 10.w,),
                  CustomCatagoryContainer(text: 'Local',width: 60,),
                  SizedBox(width: 10.w,),
                  CustomCatagoryContainer(text: 'Family - Frandly',width: 125,),

                ],),
              ),
              SizedBox(height: 20.h,),
              //========================================== ROw for room
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomRoomContainer(
                      image: Appimages.room1,
                      roomName: 'Cozy Cottage ',
                      location: 'Berlin',
                      price: '\$200'
                  ),
                CustomRoomContainer(
                    image: Appimages.room2,
                    roomName: 'Mountain View ',
                    location: 'Berlin',
                    price: '\$200'
                ),
              ],),
              SizedBox(height: 10.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
               CustomBoldText(text: 'Top Nearby'),
               Customtext(text: "See all"),
             ],),
              SizedBox(height: 10.h,),
              //========================================== Column for Container
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                CustomNearbyContainer(
                    roomImage: Appimages.room3,
                    roomName: 'Seaside Villa',
                    price: '\$200',
                    location: 'Santorini'
                ),
                SizedBox(height: 20.h,),
                CustomNearbyContainer(
                    roomImage: Appimages.room4,
                    roomName: 'Forest Retreat',
                    price: '\$200',
                    location: 'Koyoto'
                ),
                  SizedBox(height: 20.h,),
                CustomNearbyContainer(
                    roomImage: Appimages.room3,
                    roomName: 'Ocean Breeze Resort',
                    price: '\$200',
                    location: 'Miami'
                ),
              ],)
          ],),
        ),
      )
    );
  }
}
