import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hospitalapp/Const/color.dart';
import 'package:hospitalapp/Screens/Manger/RegisterScrMan.dart';

import '../AnalysisEmployee/RegisterAnaly.dart';

class TouchScrMan extends StatelessWidget {
  const TouchScrMan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: lightgreen,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: lightgreen,
        elevation: 0,
      ),
      backgroundColor:lightgreen ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => RegisterMan())
                  , );
              },
              child: Center(child: Image.asset("asset/image/fingerprint.png",))),
          Text("Please touch ID sensor to verify registration",style: TextStyle(
              color: wihte , fontSize: 14,height: 5
          ),)
        ],
      ),
    );
  }
}