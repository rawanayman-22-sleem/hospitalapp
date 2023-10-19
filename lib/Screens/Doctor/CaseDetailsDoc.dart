

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hospitalapp/Screens/Doctor/AddNurseDoc.dart';
import 'package:hospitalapp/Screens/Doctor/SpitialistDoc.dart';

import '../../Constant/color.dart';
import 'CaseScreen.dart';
import 'RequestDoc.dart';

class CaseDetailsDoc extends StatefulWidget {
  const CaseDetailsDoc({Key? key}) : super(key: key);

  @override
  State<CaseDetailsDoc> createState() => _CaseDetailsDocState();
}

class _CaseDetailsDocState extends State<CaseDetailsDoc> {

  TextEditingController discriptionController = TextEditingController();
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => CasesScreenDoc()),);
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
                margin: EdgeInsets.only( top: 5),

                child: TabBar(
                    padding: EdgeInsets.zero,
                    indicatorPadding: EdgeInsets.zero,
                    labelPadding: EdgeInsets.zero,
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(1),
                        color: lightgreen),
                    tabs: [
                      Tab(
                        child: Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1),
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
                              borderRadius: BorderRadius.circular(1),
                              border: Border.all(color: grey, width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(" Medical record "),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 100,
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1),
                              border: Border.all(color: grey, width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(" Medical measurement "),
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
                            //SizedBox(width: MediaQuery.of(context).size.width/2,),
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
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 20),
                            child:Container(
                              height: 40,
                              width: 130,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:lightgreen,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: orangnote.withOpacity(0.15),
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => SelectNurseDoc()),);
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.add,
                                        color: wihte
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: Text('Add Nurse',style: TextStyle(
                                          fontSize: 14,color: wihte
                                      ),),
                                    ), // <-- Text
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 20),
                            child:Container(
                              height: 40,
                              width: 130,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:lightgreen,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: orangnote.withOpacity(0.15),
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                onPressed: () {
                                   Navigator.push(context, MaterialPageRoute(
                                       builder: (context) => RequestDoc()),);
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.add,
                                        color: wihte
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: Text('Request',style: TextStyle(
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
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => CasesScreenDoc()),);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
                              child: Card(
                                elevation:0,
                                color:red,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: red,
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
                                          child: Text("End Case",style: TextStyle(
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
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: ElevatedButton(onPressed: (){}, child:Text("Blood pressure",style: TextStyle(fontSize: 12,color: wihte),),style: ElevatedButton.styleFrom( primary: lightgreen,),

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: ElevatedButton(onPressed: (){}, child:Text("Suger analysis",style: TextStyle(fontSize: 12,color: wihte),),style: ElevatedButton.styleFrom( primary: lightgreen,),
                                ),
                              ),

                            ] ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: ElevatedButton(onPressed: (){}, child:Text("Suger analysis",style: TextStyle(fontSize: 12,color: grey),),style: ElevatedButton.styleFrom( primary: wihte,),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Container(
                            height:116 ,
                            width: double.infinity,
                            child:
                            TextFormField(
                              controller: discriptionController,
                              maxLines: 8,
                              decoration: InputDecoration(
                                labelText: "Case Description",
                                labelStyle: TextStyle(color: grey),
                                fillColor: grey,
                                helperStyle: TextStyle(color: grey),
                                contentPadding: EdgeInsets.all(12),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                    BorderSide(color: grey, width: 0.5)),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                    BorderSide(color: grey, width: 0.5)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                    BorderSide(color: grey, width: 0.5)),
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                            child: Align(
                                alignment: FractionalOffset.bottomCenter,
                                child: InkWell(

                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => SpitialistDoc()),);

                                    },

                                    child:  Padding(
                                        padding: const EdgeInsets.only(
                                            right: 20, left: 20, bottom: 5),
                                        child:
                                        Card(
                                            elevation: 0,
                                            color: lightgreen,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: lightgreen,
                                              ),
                                              borderRadius: const BorderRadius.all( Radius.circular(5)),
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
                                                          child: Text(
                                                            "Send", style: TextStyle(
                                                            color: wihte,
                                                            fontSize: 14,
                                                          ),),
                                                        ),
                                                      )
                                                    ]
                                                )
                                            )
                                        )
                                    )
                                )
                            )
                        )
                      ]),

                ]),
              ),
            )
          ],
        ),
      ),

    );
  }
}