import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../controls/constants/colors.dart';

class bill_page extends StatefulWidget {
  const bill_page({super.key});

  @override
  State<bill_page> createState() => _bill_pageState();
}

class _bill_pageState extends State<bill_page> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redclr,
        // centerTitle: true,
        title: Text(
          'Bills',
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