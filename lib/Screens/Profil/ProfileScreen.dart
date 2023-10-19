

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Constant/color.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
          leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,color: wihte)),

          title: Padding(
            padding: const EdgeInsets.only(left: 80,top: 10),
            child: Text("My Profile",style: TextStyle(
              color: wihte,fontSize: 20,
            ),),
          ),

        ),
        backgroundColor: lightgreen,
        body:Padding(
          padding: const EdgeInsets.only(bottom: 10,top: 20),
          child: Container(
            //height: 600,
            child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Container(
                      margin: EdgeInsets.only(top: 40),
                      height: 510,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: wihte,
                        borderRadius: BorderRadius.circular(16.0),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Center(child: Text("Ebrahem Elzainy",style: TextStyle(
                              color: lightgreen,
                              fontSize: 18,fontFamily: "Poppins",
                            ),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15,right: 5,left: 5,bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:Image.asset("asset/image/Group 4504.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Specialist - Doctor",style: TextStyle(
                                    color: Colors.black,fontSize: 14,
                                  ),),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:Image.asset("asset/image/Group 4494.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Male",style: TextStyle(
                                    color: Colors.black,fontSize: 14,
                                  ),),
                                )
                              ],
                            ),
                          ),//Male
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:Image.asset("asset/image/Group 4492.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("29-03-1997",style: TextStyle(
                                    color: Colors.black,fontSize: 14,
                                  ),),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                   child:Image.asset("asset/image/Group 4491.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Mansoura , Shirben",style: TextStyle(
                                    color: Colors.black,fontSize: 14,
                                  ),),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:Image.asset("asset/image/Group 4491.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Single",style: TextStyle(
                                    color: Colors.black,fontSize: 14,
                                  ),),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:Image.asset("asset/image/Group 4495.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("ebrahemelzainy@gmail.com",style: TextStyle(
                                    color: Colors.black,fontSize: 14,
                                  ),),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:Image.asset("asset/image/Group 4497.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("096521145523",style: TextStyle(
                                    color: Colors.black,fontSize: 14,
                                  ),),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        child: CircleAvatar(
                          radius: 40.0,
                          backgroundColor: Colors.white,
                          child: Container(
                            decoration:  BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [BoxShadow(blurRadius: 15, color: wihte, spreadRadius: 10)],),
                            child: CircleAvatar(
                              radius: 38.0,
                              backgroundImage: AssetImage(
                                  'asset/image/Mask Group 2.png'),
                            ),
                          ),
                        ),)
                  ),

                ]
            ),
          ),
        )

    );
  }
}