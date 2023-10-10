import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Const/color.dart';
import 'PrototypMap.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3,),
    )..addListener(() {
      setState(() {});
      Timer(
          Duration(seconds: 3),
              () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => PrototypeMap())));
    });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white, // <-- SEE HERE
          statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
          statusBarBrightness: Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          Center(
            child: Image.asset(
              "asset/image/Layer 1.png",
              // color: lightgreen,
              height: MediaQuery.of(context).size.height / 4,
            ),),
          Center(
            child: LinearProgressIndicator(
              value: controller.value,
              backgroundColor: Colors.white,
              color: lightgreen,
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Loading....',style: TextStyle(color: lightgreen,fontSize: 40),),
            ),
          ),

        ],

      ),
    );
  }
}