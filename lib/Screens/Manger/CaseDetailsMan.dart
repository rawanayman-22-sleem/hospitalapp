import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hospitalapp/Screens/Manger/CaseMan.dart';

import '../../Const/color.dart';

class CaseDetailsMan extends StatelessWidget {
  const CaseDetailsMan({Key? key}) : super(key: key);

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => CaseMan()),);
            },
            child: Icon(Icons.arrow_back,color: black)),

        title: Padding(
          padding: const EdgeInsets.only(left: 80,top: 10),
          child: Text("Case Details",style: TextStyle(
            color: Colors.black,fontSize: 18,
          ),),
        ),

      ),
      backgroundColor: wihte,
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: Container(
                margin: EdgeInsets.only( top: 7),

                child: TabBar(
                    padding: EdgeInsets.zero,
                    indicatorPadding: EdgeInsets.zero,
                    labelPadding: EdgeInsets.zero,
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: lightgreen),
                    tabs: [
                      Tab(
                        child: Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: grey, width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Case"),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: grey, width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(" Medical record "),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Tab(
                          child: Container(
                            height: 100,
                            width: 1000,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: grey, width: 1)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Center(child: Text("MedicalMeasurment",style: TextStyle(fontSize: 12),)),
                            ),
                          ),
                        ),
                      ),

                    ]),

              ),

            ),

            Expanded(
              child: Container(
                child: TabBarView(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Patient Name",style: TextStyle(
                                color: grey,fontSize: 14,
                              ),),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width / 2.5,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Ebrahem Khaled",style: TextStyle(
                                color: Colors.black,fontSize: 14,
                              ),),
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Age",style: TextStyle(
                                color: grey,fontSize: 14,
                              ),),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("22years",style: TextStyle(
                                  color: Colors.black,fontSize: 14,
                                ),),
                              ),
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Phone Number",style: TextStyle(
                                color: grey,fontSize: 14,
                              ),),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width / 2.5,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("254110241423",style: TextStyle(
                                color: Colors.black,fontSize: 14,
                              ),),
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Date",style: TextStyle(
                                color: grey,fontSize: 14,
                              ),),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width / 2.5,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("24.04.2021",style: TextStyle(
                                color: Colors.black,fontSize: 14,
                              ),),
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Docotr",style: TextStyle(
                                color: grey,fontSize: 14,
                              ),),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width / 2.5,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Salma Ahmad",style: TextStyle(
                                color: black,fontSize: 14,
                              ),),
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Nurse",style: TextStyle(
                                color: grey,fontSize: 14,
                              ),),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width / 2.5,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Ali ismal",style: TextStyle(
                                color:black,fontSize: 14,
                              ),),
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Status",style: TextStyle(
                                color: grey,fontSize: 14,
                              ),),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width / 2.5,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Process",style: TextStyle(
                                color: black,fontSize: 14,
                              ),),
                            )

                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Case Description ",style: TextStyle(
                          color: grey,fontSize: 14,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8,left: 8,right:50),
                        child: Text("Details note : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",style: TextStyle(
                          color: Colors.black,fontSize: 14,
                        ),),
                      ),


                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                                  child: Image(image: AssetImage("asset/image/NoPath - Copy (11).png"),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Amal Ezzat",style: TextStyle(
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
                      ), //details
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Medical record",style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Image.asset("asset/image/Ellipse 612.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Blood pressure",style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Image.asset("asset/image/Ellipse 612.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Sugar analysis",style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image(image: AssetImage("asset/image/NoPath - Copy (13).png"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 100,left: 10),
                              child: Image.asset("asset/image/ic_file_download_24p.png",),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                                  child: Image(image: AssetImage("asset/image/NoPath - Copy (11).png"),
                                  ),
                                ),//image
                                Column(
                                  children: [
                                    Text(
                                      "Amal Ezzat",style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                    ),
                                    Text(
                                      "Specialist , Analysis employee",style: TextStyle(
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
                              color: grey,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "Details note : Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's",style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Medical Measurment",style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        ),
                      ), //Medical record
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Image.asset("asset/image/Ellipse 612.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Blood pressure",style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "120- 129",style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                              ),
                            ),
                          ),
                        ],
                      ),//Blood pressure
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Image.asset("asset/image/Ellipse 612.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Sugar analysis",style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "120- 129",style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                              ),
                            ),
                          ),
                        ],
                      ),//Sugar analysis



                    ],
                  ),

                ]),
              ),
            )
          ],
        ),
      ),

    );
  }
}