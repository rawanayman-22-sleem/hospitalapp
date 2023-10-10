import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hospitalapp/Screens/Receptionist/SpitialistRecep.dart';

import '../../Const/color.dart';

class CreateCallRecep extends StatelessWidget {
  CreateCallRecep({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool _isHidden = true;
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
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,color: Colors.black)),

          title: Padding(
            padding: const EdgeInsets.only(left: 80,top: 10),
            child: Text("Create Call",style: TextStyle(
              color: grey,fontSize: 18,
            ),),
          ),

        ),


        backgroundColor: wihte,
        body:ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
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
                      hintText:'Patient Name' ,
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
              Padding(
                padding: const EdgeInsets.all(12),
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
                      hintText:'Age' ,
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
              Padding(
                padding: const EdgeInsets.all(12),
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
                      hintText:'Phone Number' ,
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

              Padding(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  obscureText: _isHidden,
                  cursorColor: lightgreen,
                  maxLines: 1,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color:
                        Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: lightgreen,
                      ),
                    ),

                    suffixIcon: InkWell(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                        ),
                        hint: Text(' Select Doctor'),
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

                    labelText: ' Select Doctor',
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: grey),
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
                                  padding: const EdgeInsets.all(13),
                                  child: Center(
                                    child: Text("Create Report",style: TextStyle(
                                      color: wihte,
                                      fontSize: 14,
                                    ),
                                    ),
                                  ),
                                ),

                              ]
                          ),
                        )
                    )
                ),

            ]
        )
    );

  }
}