import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_app/utils/smart_device_box.dart';

class HomePage extends StatefulWidget{
   const HomePage({super.key});

 @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

final double horizontalpadding = 40;
final double verticalpadding = 25;
final user = FirebaseAuth.instance.currentUser!;

void signUserOut(){
  FirebaseAuth.instance.signOut();
}

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

  // list of smart devices
  List mySmartDevices = [
    // [ smartDeviceName, iconPath , powerStatus ]
    ["Smart Light", "lib/images/light-bulb.png", true],
    ["Smart AC", "lib/images/air-conditioner.png", false],
    ["Smart TV", "lib/images/smart-tv.png", false],
    ["Smart Fan", "lib/images/fan.png", false],
  ];


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
  ),

  



  const SizedBox(height: 20),

  Padding(padding: EdgeInsets.symmetric(horizontal: horizontalpadding),
  child: Text("Smart Device"),
  ),

     // grid
            Expanded(
              child: GridView.builder(
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 25),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.3,
                ),
                itemBuilder: (context, index) {
                    return SmartDeviceBox(
                    smartDeviceName: mySmartDevices[index][0],
                    iconPath: mySmartDevices[index][1],
                    powerOn: mySmartDevices[index][2],
                    onChanged: (value) => powerSwitchChanged(value, index),
                  );
                },
              ),
            )
    


    ],
    )
    
    ),
  );

}
}