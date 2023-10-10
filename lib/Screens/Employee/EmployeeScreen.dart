import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import '../../Const/color.dart';
import '../Profil/Newuser.dart';



class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key});

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  var x = "All";
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
             // Navigator.push(context, MaterialPageRoute(builder: (context) => Specialist()),);
            },
            child: Icon(Icons.arrow_back,color: Colors.black)),

        title: Padding(
          padding: const EdgeInsets.only(left: 80,top: 10),
          child: Text("Employee",style: TextStyle(
            color: black,fontSize: 18,
          ),),
        ),

      ),
      backgroundColor: wihte,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
            child: Container(height: 48,
              child: TextFormField(
                cursorColor: greenbotton,
                maxLines: 1,
                decoration: InputDecoration(
                  labelText: "Search for Employee",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: grey, // Customize the enabled border color
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.black, // Customize the focused border color
                    ),
                  ),
                  prefixIcon: Icon(Icons.search, color: grey),
                  //hintText: 'Phone number',
                  hintTextDirection: TextDirection.rtl,
                  labelStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: grey),
                ),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: greenbotton,
                ),
              ),
            ),
          ),//search
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(onPressed: (){setState(() {
                      x = "All";  }
                    );
                      },
                      child: Text("All",style: TextStyle(fontSize: 12,color:x=="All"?wihte:Colors.black ),),
                      style: ElevatedButton.styleFrom(
                        primary: x=="All"?lightgreen:wihte,),
                    ),
                  ),
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(onPressed: (){setState(() {
                      x = "Doctor";
                    });}, child:
                    Text("Doctor",style: TextStyle(fontSize: 12,color:x=="Doctor"?wihte:Colors.black ),),style: ElevatedButton.styleFrom(
                      primary: x=="Doctor"?lightgreen:wihte,),
                    ),
                  ),

                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(onPressed: (){setState(() {
                      x = "Nurse";
                    });},
                      child:Text("Nurse",style: TextStyle(fontSize: 12,color:x=="Nurse"?wihte:Colors.black ),),style: ElevatedButton.styleFrom(
                        primary: x=="Nurse"?lightgreen:wihte,),
                    ),
                  ),
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(onPressed: (){ setState(() {
                      x = "HR Employee";
                    });}, child:Text("HR Employee",style: TextStyle(fontSize: 12,color:x=="HR Employee"?wihte:Colors.black ),),style: ElevatedButton.styleFrom(
                      primary: x=="HR Employee"?lightgreen:wihte,),
                    ),
                  ),
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(onPressed: (){setState(() {
                      x = "Analysis Employee";
                    });}, child:Text("Analysis Employee",style: TextStyle(fontSize: 12,color:x=="Analysis Employee"?wihte:Colors.black ),),style: ElevatedButton.styleFrom(
                      primary: x=="Analysis Employee"?lightgreen:wihte,),
                    ),
                  ),
                ),

              ],
            ),
          ),
          Row(
            children: [
              Container(
                height: 490,
                child:
                SingleChildScrollView(
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                              width: 300,
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Image(image: AssetImage("asset/image/Group 4472 (3).png"),
                                      // height: 5,
                                      // width: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Mahmoud Ahmed",style: TextStyle(
                                          fontSize: 14,
                                          color: black,
                                        ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(),
                                          child: Text(
                                            "Specialist _Doctpr",style: TextStyle(
                                            fontSize: 12,
                                            color: grey,
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
                      ),
                      InkWell(
                        onTap: (){
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                              width: 300,
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Image(image: AssetImage("asset/image/Group 4472 (1).png"),
                                      // height: 5,
                                      // width: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Salma Ahmad",style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(),
                                          child: Text(
                                            "Specialist _Doctpr",style: TextStyle(
                                            fontSize: 12,
                                            color: grey,
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
                      ),
                      InkWell(
                        onTap: (){
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                              width: 300,
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Image(image: AssetImage("asset/image/Group 4472 (4).png"),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Shawky Haleem",style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(),
                                          child: Text(
                                            "Specialist _Doctpr",style: TextStyle(
                                            fontSize: 12,
                                            color: grey,
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
                      ),
                      InkWell(
                        onTap: (){
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                              width: 300,
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Image(image: AssetImage("asset/image/Group 4472 (5).png"),
                                      // height: 5,
                                      // width: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Islam Mahmoud",style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(),
                                          child: Text(
                                            "Specialist _Doctpr",style: TextStyle(
                                            fontSize: 12,
                                            color: grey,
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
                      ),
                      InkWell(
                        onTap: (){
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                              width: 300,
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Image(image: AssetImage("asset/image/Group 4472 (3).png"),
                                      // height: 5,
                                      // width: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Mahmoud Ahmed",style: TextStyle(
                                          fontSize: 14,
                                          color: black,
                                        ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(),
                                          child: Text(
                                            "Specialist _Doctpr",style: TextStyle(
                                            fontSize: 12,
                                            color: grey,
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
                      ),
                      InkWell(
                        onTap: (){
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                              width: 300,
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Image(image: AssetImage("asset/image/Group 4472 (2).png"),
                                      // height: 5,
                                      // width: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Hend Ali",style: TextStyle(
                                          fontSize: 14,
                                          color: black,
                                        ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(),
                                          child: Text(
                                            "Specialist _Doctpr",style: TextStyle(
                                            fontSize: 12,
                                            color: grey,
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
                      ),
                      InkWell(
                        onTap: (){
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                              width: 300,
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Image(image: AssetImage("asset/image/Group 4472 (1).png"),
                                      // height: 5,
                                      // width: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Zeyad Ali",style: TextStyle(
                                          fontSize: 14,
                                          color: black,
                                        ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(),
                                          child: Text(
                                            "Specialist _Doctpr",style: TextStyle(
                                            fontSize: 12,
                                            color: grey,
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
                      ),
                    ],
                  ),

                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Newuser()));
                },
                child: Container(
                  height: 490,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset("asset/image/Group 4662.png")),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),//Single child scroll
        ],
      ),
    );
  }
}