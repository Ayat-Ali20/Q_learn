import 'package:flutter/material.dart';
import 'package:q_learn/constraint.dart';
import 'package:q_learn/main.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:q_learn/screens/login.dart';

class MainSplashScreen extends StatelessWidget {
  const MainSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: EasySplashScreen(
          title: const Text("Hi Every One , Join From Any Where To Explet Services." , style: TextStyle(color:kPrimaryLightColor) ,),
          backgroundColor: kPrimaryColor,
          logo: Image.asset('assets/images/light_logo.png'),
          navigator: LoginScreen(),
          durationInSeconds: 7,
        ),
      ),
    );
  }
}
