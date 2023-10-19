

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../Component/CustomButton.dart';
import '../../Component/CustomText.dart';
import '../../Constant/NavigatorService.dart';
import '../../Constant/color.dart';
import '../Doctor/SpitialistDoc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool _obscureText = true;
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 55,
                  ),
                  Center(
                    child: Image.asset(
                      "asset/image/Layer 1.png",
                      height: MediaQuery.of(context).size.height / 10,
                    ),),
                  Center(
                      child: CustomText(
                        text: 'Welcome back !',
                        fontSize: 2000,
                        color: lightgreen,
                        fontWeight: FontWeight.w600,
                      )),
                  Center(
                    child: CustomText(
                      text: 'To Continue , Login Now',
                      fontSize: 100,
                      color: grey,
                      fontWeight: FontWeight.w600,
                      height: MediaQuery.of(context).size.height / 400,
                    ),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      cursorColor: lightgreen,
                      maxLines: 1,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color:
                            Colors.grey, // Customize the enabled border color
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: lightgreen, // Customize the focused border color
                          ),
                        ),
                        prefixIcon: Icon(Icons.phone, color: lightgreen),
                        hintText: 'Phone number',
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
                        color: Colors.black,
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(11),
                        // Limit input to 11 characters
                      ],
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your phone';
                        }
                        if (value.length != 11) {
                          return 'your number isnt correct';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:  TextFormField(
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

                        prefixIcon: Icon(Icons.lock, color: lightgreen),
                        suffixIcon:  InkWell(
                          child: Icon(
                            _isHidden ?
                            Icons.visibility :
                            Icons.visibility_off,
                          ),
                        ),
                        hintText: ' Password',
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
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return "Password must be not Empty";
                        } else if (!value.trim().contains(RegExp(r'[A-Z]'))) {
                          return "Password must Contains UpperCase Letter";
                        } else if (!value.trim().contains(RegExp(r'[0-9]'))) {
                          return "Password must Contains Digit";
                        } else if (!value.trim().contains(RegExp(r'[a-z]'))) {
                          return "Password must Contains LowerCase Letter";
                        } else if (!value
                            .trim()
                            .contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                          return "Password must Contains Special Character";
                        } else if (value.trim().length < 8) {
                          return "Password must be more 8 Letters";
                        } else if (!RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~.]).{8,}$')
                            .hasMatch(value.trim())) {
                          return "Password is not Valid";
                        }
                        return null;
                      },
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                            'Forgot Password ?',
                            style: TextStyle(
                              fontSize: 18,
                              color: black,
                            ) )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: CustomButton(
                        buttonColor: lightgreen,
                        borderRadius: 7,
                        onPressed: () {
                      if (formKey.currentState!.validate()) {
                        NavigationService.instance.navigationKey!.currentState!
                            .pushNamed("SpitialistDoc");

                        // Navigator.push(context, MaterialPageRoute(
                        // builder: (context) => SpitialistDoc()),);
                      }
                        },

                        widget: Padding(
                          padding: const EdgeInsets.all(20),
                          child: CustomText(
                            text: 'Login',
                            fontSize: 20,
                            color: wihte,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}