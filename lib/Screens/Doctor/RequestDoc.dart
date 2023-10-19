import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hospitalapp/Screens/Doctor/CaseDetailsDoc.dart';

import '../../Constant/color.dart';
import 'MedicalMeasDoc.dart';
import 'MedicalRecDoc.dart';


class RequestDoc extends StatelessWidget {
  const RequestDoc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: wihte, // <-- SEE HERE
          statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
          statusBarBrightness: Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        backgroundColor: wihte,
        elevation: 0,
        leading: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CaseDetailsDoc()),);

            },
            child: Icon(Icons.arrow_back,color: black)),
        ),

      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(
                          builder: (context) => MedicalRecDoc()),);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,right:100,left:100,bottom: 10 ),
                      child: Card(
                        color: Colors.white38,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.white38,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: SizedBox(
                          width: 200,
                          height: 193,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: Center(
                                  child: Image(
                                    height: 66,
                                    width:66 ,
                                    image: AssetImage("asset/image/fi-rr-treatment (1).png"),
                                  ),
                                ),
                              ),
                              Text("Medical record .",style: TextStyle(
                                fontSize: 14,color: lightgreen,
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MedicalMeasDoc()),);

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2,right:100,left: 100),
                      child: Card(
                        color: Colors.white38,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.white38,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: SizedBox(
                          width: 200,
                          height: 193,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20,left: 30,right: 30,bottom: 15),
                                child: Center(
                                  child: Image(
                                    height: 60,
                                    width:66 ,
                                    image: AssetImage("asset/image/fi-rr-dashboard (1).png"),
                                    color: lightgreen,
                                  ),
                                ),
                              ),
                              Text("Medical measurement .",style: TextStyle(
                                fontSize: 14,color: lightgreen,
                              ),),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),

        ],
      ),

  ]  )
    );
  }
}