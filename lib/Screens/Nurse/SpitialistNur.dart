import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hospitalapp/Screens/Nurse/AttendNur.dart';
import 'package:hospitalapp/Screens/Nurse/CallNur.dart';
import 'package:hospitalapp/Screens/Nurse/TaskNur.dart';
import '../../Constant/color.dart';
import '../Notification/Notification.dart';
import '../Profil/ProfileScreen.dart';
import '../ReportScreen/ReportSccreen.dart';
import 'CaseDetailsNur.dart';

class SpitialistNur extends StatelessWidget {
  const SpitialistNur({Key? key}) : super(key: key);

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
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()),);
          },

          child: Image(image: AssetImage("asset/image/Rectangle 1940.png"),
              height: 5,
              width: 1),
        ),
        title: Column(
          children: [
            Text(
              "Mahmoud Ahmed",style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
            ),
            Text(
              "Specialist , Nurse",style: TextStyle(
              fontSize: 10,
              color: lightgreen,
            ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: TextButton
              (onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Notifications()),);
            },
                child: Icon(Icons.notifications_none,color: Colors.grey,)),

          ),
        ],
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
                          builder: (context) => CallNur()),);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,right:20,left:15,bottom: 10 ),
                      child: Card(
                        color: lightblue,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: lightblue,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: SizedBox(
                          width: 165,
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
                                    image: AssetImage("asset/image/s1.png"),
                                  ),
                                ),
                              ),
                              Text("Calls .",style: TextStyle(
                                fontSize: 14,color: Colors.white,
                              ),),
                              // Text("You have new +1 Request",style: TextStyle(
                              //   fontSize: 10,color: Colors.white,
                              // ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ReportsScreen()),);

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2,right:20,left: 15),
                      child: Card(
                        color: purple,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: purple,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: SizedBox(
                          width: 163,
                          height: 158,
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
                                    image: AssetImage("asset/image/s3.png"),
                                  ),
                                ),
                              ),
                              Text("Reports .",style: TextStyle(
                                fontSize: 14,color: Colors.white,
                              ),),
                              // Text("You have new +1 Report",style: TextStyle(
                              //   fontSize: 10,color: Colors.white,
                              // ),),


                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TasksNur()),);

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,right:10,left: 10),
                      child: Card(
                        color: greenlight,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: greenlight,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: SizedBox(
                          width: 165,
                          height: 158,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Center(
                                  child: Image(image: AssetImage("asset/image/s2.png"),
                                      width: 50,height: 100),
                                ),
                              ),
                              Text("Tasks .",style: TextStyle(
                                fontSize: 14,color: Colors.white,
                              ),),
                              Text("You have new +1 Task",style: TextStyle(
                                fontSize: 10,color: Colors.white,
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => AttendScreenNur()),);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right:10,left: 10,bottom: 5 ,top: 10),
                      child: Card(
                        color: greeeeen,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: greeeeen,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: SizedBox(
                          width: 163,
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
                                    image: AssetImage("asset/image/s4.png"),
                                  ),
                                ),
                              ),
                              Text("attendance - leaving",style: TextStyle(
                                fontSize: 14,color: Colors.white,
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
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CaseDetailsNur()),);

            },
            child: Padding(
              padding: const EdgeInsets.only(right:20,top: 10,left: 10),
              child: Card(
                color: oraanglight,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: oraanglight,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: SizedBox(
                  width: 370,
                  height: 115,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text("Cases",style: TextStyle(
                              fontSize: 14,color: Colors.white,
                            ),),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 170),
                            child: Container(
                              width: 66,
                              height: 66,
                              child: Image(
                                height: 42,
                                width:20 ,
                                image: AssetImage("asset/image/s5.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),


    );
  }
}