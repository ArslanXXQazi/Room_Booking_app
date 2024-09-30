
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../Controller/Constant/Linkers.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignUpScreen> {
  TextEditingController mail_Controller=TextEditingController();
  TextEditingController password_Controller=TextEditingController();
  bool loading=false;
  Future<void> signUp()
  async{
    loading=true;
    setState(() {

    });
    String email=mail_Controller.text.trim();
    String password=password_Controller.text.toString();
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).
    then((onValue){
      print('User Create succssfullllllllllllllllllllly');
      Fluttertoast.showToast(
        msg: 'Account Create Successfully',
        backgroundColor: Colors.green,
        textColor: Colors.white,
      );
      mail_Controller.clear();
      password_Controller.clear();
      Navigator.push(context,CupertinoPageRoute(builder: (context)=>SignInScreen()));
      loading=false;
      setState(() {

      });

    }).
    onError((error,handleError){
      print("Errrrrrrrrrrrrrrrrrrrrrrrrrrrrrrooooooooooooor$error");
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
              CustomBoldText(text: 'Sign Up'),
              CustomColumn(name: 'Email', hinttext: 'Enter email', controller: mail_Controller,color: Appcolor.lightgray,),
              SizedBox(height: 10.h,),
              CustomColumn(name: 'Password', hinttext: 'Enter password', controller: password_Controller,color: Appcolor.lightgray,),
              SizedBox(height: 20.h,),
              loading?CircularProgressIndicator():
              CustomButton(text: 'Sign Up',
                  ontab: ()
                  {
                    signUp();
                  }),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Customtext(text: 'Already have account?  '),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, CupertinoPageRoute(builder: (context)=>SignInScreen()));
                      },
                      child: Customtext(text: 'Sign in',fontsize: 16,color: Colors.blue,fontweight: FontWeight.bold,)),
                ],
              ),
            ],)
          ],),
      ),),
    );
  }
}
