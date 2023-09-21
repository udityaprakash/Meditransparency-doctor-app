import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../controls/constants/colors.dart';
import '../../components.dart';

class consult_page extends StatefulWidget {
  const consult_page({super.key});

  @override
  State<consult_page> createState() => _consult_pageState();
}

class _consult_pageState extends State<consult_page> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redclr,
        // centerTitle: true,
        title: Text(
          'CONSULT',
          style: TextStyle(
              fontFamily: 'poppins',
              fontSize: MediaQuery.of(context).size.width / 20),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
            width: size.width,
            // height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                recTile( 'cardiology.svg', 'Cardiology', context, (){
                      // Navigator.pushNamed(context, '/patient');
                }),
                SizedBox(height: 10,),
                recTile( 'neurology.svg', 'Neurology', context, (){
                      // Navigator.pushNamed(context, '/patient');
                }),
                SizedBox(height: 10,),
                recTile( 'nephrology.svg', 'Nephrology', context, (){
                      // Navigator.pushNamed(context, '/patient');
                }),
                SizedBox(height: 10,),
                recTile( 'urology.svg', 'Urology', context, (){
                      // Navigator.pushNamed(context, '/patient');
                }),
                SizedBox(height: 10,),
                recTile( 'orthopedics.svg', 'Orthopedics', context, (){
                      // Navigator.pushNamed(context, '/patient');
                }),
                SizedBox(height: 10,),
                recTile( 'gynecology.svg' ,'Gynaecology', context, (){
                      // Navigator.pushNamed(context, '/patient');
                }),
                SizedBox(height: 10,),
                recTile('gastroenterology.svg' , 'Gastroenterology', context, (){
                      // Navigator.pushNamed(context, '/patient');
                }),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 60,
            color: redclr,
            child: textgenerator('ads will be displayed here', 13, 'Poppins', 100, lightredclr)
            ,)), 
    );
  }
}
