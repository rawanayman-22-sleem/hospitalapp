
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hospitalapp/Screens/Doctor/SpitialistDoc.dart';

import '../../Const/color.dart';

class RegisterDoc extends StatelessWidget {
  const RegisterDoc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: greeeeen,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: lightgreen,
        elevation: 0,
      ),
      backgroundColor: lightgreen,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30,top: 150),
            child: Center(child: Image.asset("asset/image/fi-rr-check.png")),
          ),
          Text("Your attendance has been registered",style: TextStyle(
              color: Colors.white,fontSize: 14
          ),),
          SizedBox(
            height: 129,
          ),
          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SpitialistDoc()),);
              },
              child: Center(child: Image.asset("asset/image/Group 4538.png"))),
        ],
      ),
    );
  }
}