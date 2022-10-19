// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.only(left:20,right:20,top:100.0),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/svgicon/basket-svgrepo-com.svg",
                height: 130,
                width: 130,
                color: Color.fromRGBO(217, 3, 89, 1),),
              ],
            ),
            SizedBox(height: 50,),
            Column(
              children: [
                Text('Lorem ipsum dolor', style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold
                ),), 
                  Text('sit amet lorem ipsum dolors',style: TextStyle(
                    fontSize: 24,
                  fontWeight: FontWeight.bold
                  ),),
            Text('sit amet',style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),),
           
              ],
            ),  SizedBox(height: 80,),
            SizedBox(
              height: 55,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton.icon(onPressed: (){}, 
              icon: Icon(Icons.shopping_bag), 
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor:  Color.fromRGBO(217, 3, 89, 1)
              ),
              label: Text('Start Shoping',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),)),
            ),SizedBox(height: 20,),
          Text('Don\'t have an account?',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),),SizedBox(height: 0,),
             InkWell(
              onTap: (() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              }),
               child: Text('Sign in Here',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(217, 3, 89, 1)
            ),),
             ),
          ],
        ),
      )),
    );
  }
}