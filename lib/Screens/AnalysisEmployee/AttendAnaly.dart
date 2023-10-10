
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hospitalapp/Screens/AnalysisEmployee/TouchAnaly.dart';

import '../../Const/color.dart';
import '../Notification/Notification.dart';

class AttendScreenAnaly extends StatelessWidget {
  const AttendScreenAnaly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wihteshadow,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: wihteshadow, // <-- SEE HERE
          statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
          statusBarBrightness: Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        backgroundColor: wihteshadow,
        elevation: 0,
        leading: Image(image: AssetImage("asset/image/person.png"),
            height: 5,
            width: 1),

        title: Column(
          children: [
            Text(
              "Mahmoud Ahmed",style: TextStyle(
              fontSize: 14,
              color: black,
            ),
            ),
            Text(
              "Specialist , Analysis Employee",style: TextStyle(
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
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
            child: Card(
              elevation:0,
              color: orangnote.withOpacity(0.15),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: orangnote.withOpacity(0.15),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 103,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5,left: 15),
                      child: Text("Note",style: TextStyle(
                        color: orangnote,
                        fontSize: 16,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text("""    Details note : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum
      has been the industry's""",style: TextStyle(
                        fontSize: 12,
                      ),),
                    )

                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
            child: Card(
              color: wihte,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: wihte,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 111,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("Attendance",style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 260),
                          child: Image.asset("asset/image/Group 4533.png"),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 20,),
                      child: Text("09 : 00 am",style: TextStyle(
                        fontSize: 12,color: greeeeen,
                      ),),
                    ),
                    Container(
                      height: 40,
                      width: 65,
                      child: ElevatedButton(
                        child: Image.asset("asset/image/left-arrow (1).png"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: greeeeen,
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => TouchScreenAnaly()),);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 5,right: 5),
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 111,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("Leaving",style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 290),
                          child: Image.asset("asset/image/Group 4535.png"),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 20),
                      child: Text("09 : 00 am",style: TextStyle(
                        fontSize: 12,color: greeeeen,
                      ),),
                    ),
                    Container(
                      height: 40,
                      width: 65,
                      child: ElevatedButton(
                        child: Image.asset("asset/image/left-arrow (1).png"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: greeeeen,
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => TouchScreenAnaly()),);
                        },

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