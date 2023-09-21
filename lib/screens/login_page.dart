import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../controls/constants/colors.dart';
import 'components.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  var emailmessage = '';
  var passwordmessage = '';
  bool _passwordVisible = true;
  bool _isloading = false;
  TextEditingController _PatientIDController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Image.asset(
        'assets/images/top_notch.png',
        height: MediaQuery.of(context).size.height * 0.3,
      ),
      SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 15),
                  child: Column(
                    children: [
                      
                      CircleAvatar(child: Image.asset('assets/images/appicon.png', ),radius: MediaQuery.of(context).size.width * 0.2, backgroundColor: lightredclr,),
                      SizedBox(height: 30,),
                      boldtextgenerator('MEDITRANSPARENCY', MediaQuery.of(context).size.width/15, "Poppins", redclr),
                      SizedBox(
                        height:MediaQuery.of(context).size.width/15 ,
                      ),
                      InputFieldgenerator('Patient ID', context,
                            controller: _PatientIDController),
                      SizedBox(
                        height: 25.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            errortextgenerator(
                              emailmessage,
                              15,
                              300,
                            ),
                          ],
                        ),
                      ),
                      Inputpassfield(
                            'Password', _passwordVisible, context, () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        }, controller: _passController),
                      // Inputpassfield('Pass Key', _passwordVisible, context,
                      //     () {
                      //   setState(() {
                      //     _passwordVisible = !_passwordVisible;
                      //   });
                      // }, controller: _passController),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          errortextgenerator(passwordmessage, 15, 400),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                        child: _isloading
                            ? SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                    color: redclr))
                            : SizedBox(height: 1),
                      ),
                      SizedBox(height: 10),
                      _isloading
                          ? Container()
                          : Padding(
                            padding:
                                  const EdgeInsets.only(left: 50, right: 50),
                            // padding: const EdgeInsets.all(8.0),
                            child: buttongenerator('Sign In', context, () async {
                                {
                                  if(_PatientIDController.text!='' && _passController.text!=''){
                                    Navigator.pushReplacementNamed(context, '/home_page');
                          
                                  }else{
                                    final snackBar = SnackBar(
                                        content: const Text('Both input Fields are required'),
                                        // action: SnackBarAction(
                                        //   label: 'Undo',
                                        //   onPressed: () {
                                        //     // Some code to undo the change.
                                        //   },
                                        // ),
                                      );
                                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  }
                                }
                              }),
                          ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    ])
    );
  }
}
