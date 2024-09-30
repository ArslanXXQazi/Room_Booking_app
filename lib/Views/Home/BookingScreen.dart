import '../../Controller/Constant/Linkers.dart';

class Bookingscreen extends StatelessWidget {
  const Bookingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: CustomBoldText(text: 'Information'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           Customtext(text: "Check in - Check out ",fontweight: FontWeight.bold,),
           SizedBox(height: 10.h,),
           Row(
             children: [
               Container(
                 width: 147.5.w,
                 height: 56.h,
                 decoration: BoxDecoration(
                   color: Appcolor.lightgray,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Row(
                   children: [
                     Expanded(
                         flex:70,
                         child: Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: TextFormField(
                             decoration: InputDecoration(
                                 border: InputBorder.none,
                                 hintText: 'Set in date'
                             ),
                           ),
                         )),
                     Expanded(
                         flex: 30,
                         child: Image(image: AssetImage(Appicons.calendarIcon))),
                   ],),
               ),
               Icon(Icons.compare_arrows),
               Container(
                 width: 147.5.w,
                 height: 56.h,
                 decoration: BoxDecoration(
                   color: Appcolor.lightgray,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Row(
                   children: [
                     Expanded(
                         flex:70,
                         child: Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: TextFormField(
                             decoration: InputDecoration(
                                 border: InputBorder.none,
                                 hintText: 'Set in date'
                             ),
                           ),
                         )),
                     Expanded(
                         flex: 30,
                         child: Image(image: AssetImage(Appicons.calendarIcon))),
                   ],),
               ),
             ],),
           SizedBox(height: 10.h,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               CustomBoldText(text: 'Guest'),
               Icon(Icons.search,size: 35,color: Colors.grey,)
             ],),
           SizedBox(height: 10.h,),
           Container(
             height: 172.h,
             width: 335.w,
             decoration: BoxDecoration(
               color: Appcolor.lightgray,
               borderRadius: BorderRadius.circular(10),
             ),
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     CustomBoldText(text: 'Adult',fontsize: 14,),
                     Row(children: [
                       CircleAvatar(
                         radius: 15.r,
                         backgroundColor: Appcolor.lightgray,
                         child: Center(child: Icon(Icons.remove),),
                       ),
                       SizedBox(width: 10.w,),
                       Customtext(text: '1',fontweight: FontWeight.bold,),
                       SizedBox(width: 10.w,),
                       CircleAvatar(
                         radius: 15.r,
                         backgroundColor: Colors.black,
                         child: Center(child: Icon(Icons.add,color: Colors.white,),),
                       ),
                     ],)
                   ],),
                 SizedBox(height: 10.h,),
                 Container(
                   height: 1.h,
                   width: 320.w,
                   color: Colors.black,
                 ),
                 SizedBox(height: 10.h,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     CustomBoldText(text: 'Childern',fontsize: 14,),
                     Row(children: [
                       CircleAvatar(
                         radius: 15.r,
                         backgroundColor: Appcolor.lightgray,
                         child: Center(child: Icon(Icons.remove),),
                       ),
                       SizedBox(width: 10.w,),
                       Customtext(text: '1',fontweight: FontWeight.bold,),
                       SizedBox(width: 10.w,),
                       CircleAvatar(
                         radius: 15.r,
                         backgroundColor: Colors.black,
                         child: Center(child: Icon(Icons.add,color: Colors.white,),),
                       ),
                     ],)
                   ],),
                 SizedBox(height: 10.h,),
                 Container(
                   height: 1.h,
                   width: 320.w,
                   color: Colors.black,
                 ),
                 SizedBox(height: 10.h,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     CustomBoldText(text: 'Pets',fontsize: 14,),
                     Row(children: [
                       CircleAvatar(
                         radius: 15.r,
                         backgroundColor: Appcolor.lightgray,
                         child: Center(child: Icon(Icons.remove),),
                       ),
                       SizedBox(width: 10.w,),
                       Customtext(text: '1',fontweight: FontWeight.bold,),
                       SizedBox(width: 10.w,),
                       CircleAvatar(
                         radius: 15.r,
                         backgroundColor: Colors.black,
                         child: Center(child: Icon(Icons.add,color: Colors.white,),),
                       ),
                     ],)
                   ],),
               ],),
             ),
           ),
         ],),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CustomButton(text: 'Next', ontab: (){}),
            ),


        ],),
      ),
    );
  }
}

