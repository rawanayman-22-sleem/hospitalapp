import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hospitalapp/Screens/Receptionist/SpitialistRecep.dart';
import '../../Const/color.dart';
import '../AnalysisEmployee/SpitialistAnaly.dart';
import '../HR/HRSpecialistScreen.dart';
import '../Manger/SpitialistManeger.dart';
import '../Nurse/SpitialistNur.dart';
import 'LoginScreen.dart';

class PrototypeMap extends StatelessWidget {
  const PrototypeMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: wihte,
        appBar:AppBar(
          backgroundColor: wihte,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: wihte, // <-- SEE HERE
            statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
            statusBarBrightness: Brightness.light, //<-- For iOS SEE HERE (dark icons)
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text("Prototype Map",style: TextStyle(
                    fontSize: 22,color: lightgreen,
                  ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20,left: 20),
                    child:TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LoginScreen()),);
                    },
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text("  Doctor  ",style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                      ),style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(lightgreen),
                        backgroundColor: MaterialStateProperty.all(wihte),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: background)
                            )
                        ),
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child:TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SpitialistRecep()),);},
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text("  Receptionist  ",style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                      ),style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(lightgreen),
                        backgroundColor: MaterialStateProperty.all(wihte),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: background)
                            )
                        ),
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child:TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SpitialistNur()),);},
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text("  Nurse  ",style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                      ),style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(lightgreen),
                        backgroundColor: MaterialStateProperty.all(wihte),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: background)
                            )
                        ),
                      ),),
                  ),

                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SpitialistAnaly()),);},
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text("  Analysis Employee  ",style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                      ),style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(lightgreen),
                        backgroundColor: MaterialStateProperty.all(wihte),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: background)
                            )
                        ),
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SpitialistManeger()),);},
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text("  Manager  ",style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                      ),style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(lightgreen),
                        backgroundColor: MaterialStateProperty.all(wihte),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: background)
                            )
                        ),
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(
                        builder: (context) => HRSpecialistScreen()),);},
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(" HR ",style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                      ),style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(lightgreen),
                        backgroundColor: MaterialStateProperty.all(wihte),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: background)
                            )
                        ),
                      ),),
                  ),

                ],
              ),

            ),
    ])
            );

   }
 }