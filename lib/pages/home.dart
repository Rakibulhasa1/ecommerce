// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
         Container(
          width: MediaQuery.of(context).size.width,
          height: 110,
          color: Color.fromRGBO(217, 3, 89, 1),
          child: Padding(
            padding: const EdgeInsets.only(left:20.0,top: 36,right: 20),
            child: Row(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/3135715.png')
                ),SizedBox(width: 10,),
                Column(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Rakibul Hasan Joy',style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                    Text('Flutter Developer',style: TextStyle(
                      color: Colors.white,
                      
                      fontWeight: FontWeight.w500
                    ),),

                  ],
                ),Expanded(child: Container()),
                InkWell(child: Icon(Icons.more_vert,color: Colors.white,))
              ],
            ),
          ),
         ),
         SizedBox(height: 20,),
         Card(
           child: ListTile(
            onLongPress: (){},
            title: Text('Home',style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            leading: Icon(Icons.home,color: Color.fromRGBO(217, 3, 89, 1),),
           ),
         ), Card(
           child: ListTile(
             onLongPress: (){},
            title: Text('Cart',style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            leading: Icon(Icons.card_travel,color: Color.fromRGBO(217, 3, 89, 1),),
           ),
         ), Card(
           child: ListTile(
            onLongPress: (() {
              
            }),
            title: Text('Following',style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            leading: Icon(Icons.share,color: Color.fromRGBO(217, 3, 89, 1),),
           ),
         ), Card(
           child: ListTile(
             onLongPress: (){},
            title: Text('Notification',style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            leading: Icon(Icons.notifications,color: Color.fromRGBO(217, 3, 89, 1),),
           ),
         ), Card(
           child: ListTile(
             onLongPress: (){},
            title: Text('Setting & Privacy',style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            leading: Icon(Icons.settings,color: Color.fromRGBO(217, 3, 89, 1),),
           ),
         ),
       ],
     ),
     bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
      
      
      BottomNavigationBarItem(
        icon: Icon(Icons.home,color: Color.fromRGBO(217, 3, 89, 1),),
        label: 'Home',backgroundColor: Color.fromRGBO(217, 3, 89, 1)
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.camera),
        label: 'Camera',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'My Profile',
      ),
    ],),
    );
  }
}