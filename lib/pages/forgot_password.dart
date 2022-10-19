// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce/pages/home.dart';
import 'package:ecommerce/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.only(left:20,right:20,top:50.0),
        child: Column(
          children: [SvgPicture.asset("assets/svgicon/user-profile-svgrepo-com.svg",
                height: 130,
                width: 130,
                color: Color.fromRGBO(217, 3, 89, 1),),SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Text('Lorem ipsum',style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),),
              ],
            ),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                color: Color.fromRGBO(217, 3, 89, 1),
                width: 2,
              )),enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.grey, width: 2.0),
            ),
            hintText: 'Type your email',),
            ),
             
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Checkbox(value: value,
               activeColor: Color.fromRGBO(217, 3, 89, 1),
                onChanged: (newBool){
                  setState(() {
                    value = newBool;
                  });
                }
                
                ),
                Text('Forgot password?',style: TextStyle(fontWeight: FontWeight.w500),),
              
               
             ],
           ),SizedBox(height: 20,),
           SizedBox(
              height: 55,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              }, 
             
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor:  Color.fromRGBO(217, 3, 89, 1)
              ),
              child: Text('Forgot password',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),)),
            ),
            SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Do you have an account?',style: TextStyle(fontWeight: FontWeight.w500),),SizedBox(width: 10,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                  },
                  child: Text('Sign up',style: TextStyle(fontWeight: FontWeight.w500,color: Color.fromRGBO(217, 3, 89, 1)),)),
              ],
            ),
          ],
        ),
      )),
 
    );
  }
}