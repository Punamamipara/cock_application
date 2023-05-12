import 'dart:math';

import 'package:flutter/material.dart';

class AnalogWatch extends StatefulWidget {
  const AnalogWatch({Key? key}) : super(key: key);

  @override
  State<AnalogWatch> createState() => _AnalogWatchState();
}

class _AnalogWatchState extends State<AnalogWatch> {
  int s=0;
  int m=0;
  int h=0;
  myClock(){
    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        s=DateTime.now().second;
        m=DateTime.now().minute;
        h=DateTime.now().hour;
      });
      myClock();
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myClock();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Analog Watch"),
        centerTitle: true,
      ),
      body: Center(
        child: Transform.rotate(
          angle: (3*pi/2),
          child: Stack(
            children: [
              ...List.generate(60, (index) => Transform.rotate(
                angle: (index/60)*(2*pi),
                child: Divider(
                  thickness: (index%5==0)?5:3,
                  color: (index%5==0)?Colors.red:Colors.white,
                  endIndent: MediaQuery.of(context).size.width*.95,
                ),
              )),
              Transform.rotate(
                angle: (s/60)*(2*pi),
                child: Divider(
                  thickness: 2,
                  color: Colors.white,
                  indent: MediaQuery.of(context).size.width*.5,
                ),
              ),
              Transform.rotate(
                angle: (m/60)*(2*pi),
                child: Divider(
                  thickness: 3,
                  color: Colors.white,
                  indent: MediaQuery.of(context).size.width*.5,
                  endIndent: MediaQuery.of(context).size.width*.1,
                ),
              ),
              Transform.rotate(
                angle: (h/12)*(2*pi),
                child: Divider(
                  thickness: 5,
                  color: Colors.white,
                  indent: MediaQuery.of(context).size.width*.5,
                  endIndent: MediaQuery.of(context).size.width*.15,

                ),
              )

            ],

          ),
        ),
      ),
    );
  }
}
