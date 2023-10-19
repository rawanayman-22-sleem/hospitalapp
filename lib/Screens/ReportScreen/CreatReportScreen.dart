import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Constant/color.dart';
import 'ReportDetScreen.dart';



class CreatRepScreen extends StatefulWidget {
   CreatRepScreen({super.key});


  @override
  State<CreatRepScreen> createState() => _CreatRepScreenState();
}

class _CreatRepScreenState extends State<CreatRepScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool _obscureText = true;
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
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.black)),

        title: Padding(
          padding: const EdgeInsets.only(left: 80,top: 10),
          child: Text("Create Report",style: TextStyle(
            color: Colors.black,fontSize: 18,
          ),),
        ),

      ),
      backgroundColor: wihte,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  hintText:'Report Name' ,
                  hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: grey),
                ),
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: _isHidden,
              cursorColor: lightgreen,
              maxLines: 1,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
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
                    hint: Text(' Select Employee'),
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

                labelText: ' Select Employee',
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
              child: TextFormField(
                cursorColor: grey,
                maxLines: 5,
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
                  hintText:'Description' ,
                  hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: grey),
                ),
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
          ),//description
          Padding(padding: const EdgeInsets.all(12),
            child:Container(
              height:300 ,
              width: double.infinity,
              child: DottedBorder(borderType: BorderType.RRect,
                  radius: Radius.circular(10),
                  dashPattern: [20, 20],
                  color: grey,
                  strokeWidth: 2,
                  child: Card(
                    elevation: 0,
                    color: wihte,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Image.asset("asset/image/Group 4482.png")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10,left: 20,right: 5),
                          child:Container(
                            height: 40,
                            width: 168,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: wihte,
                                elevation:0,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: lightgreen,
                                  ),
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportDetScreen()));
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(color: lightgreen,Icons.add),
                                  Text('Upload Image',style: TextStyle(
                                      fontSize: 10,color: lightgreen
                                  ),
                                  ),
                                  // <-- Text
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ), //dott card
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: InkWell(
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
                            padding: const EdgeInsets.all(13),
                            child: Center(
                              child: Text("Create Report",style: TextStyle(
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
    );
  }
}