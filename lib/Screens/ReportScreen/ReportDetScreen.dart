import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Constant/color.dart';



class ReportDetScreen extends StatefulWidget {
  const ReportDetScreen({super.key});

  @override
  State<ReportDetScreen> createState() => _ReportDetScreenState();
}

class _ReportDetScreenState extends State<ReportDetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.black)),

        title: Padding(
          padding: const EdgeInsets.only(left: 80,top: 10),
          child: Text("Report Details",style: TextStyle(
            color: Colors.black,fontSize: 18,
          ),),
        ),

      ),
      backgroundColor: wihte,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Card(
                    elevation:0,
                    color: wihterepdet,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: wihterepdet,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(0)),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 36,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Report Name",style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),),
                          ),
                          Image.asset("asset/image/Group 4486.png"),
                        ],
                      ),
                    ),
                  ),
                ),//rep name
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Image(image: AssetImage("asset/image/Rectangle 1906.png"),
                              // height: 5,
                              // width: 1,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Mahmoud Ahmed",style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                              ),
                              Text(
                                "Specialist , Doctor",style: TextStyle(
                                fontSize: 10,
                                color: lightgreen,
                              ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        "13 Mar 2020",style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                      ),
                    ],
                  ),
                ),//image and text
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "Details note : Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  ),
                ),//details
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("asset/image/fi-rr-undo.png",
                        color: grey,
                      ),
                      Text(
                        "Replay - Manger",style: TextStyle(
                        fontSize: 10,
                        color: grey,
                      ),
                      ),
                    ],
                  ),
                ),//Replay - Manger
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Image(image: AssetImage("asset/image/Rectangle 1906.png"),
                              // height: 5,
                              // width: 1,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Mahmoud Ahmed",style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                              ),
                              Text(
                                "Specialist , Doctor",style: TextStyle(
                                fontSize: 10,
                                color: lightgreen,
                              ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        "13 Mar 2020",style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                      ),
                    ],
                  ),
                ),//image and text
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Details note : Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  ),
                ),//details
              ]),
          Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Card(
                    elevation:0,
                    color: wihte,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: wihte,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(0)),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 36,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Type your Replay",style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),),
                          ),
                          Image.asset("asset/image/ic_file_upload_24px.png"),

                        ],
                      ),

                    ),
                  ),
                ),//Type your Replay

                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child:
                  Padding(
                    padding:const EdgeInsets.only(right: 20,left: 20,bottom: 5),
                    child:
                    Card(
                      elevation:0,
                      color:lightgreen,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: lightgreen,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Center(
                                child: Text("Send",style: TextStyle(
                                  color: wihte,
                                  fontSize: 16,
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}