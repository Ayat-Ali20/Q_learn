import 'package:flutter/material.dart';
import 'package:q_learn/constraint.dart';
import 'package:q_learn/screens/main_splash_screen.dart';
import 'package:q_learn/widgets/primary_buttn.dart';

void main() {
  runApp( MainSplashScreen());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: kPrimaryLightColor,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(

            children: [
              SafeArea(top: true,child: SizedBox(height: size.height*0.02,),),
              Row(
                children: [
                  Image.asset('assets/images/dark_logo.png',width: size.width*0.05,),
                  Text("QPQ")
                ],
              ),
              SizedBox(height: size.height*0.1,),
              Image.asset('assets/images/students.png',width: size.width*1,),
              SizedBox(height: size.height*0.1,),
              Text("Hello !" , style: TextStyle(color: kPrimaryColor , fontSize: size.width*0.1, fontWeight: FontWeight.bold),),
              SizedBox(height: size.height*0.01,),
              const Text("Beast Place To Exching A Sevess And Learnini Skilles  to bt good student" ,textAlign: TextAlign. center, style: TextStyle(color:Colors.black,height: 1.7, ) ,),
              SizedBox(height: size.height*0.04,),
              RoundedButton(text: "LOGIN" , color: kPrimaryColor, pres: (){},textColor: kPrimaryLightColor,),
              RoundedButton(text: "SIGNUP" , color: kPrimaryLightColor, pres: (){},textColor: kPrimaryColor,),

            ],
          ),
        ),
      ),
    );
  }
}


