import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../Const/color.dart';




class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
            child: Icon(Icons.arrow_back,color: black)),

        title: Padding(
          padding: const EdgeInsets.only(left: 80,top: 10),
          child: Text("Notification",style: TextStyle(
            color: black,fontSize: 18,
          ),),
        ),

      ),

      backgroundColor: wihte,
      body: SingleChildScrollView(
        child:Column(
          children: [
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
                              child: Image(image: AssetImage("asset/image/Rectangle 1941.png"),
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
                                      "You have new call from manger",style: TextStyle(
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "2:09pm",style: TextStyle(
                                fontSize: 11,
                                color: black,
                              ),
                              ),
                              Icon(Icons.circle,color: lightgreen,size: 11,)
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
        ) ,
      ),
    );
  }
}

// class NotificationScreen extends StatelessWidget {
//   const NotificationScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             icon: Icon(
//               Icons.arrow_back,
//               color: black,
//             ),
//              onPressed: () {
//             //   Navigator.of(context).pop();
//              },
//           ),
//              backgroundColor: wihte,
//             elevation: 0,
//            centerTitle: true,
//           title: Text("Notification",
//              style: TextStyle(
//             fontSize:20,
//                color: grey
//         )),
//        ),
//     backgroundColor: wihte,
//     body:ListView(
//     children: [
//
//       Row (
//       children: [
//       ClipRRect(
//          borderRadius: BorderRadius.all(Radius.circular(0.0)),
//           child: Image.asset('asset/image/Rectangle 1906.png'),
//          ),
//              const SizedBox(
//                width: 15,
//                height: 5,
//             ),
//
//            Column(
//              mainAxisSize: MainAxisSize.min,
//            children: [
//                 Text(
//               "  Ebrahem Khaled" ,
//                style:  Theme.of(context)
//                 .textTheme
//                 .headline3!
//                 .copyWith(color: black , fontSize: 20 ,height: 4
//                    //background: wihte
//                 )),
//
//              const SizedBox(
//                width: 15,
//                height: 5,
//              ),
//              Text(
//              "You have new call from manger",
//             style:  Theme.of(context)
//                .textTheme
//                .subtitle1!
//                .copyWith(color: grey , fontSize: 16,),
//              )
//
//       ],
//     ),
//
//         Padding(
//           padding: const EdgeInsets.only(right: 15),
//           child: Align(
//             alignment: Alignment(307,228),
//             child: Text("02:09 pm"),
//           ),
//         ),
//            Padding(
//             padding: const EdgeInsets.only(right: 15),
//                child: Align(
//                  alignment: Alignment(5,1),
//                     child: Image.asset("asset/image/Ellipse 612.png",),)
//           )
//         ],
//           ),
//       Row (
//         children: [
//           //backgroundColor: cardshadownColor,
//           ClipRRect(
//             borderRadius: BorderRadius.all(Radius.circular(0.0)),
//             child: Image.asset('asset/image/Rectangle 1906.png'),
//           ),
//           const SizedBox(
//             width: 15,
//             height: 5,
//           ),
//
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(
//                   "  Ebrahem Khaled" ,
//                   style:  Theme.of(context)
//                       .textTheme
//                       .headline3!
//                       .copyWith(color: black , fontSize: 20 ,height: 4
//                     //background: wihte
//                   )),
//
//               const SizedBox(
//                 width: 15,
//                 height: 5,
//               ),
//               Text(
//                 "You have new task from manger",
//                 style:  Theme.of(context)
//                     .textTheme
//                     .subtitle1!
//                     .copyWith(color: grey , fontSize: 16,),
//               )
//
//             ],
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(right: 15),
//             child: Align(
//               alignment: Alignment(307,228),
//               child: Text("02:09 pm"),
//
//             ),
//
//           ),
//               Padding(
//                     padding: const EdgeInsets.only(right: 15),
//                     child: Align(
//                       alignment: Alignment(5,1),
//                       child: Image.asset("asset/image/Ellipse 612.png"),)
//
//
//           // Padding(
//           //   padding: const EdgeInsets.only(right: 15),
//           //   child: Image.asset("Rectangle 1940.png"),
//           // ),
//     ),
//     ],
//       ),
//       Row (
//         children: [
//           //backgroundColor: cardshadownColor,
//           ClipRRect(
//             borderRadius: BorderRadius.all(Radius.circular(0.0)),
//             child: Image.asset('asset/image/Rectangle 1940.png'),
//           ),
//           const SizedBox(
//             width: 15,
//             height: 5,
//           ),
//           // Container(
//           //   child: Align(
//           //     alignment:Alignment(0.60, -0.80),
//           // child: Text('2:09 pm'),
//           // ),
//           // ),
//
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(
//                   "  Ebrahem Khaled" ,
//                   style:  Theme.of(context)
//                       .textTheme
//                       .headline3!
//                       .copyWith(color: black , fontSize: 20 ,height: 4
//                   )),
//
//               const SizedBox(
//                 width: 15,
//                 height: 5,
//               ),
//               Text(
//                 "You have Medical record from analysis employee",
//                 style:  Theme.of(context)
//                     .textTheme
//                     .subtitle1!
//                     .copyWith(color: grey , fontSize: 16,height: 0),
//               )
//
//             ],
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(right: 15),
//             child: Align(
//               alignment: Alignment(307,228),
//               child: Text("02:09 pm"),
//
//             ),
//           ),
//
//         ],
//       ),
//       Row (
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.all(Radius.circular(0.0)),
//             child: Image.asset('asset/image/Rectangle 1941.png'),
//           ),
//           const SizedBox(
//
//             width: 15,
//             height: 5,
//           ),
//
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(
//                   "  Ebrahem Khaled" ,
//                   style:  Theme.of(context)
//                       .textTheme
//                       .headline3!
//                       .copyWith(color: black , fontSize: 20 ,
//                     height: 4
//                   )),
//
//               const SizedBox(
//                 width: 40,
//                 height: 5,
//               ),
//               Text(
//                 "You have New Call from Receptionist",
//                 style:  Theme.of(context)
//                     .textTheme
//                     .subtitle1!
//                     .copyWith(color: grey , fontSize: 16,),
//               )
//
//             ],
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(right: 15),
//             child: Align(
//               alignment: Alignment(307,228),
//               child: Text("02:09 pm"),
//             ),
//           ),
//
//
//
//
//           // Padding(
//           //   padding: const EdgeInsets.only(right: 15),
//           //   child: Image.asset("Rectangle 1940.png"),
//           // ),
//         ],
//       )
//     ])
//     );
//   }
// }
