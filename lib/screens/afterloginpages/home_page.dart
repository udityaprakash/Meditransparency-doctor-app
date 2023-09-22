import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../controls/constants/colors.dart';
import '../components.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:AppBar(
        leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.widgets_outlined,size: 30,),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
        backgroundColor: redclr,
        // centerTitle: true,
        title: Text(
          'Meditransparency',
          style: TextStyle(
              fontFamily: 'poppins',
              fontSize: size.width / 20),
        ),
        actions: [
            IconButton(
              icon: const Icon(Icons.account_circle),
              iconSize: 30,
              onPressed: () async {
                try{
                  // Navigator.pushReplacementNamed(context, 'firstpage');
    
                  }catch(e){
                }
              },
            ),
          ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   width: size.width,
              //   height: 100,
              //   margin: const EdgeInsets.all(15.0),
              //   padding: const EdgeInsets.all(3.0),
              //   decoration: BoxDecoration(
              //     border: Border.all(color: redclr,width: 2),
              //     borderRadius:BorderRadius.all(Radius.circular(4)),
              //   ),
                
              //   ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Tile( Icon(Icons.personal_injury, size: 70,), 'Patient', context, (){
                    Navigator.pushNamed(context, '/patient');
                  }),
                  Tile( Icon(Icons.biotech,size: 70,), 'Laboratory', context, (){
                    Navigator.pushNamed(context, '/laboratory_page');
                  }),

                ]
                
              ),
              // SizedBox(height: 40,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children:[
              //     // Tile( Icon(Icons.diversity_1, size: 70,), 'Consult', context, (){
              //     //   Navigator.pushNamed(context, '/consult_page');
              //     // }),
              //     // Tile( Icon(Icons.receipt_long,size: 70,), 'Bills', context, (){
              //     //   Navigator.pushNamed(context, '/bill_page');
              //     // }),

              //   ]
                
              // ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Tile( Icon(Icons.medication_liquid, size: 70,), 'Medicines', context, (){
                    Navigator.pushNamed(context, '/medicines');
                  }),
                  Tile( Icon(Icons.analytics_rounded,
                  size: 70,), 'Live Monitor', context, (){
                    Navigator.pushNamed(context, '/live_monitor');
                  }),
                ]
                
              ),
              SizedBox(height: 40,),

            ]),


        )
       ),
       drawer: Container(
                child: Center(
                  child: textgenerator('Menu options will\n appear here once\n developer updates', 20, 'Poppins', 300, lightredclr)
                ),
              ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 60,
            color: redclr,
            child: textgenerator('sponsers', 13, 'Poppins', 100, lightredclr)
            ,)),      
      );
  }
}