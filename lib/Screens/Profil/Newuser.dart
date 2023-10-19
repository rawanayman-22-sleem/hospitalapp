import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Component/CustomButton.dart';
import '../../Component/CustomText.dart';
import '../../Constant/color.dart';
import '../Employee/EmployeeScreen.dart';
import 'ProfileScreen.dart';


class Newuser extends StatelessWidget {
  Newuser({Key? key}) : super(key: key);
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => EmployeeScreen()),);
            },
            child: Icon(Icons.arrow_back,color: Colors.black)),

        title: Padding(
          padding: const EdgeInsets.only(left: 80,top: 10),
          child: Text("New user",style: TextStyle(
            color: grey,fontSize: 18,
          ),),
        ),

      ),

      backgroundColor: wihte,
      body:ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(

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

                  prefixIcon: Icon(Icons.person_outline_outlined, color: lightgreen),
                  labelText: ' First name',
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
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
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

                  prefixIcon: Icon(Icons.person_outline_outlined, color: lightgreen),
                  labelText: ' Last name',
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
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.transgender_sharp, color: lightgreen),
                      ),
                      hint: Text(' Statues'),
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
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                            Icons.local_hospital_outlined, color: lightgreen),
                      ),
                      hint: Text(' Statues'),
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

                  labelText: ' Statues',
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
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.date_range, color: lightgreen),
                      ),
                      hint: Text(' Statues'),
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

                  labelText: ' Statues',
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
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                            Icons.favorite_border_outlined, color: lightgreen),
                      ),
                      hint: Text(' Statues'),
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

                  labelText: ' Statues',
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
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
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

                  prefixIcon: Icon(Icons.phone, color: lightgreen),
                  labelText: ' Phone number',
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
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
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

                  prefixIcon: Icon(Icons.email_outlined, color: lightgreen),
                  labelText: ' E-mail',
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
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                // obscureText: _isHidden,
                // cursorColor: lightgreen,
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

                  prefixIcon: Icon(Icons.location_on_outlined, color: lightgreen),
                  labelText: ' Adress',
                  hintTextDirection: TextDirection.rtl,
                  hintStyle: TextStyle(
                      fontSize: 13,
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
                //  isPassword: true,
                textInputAction: TextInputAction.next,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                // obscureText: _isHidden,
                // cursorColor: lightgreen,
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

                  prefixIcon: Icon(Icons.lock_outline, color: lightgreen),
                  labelText: ' Password',
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

            SizedBox(
              height: 20,
            ),


            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: CustomButton(
                  buttonColor: lightgreen,
                  borderRadius: 7,
                  onPressed: () {
                   // if (formKey.currentState!.validate())
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => ProfileScreen()),);
                  },
                  widget: Padding(
                    padding: const EdgeInsets.all(20),
                    child: CustomText(
                      text: 'Create user',
                      fontSize: 20,
                      color: wihte,
                    ),
                  )
              ),
            ),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 20,
            ),
          ]
      ),
    );
  }
}