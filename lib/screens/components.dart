import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import '../controls/constants/colors.dart';

Widget boldtextgenerator(
    String tex, double fontSiz, String fontfamly, Color co) {
  return Text(
    tex,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontFamily: fontfamly,
      fontSize: fontSiz,
      color: co,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget textgenerator(
    String tex, double fontSiz, String fontfamly, double weit, Color co) {
  return Text(
    tex,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontFamily: fontfamly,
      fontSize: fontSiz,
      color: co,
      fontVariations: <FontVariation>[FontVariation('wght', weit)],
    ),
  );
}

Widget buttongenerator(String quote, BuildContext context, function) {
  return ElevatedButton(
    onPressed: function,
    style: ElevatedButton.styleFrom(
      primary: redclr,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        // side: const BorderSide(
        //     color: Colors.white),
      ),
    ),
    child: Center(
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.007),
        child: Text(
          quote,
          style: TextStyle(
              letterSpacing: 1,
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              // fontVariations: <FontVariation>[FontVariation('wght', 700)],
              fontSize: MediaQuery.of(context).size.width / 22),
        ),
      ),
    ),
  );
}

Widget InputFieldgenerator(String hinttxt, BuildContext context,
    {controller, maxlines, obscure, check, Function}) {
  bool odscure;
  return Container(
    height: MediaQuery.of(context).size.height / 20,
    width: MediaQuery.of(context).size.width * 0.7,
    child: TextField(
        maxLines: 1,
        // maxLength: 9,
        obscureText: (obscure == null) ? false : true,
        autofocus: false,
        cursorColor: redclr,
        cursorHeight: 25,
        cursorOpacityAnimates: true,
        controller: controller,
        onChanged: check,
        style: TextStyle(
          color: redclr,
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300,
        ),
        decoration: fielddesign(hinttxt)),
  );
}

InputDecoration fielddesign(text) {
  return InputDecoration(
      isDense: true,
      focusColor: redclr,
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: redclr, width: 3),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: redclr),
      ),
      hintText: text,
      hintStyle: TextStyle(
          color: redclr,
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300),
      filled: true);
}

Widget Inputpassfield(String hinttxt, bool _passwordVisible, context, funct,
    {controller}) {
  return Container(
    height: MediaQuery.of(context).size.height / 20,
    width: MediaQuery.of(context).size.width * 0.7,
    child: TextField(
      maxLines: 1,
      autofocus: false,
      cursorHeight: 25,
      cursorColor: redclr,
      controller: controller,
      style: TextStyle(
        color: redclr,
        fontSize: 20,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w300,
      ),
      obscureText: _passwordVisible,
      cursorOpacityAnimates: true,
      decoration: InputDecoration(
        isDense: true,
        focusColor: redclr,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: redclr, width: 3),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: redclr),
        ),
        suffixIcon: IconButton(
          icon: Icon(_passwordVisible ? Icons.visibility_off : Icons.visibility,
              color: redclr
              // Theme.of(context).primaryColorDark,
              ),
          onPressed: funct,
        ),
        hintText: hinttxt,
        hintStyle: TextStyle(
            color: redclr,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w300),
        filled: true,
      ),
    ),
  );
}

Widget errortextgenerator(String tex, double fontS, double weit) {
  return Text(
    tex,
    style: TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontS,
      color: Colors.red,
      fontVariations: <FontVariation>[FontVariation('wght', weit)],
    ),
  );
}

Widget Textlink(String tex, double fontsiz, BuildContext context,
    double fontweit, Color co, function) {
  return TextButton(
    onPressed: function,
    child: Text(
      tex,
      style: TextStyle(
          letterSpacing: 1,
          color: co,
          fontFamily: 'Poppins',
          fontVariations: <FontVariation>[FontVariation('wght', fontweit)],
          fontSize: fontsiz),
    ),
  );
}

Widget Tile(Icon icon, String text, BuildContext context, function) {
  final size = MediaQuery.of(context).size;
  return Container(
    height: 150,
    width: 150,
    decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: redclr
          ),
    child: ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
          backgroundColor: redclr,
          
        ),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           icon,
           textgenerator(text, 18, 'Poppins',300, Colors.white)
         ],
       )
       ),
  );
}

Widget recTile(String url, String text, BuildContext context, function) {
  final size = MediaQuery.of(context).size;
  return Container(
    margin: EdgeInsets.only(left: 20, right: 20),
    height: 80,
    width: size.width,
    decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: redclr
          ),
    child: ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
          backgroundColor: redclr,
          
        ),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Row(
            children: [
           SvgPicture.asset('assets/svgs/icons/consultpageicons/'+ url , color: lightredclr,width: 50,),
           SizedBox(width: 20,),
           textgenerator(text, 18, 'Poppins',300, Colors.white)

            ],
           ),
           CircleAvatar(
            child: Icon(Icons.navigate_next,color: redclr,),
            radius: MediaQuery.of(context).size.width * 0.04, 
            backgroundColor: lightredclr,
            )
         ],
       )
       ),
  );
}
