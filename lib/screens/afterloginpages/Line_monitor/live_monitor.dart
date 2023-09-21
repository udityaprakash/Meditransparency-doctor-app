import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../controls/constants/colors.dart';

class live_monitor extends StatefulWidget {
  const live_monitor({super.key});

  @override
  State<live_monitor> createState() => _live_monitorState();
}

class _live_monitorState extends State<live_monitor> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redclr,
        // centerTitle: true,
        title: Text(
          'Live Monitor',
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