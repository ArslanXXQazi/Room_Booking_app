import 'package:booking/Controller/Components/Cutom_Room_Container.dart';

import '../../Controller/Constant/Linkers.dart';

class WishlistNav extends StatefulWidget {
  const WishlistNav({super.key});

  @override
  State<WishlistNav> createState() => _WishlistNavState();
}

class _WishlistNavState extends State<WishlistNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: CustomBoldText(text: 'Wish List'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 35,))
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                CustomRoomContainer(image: Appimages.room1,
                    roomName: 'Cozy Cottage',
                    location: 'Berlin',
                    price: '\$200'),
                CustomRoomContainer(image: Appimages.room2,
                    roomName: 'Cozy Cottage',
                    location: 'Berlin',
                    price: '\$200'),
              ],),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomRoomContainer(image: Appimages.room2,
                      roomName: 'Cozy Cottage',
                      location: 'Berlin',
                      price: '\$200'),
                  CustomRoomContainer(image: Appimages.room1,
                      roomName: 'Cozy Cottage',
                      location: 'Berlin',
                      price: '\$200'),
                ],),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomRoomContainer(image: Appimages.room1,
                      roomName: 'Cozy Cottage',
                      location: 'Berlin',
                      price: '\$200'),
                  CustomRoomContainer(image: Appimages.room2,
                      roomName: 'Cozy Cottage',
                      location: 'Berlin',
                      price: '\$200'),
                ],),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomRoomContainer(image: Appimages.room2,
                      roomName: 'Cozy Cottage',
                      location: 'Berlin',
                      price: '\$200'),
                  CustomRoomContainer(image: Appimages.room1,
                      roomName: 'Cozy Cottage',
                      location: 'Berlin',
                      price: '\$200'),
                ],),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomRoomContainer(image: Appimages.room1,
                      roomName: 'Cozy Cottage',
                      location: 'Berlin',
                      price: '\$200'),
                  CustomRoomContainer(image: Appimages.room2,
                      roomName: 'Cozy Cottage',
                      location: 'Berlin',
                      price: '\$200'),
                ],),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomRoomContainer(image: Appimages.room1,
                      roomName: 'Cozy Cottage',
                      location: 'Berlin',
                      price: '\$200'),
                  CustomRoomContainer(image: Appimages.room2,
                      roomName: 'Cozy Cottage',
                      location: 'Berlin',
                      price: '\$200'),
                ],),
            ],),
          ),
        ),
      ),
    );
  }
}
