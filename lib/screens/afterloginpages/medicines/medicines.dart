import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../controls/constants/colors.dart';

class medicines extends StatefulWidget {
  const medicines({super.key});

  @override
  State<medicines> createState() => _medicinesState();
}

class _medicinesState extends State<medicines> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redclr,
        // centerTitle: true,
        title: Text(
          'Medicines',
          style: TextStyle(
              fontFamily: 'poppins',
              fontSize: MediaQuery.of(context).size.width / 20),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              // Image.asset('assets/images/meditransparencyicon.png')
            ],
          ),
        ),
      ),
    );
  }
}