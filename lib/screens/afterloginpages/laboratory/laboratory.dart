import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../controls/constants/colors.dart';

class laboratory_page extends StatefulWidget {
  const laboratory_page({super.key});

  @override
  State<laboratory_page> createState() => _laboratory_pageState();
}

class _laboratory_pageState extends State<laboratory_page> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redclr,
        // centerTitle: true,
        title: Text(
          'Laboratory',
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