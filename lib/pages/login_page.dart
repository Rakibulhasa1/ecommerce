// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.only(top:30.0),
        child: Column(
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/svgicon/basket-svgrepo-com.svg",
                height: 100,
                width: 100,
                color: Colors.red,),
              ],
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Text('Lorem ipsum dolor'),
                  Text('sit amet lorem ipsum dolors'),
            Text('sit amet'),
            Text('sit amet'),
              ],
            ),
          
          ],
        ),
      )),
    );
  }
}