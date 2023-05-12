import 'package:flutter/material.dart';

class Strap_watchs extends StatefulWidget {
  const Strap_watchs({Key? key}) : super(key: key);

  State<Strap_watchs> createState() => _Strap_watchsState();
}

class _Strap_watchsState extends State<Strap_watchs> {

  int minute=0;
  int second=0;
  int hour=0;
  myClock(){
    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        second=DateTime.now().second;
        minute=DateTime.now().minute;
        hour=DateTime.now().hour;

      });
      myClock();
    });
  }
  void initState() {
    // TODO: implement initState
    super.initState();
    myClock();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Strap Watch"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            Transform.scale(
              scale: 7,
              child: CircularProgressIndicator(
                strokeWidth: 2.25,
                color: Colors.green,
                value: DateTime.now().second/60,
              ),
            ),
            Transform.scale(
              scale: 6,
              child: CircularProgressIndicator(
                strokeWidth: 2.25,
                color: Colors.white,
                value: DateTime.now().minute/60,
              ),
            ),
            Transform.scale(
              scale: 5,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                color: Colors.orange,
                value: DateTime.now().hour/12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
