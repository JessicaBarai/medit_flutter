import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
   HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

void signUserOut(){
  FirebaseAuth.instance.signOut();
}

@override
Widget build(BuildContext context){
  return Scaffold(
    resizeToAvoidBottomInset : false,
    appBar: AppBar(actions:[IconButton(onPressed: signUserOut, icon: Icon(Icons.logout))] ),
    body: SafeArea(child: Column(children: [
      Row(children: [Image.asset(
        'lib/images/menu.png',
        height: 45,
        color: Colors.grey[800],
      ),
        

        
      ],)
    ],)
    
    ),
  );

}



}