import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../Const/color.dart';
import 'RegisterRece.dart';


class ReceTouchScreen extends StatelessWidget {
  const ReceTouchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: lightgreen, // <-- SEE HERE
          statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
          statusBarBrightness: Brightness.light, //<-- For iOS SEE HERE (dark icons)
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
                    builder: (context) => RegisterScreenRecep()),);
              },
              child: Center(child: Image.asset("asset/image/fingerprint.png"))),
          Text("Please touch ID sensor to verify registration",style: TextStyle(
              color: Colors.white,fontSize: 14,height: 5
          ),)
        ],
      ),
    );
  }
}