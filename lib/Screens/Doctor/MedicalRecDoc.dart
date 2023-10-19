import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hospitalapp/Screens/Doctor/SpitialistDoc.dart';

import '../../Constant/color.dart';


class MedicalRecDoc extends StatefulWidget {
  const MedicalRecDoc({Key? key}) : super(key: key);

  @override
  State<MedicalRecDoc> createState() => _MedicalRecDocState();
}

class _MedicalRecDocState extends State<MedicalRecDoc> {

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
              child: Icon(Icons.arrow_back,color: black)),

          title: Padding(
            padding: const EdgeInsets.only(left: 80,top: 10),
            child: Text("Medical Record",style: TextStyle(
              color: Colors.black,fontSize: 18,
            ),),
          ),

        ),
        backgroundColor: wihte,
        body:
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
                      labelText: "Add Note",
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
            ])
    );



  }
}