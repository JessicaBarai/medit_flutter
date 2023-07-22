import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
   HomePage({super.key});

final double horizontalpadding = 40;
final double verticalpadding = 25;
  final user = FirebaseAuth.instance.currentUser!;

void signUserOut(){
  FirebaseAuth.instance.signOut();
}


@override
Widget build(BuildContext context){
  return Scaffold(
    resizeToAvoidBottomInset : false,
    appBar: AppBar(actions:[IconButton(onPressed: signUserOut, icon: Icon(Icons.logout))] ),

    body: SafeArea(child: 
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
        Image.asset(
        'lib/images/menu.png',
        height: 45,
        color: Colors.grey[800],
      ),
      Image.asset(
        'lib/images/light-bulb.png',
        height: 45,
        color: Colors.grey[800],
      ),
      
      ],)
    ),
    const SizedBox(height:20),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Column(
      children: [
         Text("Welcome Home"),
         Text("Pablo Ballester", 
         style: TextStyle(fontSize:40),),
      ]
    ),
  )
   

    ],
    )
    
    ),
  );

}



}