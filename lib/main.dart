import 'package:flutter/material.dart';
import 'package:hospitalapp/Screens/Manger/SpitialistManeger.dart';

import 'Screens/AnalysisEmployee/CaseAnaly.dart';
import 'Screens/Doctor/RequestDoc.dart';
import 'Screens/FirstScreens/Loading.dart';
import 'Screens/HR/HRSpecialistScreen.dart';
import 'Screens/Manger/TaskDetails4.dart';
import 'Screens/Nurse/SpitialistNur.dart';
import 'Screens/Receptionist/SpitialistRecep.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SpitialistRecep(),
    );
  }
}


