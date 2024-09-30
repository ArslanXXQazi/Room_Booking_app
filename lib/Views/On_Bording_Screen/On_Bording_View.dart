
import 'package:flutter/cupertino.dart';

import '../../Controller/Constant/Linkers.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({super.key});

  @override
  State<OnBordingView> createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
  PageController  _pageController=PageController();
  int currentPage=0;
  void _onPage(int page){
    setState(() {
      currentPage=page;
    });
  }


  void _nextPage()
   {
    if(currentPage<2)
       {
        _pageController.animateToPage(currentPage+1, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
       }
   }


  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: _onPage,
      controller: _pageController,
      children: [
pageBuild(Appimages.appicon1, Appimages.appicon2, Appimages.onBordingImage1, 'Manage Booking', 'Booking & Cancellation anytime, anywhere you want','to'),
pageBuild(Appimages.appicon1, Appimages.appicon2, Appimages.onBordingImage2, 'Choose Home', 'Set your preferred location and let us find the perfect','home for your stay'),
pageBuild(Appimages.appicon1, Appimages.appicon2, Appimages.onBordingImage3, 'Find Best Deals', 'Discover the ultimate stay. Uncover Exclusive Deals','on Every Reservation!'),
      ],
    );
  }
  Widget pageBuild(String appicon1,String appicon2, String onbordingimage,String text1,String text2,text3)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(appicon1)),
              Image(image: AssetImage(appicon2)),
            ],),
          Image(image: AssetImage(onbordingimage)),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          CustomBoldText(text: text1,fontsize: 32,),
          SizedBox(height: 10.h,),
          Customtext(text: text2) ,
          Customtext(text: text3) ,
        ],),
          currentPage!=2?
          CustomButton(text: "Next", ontab: (){_nextPage();}):
              CustomButton(text: 'Next', ontab:(){
                Navigator.push(context, CupertinoPageRoute(builder: (context)=>SignInScreen()));
              })
        ]),
      ),
    );
  }

}
