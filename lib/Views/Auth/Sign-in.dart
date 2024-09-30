import 'package:booking/Views/Nav_Bar_Screens/Nav_Bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:toastification/toastification.dart';

import '../../Controller/Constant/Linkers.dart';



class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController mail_Controller=TextEditingController();
  TextEditingController password_Controller=TextEditingController();
  bool loading=false;

  Future<void> signIn()async{
    loading=true;
    setState(() {

    });
    String email=mail_Controller.text.trim();
    String password=password_Controller.text.toString();
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).
    then((onValue){
      print('Login Successssssssssssssfully');
      Fluttertoast.showToast(
        msg: 'Login Successfully',
        backgroundColor: Colors.green,
        textColor: Colors.white,
      );
      loading=false;
      setState(() {

      });
      Navigator.push(context, CupertinoPageRoute(builder: (context)=>NavBarScreen()));
    }).
    onError((error,handleError){
      print('Errorrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr$error');
      Fluttertoast.showToast(
        msg: error.toString(),
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
      loading=false;
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage(Appimages.appicon1)),
                Image(image: AssetImage(Appimages.appicon2)),
              ],),
            Column(children: [
              CustomBoldText(text: 'Sign in'),
              CustomColumn(name: 'Email', hinttext: 'Enter email', controller: mail_Controller,color: Appcolor.lightgray,),
              SizedBox(height: 10.h,),
              CustomColumn(name: 'Password', hinttext: 'Enter password', controller: password_Controller,color: Appcolor.lightgray,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Customtext(text: 'Forgot password?'),
                ],
              ),
              SizedBox(height: 10.h,),
              loading?CircularProgressIndicator():
              CustomButton(text: 'Sign in', ontab: (){signIn();}),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Customtext(text: 'Don,t have account?  '),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, CupertinoPageRoute(builder: (context)=>SignUpScreen()));
                    },
                      child: Customtext(text: 'Sign up',fontsize: 18,color: Colors.blue,)),
                ],
              ),
            ],)
        ],),
      ),),
    );
  }
}
