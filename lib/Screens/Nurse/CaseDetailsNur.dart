import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Constant/color.dart';
import 'CallNur.dart';

class CaseDetailsNur extends StatefulWidget {
  const CaseDetailsNur({Key? key}) : super(key: key);

  @override
  State<CaseDetailsNur> createState() => _CaseDetailsNurState();
}

class _CaseDetailsNurState extends State<CaseDetailsNur> {

  TextEditingController discriptionController = TextEditingController();
  bool _isHidden = true;
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => CallNur()),);
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
                            height: 140,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5,left: 15),
                                  child: Text("You have request",style: TextStyle(
                                    color: orangnote,
                                    fontSize: 16,
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Text("""   You have a new request from the doctor,please 
  follow up and implement the request as soon as possible  """,style: TextStyle(
                                    fontSize: 12,
                                  ),),
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: ElevatedButton(onPressed: (){}, child:Text("Show Details",style: TextStyle(fontSize: 12),),style: ElevatedButton.styleFrom(
                                          primary: orang,),
                                        ),
                                      ),
                                    ] ),

                              ],

                            ),
                          ),
                        ),
                      ),
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
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: InkWell(
                            onTap: (){
                              // Navigator.push(context, MaterialPageRoute(
                              //     builder: (context) => CasesScreen()),);
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
                                          child: Text("Call Doctor",style: TextStyle(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            children: [

                              SingleChildScrollView(
                                child: Padding(
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
                                ),
                              ),//image and text
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(
                                  "Details note : Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum ",style: TextStyle(
                                  fontSize: 12,
                                  color: black,
                                ),
                                ),
                              ),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child:Container(
                                        height: 55,
                                        width: 150,
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
                                            // Navigator.push(context, MaterialPageRoute(
                                            //     builder: (context) => SelectNurse()),);
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(0),
                                                child: Text('Blood pressure',style: TextStyle(
                                                    fontSize: 14,color: wihte
                                                ),),
                                              ), // <-- Text
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child:Container(
                                        height: 55,
                                        width: 150,
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
                                            // Navigator.push(context, MaterialPageRoute(
                                            //     builder: (context) => SelectNurse()),);
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(0),
                                                child: Text('Sugar analysis',style: TextStyle(
                                                    fontSize: 14,color: wihte
                                                ),),
                                              ), // <-- Text
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),


                                  ]  ),

                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Add measurement ",style: TextStyle(
                                      fontSize: 22,
                                      color: black,
                                    ),
                                    ),
                                  ],
                                ),
                              ),//Replay - Manger



                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child:Container(
                                      height: 55,
                                      width: 150,
                                      child: TextFormField(
                                        obscureText: _isHidden,
                                        cursorColor: lightgreen,
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(5),
                                            borderSide: BorderSide(
                                              color: grey,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                              color: black,
                                            ),
                                          ),

                                          suffixIcon: InkWell(
                                            child: DropdownButtonFormField<String>(
                                              decoration: InputDecoration(
                                              ),
                                              hint: Text(' Blood pressure',),
                                              dropdownColor: wihte,
                                              items: <String>[''].map((String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: new Text(value),
                                                );
                                              }).toList(),
                                              onChanged: (_) {},
                                            ),
                                          ),

                                          labelText: ' Blood pressure',
                                          hintTextDirection: TextDirection.rtl,
                                          hintStyle: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal,
                                              color: black),
                                        ),

                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: black,
                                        ),

                                        keyboardType: TextInputType.visiblePassword,
                                        textInputAction: TextInputAction.next,

                                      ),
                                    ),
                                  ),


                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child:Container(
                                      height: 55,
                                      width: 150,
                                      child: Container(
                                        height:48 ,
                                        width: double.infinity,
                                        child: TextFormField(
                                          cursorColor: grey,
                                          maxLines: 1,
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(5),
                                              borderSide: BorderSide(
                                                color: grey, // Customize the enabled border color
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(5),
                                              borderSide: BorderSide(color: grey,),
                                            ),
                                            hintText:'120- 129' ,
                                            hintStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: black),
                                          ),
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal,
                                            color: grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),


                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child:Container(
                                      height: 55,
                                      width: 150,
                                      child: TextFormField(
                                        obscureText: _isHidden,
                                        cursorColor: lightgreen,
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(5),
                                            borderSide: BorderSide(
                                              color: grey,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                              color: black,
                                            ),
                                          ),

                                          suffixIcon: InkWell(
                                            child: DropdownButtonFormField<String>(
                                              decoration: InputDecoration(
                                              ),
                                              hint: Text(' Sugarb analysis',),
                                              dropdownColor: wihte,
                                              items: <String>[''].map((String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: new Text(value),
                                                );
                                              }).toList(),
                                              onChanged: (_) {},
                                            ),
                                          ),

                                          labelText: ' Sugarb analysis',
                                          hintTextDirection: TextDirection.rtl,
                                          hintStyle: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal,
                                              color: black),
                                        ),

                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: black,
                                        ),

                                        keyboardType: TextInputType.visiblePassword,
                                        textInputAction: TextInputAction.next,

                                      ),
                                    ),
                                  ),


                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child:Container(
                                      height: 55,
                                      width: 150,
                                      child: Container(
                                        height:48 ,
                                        width: double.infinity,
                                        child: TextFormField(
                                          cursorColor: grey,
                                          maxLines: 1,
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(5),
                                              borderSide: BorderSide(
                                                color: grey, // Customize the enabled border color
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(5),
                                              borderSide: BorderSide(color: grey,),
                                            ),
                                            hintText:'Add value' ,
                                            hintStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: grey),
                                          ),
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal,
                                            color: grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Container(
                                  height:200 ,
                                  width: double.infinity,
                                  child: TextFormField(
                                    cursorColor: grey,
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Colors.grey, // Customize the enabled border color
                                        ),
                                      ),

                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(color: grey,),
                                      ),

                                      hintText:'Add Note' ,
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          color: grey),
                                    ),
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      // color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),//description
                              Column(
                                  children: [
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
                                                    child: Text("Add measurement",style: TextStyle(
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
                            ]  )
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