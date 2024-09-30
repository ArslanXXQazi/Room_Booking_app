



import 'package:booking/Views/Nav_Bar_Screens/Nav_Bar.dart';
import 'package:flutter/cupertino.dart';

import '../../Controller/Constant/Linkers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4),(){
      login();
      //Navigator.push(context, CupertinoPageRoute(builder: (context)=>OnBordingView()));
    });
  }
  login()
  async{
    User?  user= await FirebaseAuth.instance.currentUser;
    if(user!=null)
      {
        Navigator.push(context,CupertinoPageRoute(builder:(context)=>NavBarScreen()));
      }
    else
      {
        Navigator.push(context,CupertinoPageRoute(builder:(context)=>OnBordingView()));

      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Center(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(Appimages.applogo1)),
            Image(image: AssetImage(Appimages.applogo2)),
          ],
        ),),
      ),
    );
  }
}
