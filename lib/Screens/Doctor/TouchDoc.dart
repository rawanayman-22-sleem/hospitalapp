import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../Constant/color.dart';
import '../AnalysisEmployee/RegisterAnaly.dart';
import 'RegisterDoc.dart';



class TouchDoc extends StatelessWidget {
  const TouchDoc({Key? key}) : super(key: key);

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
                    builder: (context) => RegisterDoc())
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