import 'package:flutter/material.dart';
import 'package:q_learn/widgets/primary_buttn.dart';

import '../constraint.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool _isObscure = true;
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                top: true,
                child: SizedBox(
                  height: size.height * 0.02,
                ),
              ),

              SizedBox(
                height: size.height * 0.05,
              ),
              Image.asset(
                'assets/images/dark_logo.png',
                width: size.width * 0.5,
              ),
              //SizedBox(height: size.height*0.01,),
              Text(
                "LOG IN !",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: size.width * 0.1,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const Text(
                "Login To Your Account ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff1a2e35),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              TextFormField(
                decoration:const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  hintText: "Ayat@gmail.com",
                  filled: true,
                  fillColor: kPrimaryLightColor,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor)),
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(90.0))),
                ),

                keyboardType: TextInputType.emailAddress,
                //style: TextStyle(color: Color(0xD47B00A8)),
                scrollPadding: EdgeInsets.all(10),
                //validator: valid,
                // onSaved: (){},
              ),
              TextFormField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                    isCollapsed: false,
                    contentPadding:const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    //hintText: "....",
                    filled: true,
                    fillColor: Colors.white,

                    enabledBorder:const UnderlineInputBorder(
                        borderSide: BorderSide(color: kPrimaryColor)),
                    prefixIcon:const Icon(Icons.lock_open),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ?  Icons.visibility_off:Icons.visibility ,
                      ),
                      onPressed: (){
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),


                keyboardType: TextInputType.visiblePassword,
                
                scrollPadding: EdgeInsets.all(10),
                //validator: valid,
                // onSaved: (){},
              ),

              RoundedButton(
                text: "LOGIN",
                color: kPrimaryColor,
                pres: () {},
                textColor: kPrimaryLightColor,
              ),
              RoundedButton(
                text: "SIGNUP",
                color: kPrimaryLightColor,
                pres: () {},
                textColor: kPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
