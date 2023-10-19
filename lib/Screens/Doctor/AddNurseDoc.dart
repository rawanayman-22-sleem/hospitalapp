import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Constant/color.dart';
import 'CaseDetailsDoc.dart';

class SelectNurseDoc extends StatefulWidget {
  const SelectNurseDoc({super.key});
  @override
  State<SelectNurseDoc> createState() => _SelectNurseDocState();
}

class _SelectNurseDocState extends State<SelectNurseDoc> {

  bool value=true;
  int select=0;
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => CaseDetailsDoc()),);
            },
            child: Icon(Icons.arrow_back,color: Colors.black)),

        title: Padding(
          padding: const EdgeInsets.only(left: 80,top: 10),
          child: Text("Select Nurse",style: TextStyle(
            color: Colors.black,fontSize: 18,
          ),),
        ),

      ),
      backgroundColor: wihte,
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(height: 48,
                  child: TextFormField(
                    cursorColor: lightgreen,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: "Search for Nurse",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: black, // Customize the focused border color
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
                      color: lightgreen,
                    ),
                  ),
                ),
              ),//text form field
              SingleChildScrollView(
                  child:
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
                        child: Container(
                          width: double.infinity,
                          height: 54,
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
                              height: 54,
                              child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 10,left: 5),
                                          child: Image(image: AssetImage("asset/image/Group 4472.png"),
                                          ),
                                        ),

                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Salma Ahmad",style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                            ),
                                            Text(
                                              "Specialist - Nurse",style: TextStyle(
                                              fontSize: 10,
                                              color: lightgreen,
                                            ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                    Radio<int>(value: 1, groupValue: select, onChanged:(value) => setState(()=> select=1),
                                      fillColor: MaterialStateColor.resolveWith((states) => lightgreen) ,
                                    ),
                                  ]
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )

              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => CaseDetailsDoc()),);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
                      child: Card(
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
                                padding: const EdgeInsets.all(13),
                                child: Center(
                                  child: Text("Select Nurse",style: TextStyle(
                                    color: wihte,
                                    fontSize: 14,
                                  ),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),//button down
            ]),
      ),
    );
  }
}