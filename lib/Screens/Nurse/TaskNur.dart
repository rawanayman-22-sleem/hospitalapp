import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:hospitalapp/Screens/Nurse/SpitialistNur.dart';
import '../../Constant/color.dart';
import '../ReportScreen/ReportDetScreen.dart';
import 'TaskDetails5.dart';


class TasksNur extends StatefulWidget {
  const TasksNur({super.key});

  @override
  State<TasksNur> createState() => _TasksNurState();
}

class _TasksNurState extends State<TasksNur> {

  var dateTime;
  TextEditingController dateTimeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: wihteshadow, // <-- SEE HERE
          statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
          statusBarBrightness: Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        backgroundColor: wihteshadow,
        elevation: 0,
        leading: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SpitialistNur()),);
            },
            child: Icon(Icons.arrow_back,color: black)),

        title: Padding(
          padding: const EdgeInsets.only(left: 80,top: 10),
          child: Text("Tasks",style: TextStyle(
            color: Colors.black,fontSize: 18,
          ),),
        ),
      ),
      backgroundColor: wihteshadow,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    readOnly: true,
                    controller: dateTimeController,
                    onTap: () {
                      FocusScope.of(context).requestFocus(new FocusNode());
                      DatePicker.showDatePicker(
                        context, currentTime: DateTime.now(),
                        locale: LocaleType.en,
                        maxTime: DateTime(2030, 1, 1),
                        minTime: DateTime(DateTime.now().year, DateTime.now().month,
                            DateTime.now().day),
                        onChanged: (data) {
                          setState(() {
                            dateTime = "${data.year}/${data.month}/${data.day}";
                            dateTimeController.text = dateTime;
                          });
                        },
                        onConfirm: (data) {
                          setState(() {
                            dateTime = "${data.day}.${data.month}.${data.year}";
                            dateTimeController.text = dateTime;
                          });
                        },
                      );
                    },
                    maxLines: 1,
                    decoration: InputDecoration(
                      suffixIcon: Image.asset("asset/image/Group 2879.png"),
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
                      hintText:'Tasks Name' ,
                      //labelText: 'Report Name',
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
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> TaskDetails5 ()));
                  },
                  child: Image.asset("asset/image/Group 2868.png"))
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => TaskDetails5()),);

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation:10,
                      color: wihte,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: wihte,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(0)),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset("asset/image/Group 2877 (2).png"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15,top: 8),
                                      child: Text("Task Name",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),),
                                    ),

                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 20,right: 5),
                                  child:Container(
                                    height: 30,
                                    width: 75,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: orangprocess.withOpacity(0.3),
                                        elevation:0,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: orangprocess.withOpacity(0.3),
                                          ),
                                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>TaskDetails5()));
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text('Procees',style: TextStyle(
                                              fontSize: 10,color: orangprocess
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("asset/image/Group 4508.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15,top: 8,),
                                  child: Text("24 . 04 . 2021",style: TextStyle(
                                    fontSize: 14,color: Colors.black,
                                  ),),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),//card process
                InkWell(
                  onTap: (){

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation:10,
                      color: wihte,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: wihte,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(0)),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset("asset/image/Group 2877 (2).png"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15,top: 8),
                                      child: Text("Report Name",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),),
                                    ),

                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 20,right: 5),
                                  child:Container(
                                    height: 30,
                                    width: 75,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: greenbotton.withOpacity(0.3),
                                        elevation:0,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: greenbotton.withOpacity(0.3),
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
                                          Text('Finished',style: TextStyle(
                                              fontSize: 10,color: greenbotton
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("asset/image/Group 4508.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15,top: 8,),
                                  child: Text("24 . 04 . 2021",style: TextStyle(
                                    fontSize: 14,color: Colors.black,
                                  ),),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),//scard finished

              ],
            ),
          ),
        ],
      ),
    );
  }
}