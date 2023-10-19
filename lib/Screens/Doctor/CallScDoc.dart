
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hospitalapp/Screens/Doctor/SpitialistDoc.dart';

import '../../Constant/color.dart';

class CallsScreenDoc extends StatelessWidget {
  const CallsScreenDoc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor:wihteshadow , // <-- SEE HERE
          statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
          statusBarBrightness: Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        backgroundColor: wihteshadow,
        elevation: 0,
        leading: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SpitialistDoc()),);
            },
            child: Icon(Icons.arrow_back,color: black)),

        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text("Calls",style: TextStyle(
            color: grey,fontSize: 18,
          ),),
        ),

      ),
      backgroundColor: wihteshadow,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
            child: Card(
              //elevation:1,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 152,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("asset/image/Group 2878.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,top: 8),
                          child: Text("Ebrahem Khaled",style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("asset/image/Group 2877 (1).png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,top: 8,),
                          child: Text("09 : 00 am",style: TextStyle(
                            fontSize: 12,color: black,
                          ),),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 80),
                            child: Container(
                              height: 40,
                              width: 100,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: greenbotton,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: orangnote.withOpacity(0.15),
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset("asset/image/Group 4544 (1).png"),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text('Accept',style: TextStyle(
                                          fontSize: 12,color: wihte
                                      ),),
                                    ), // <-- Text
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 20),
                            child:Container(
                              height: 40,
                              width: 98,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: greenbotton,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: orangnote.withOpacity(0.15),
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset("asset/image/Group 4543 (1).png"),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text('Busy',style: TextStyle(
                                          fontSize: 14,color: wihte
                                      ),),
                                    ), // <-- Text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}