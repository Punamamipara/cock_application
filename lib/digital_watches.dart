import 'package:flutter/material.dart';

class Digital_watches extends StatefulWidget {
  const Digital_watches({Key? key}) : super(key: key);


  State<Digital_watches> createState() => _Digital_watchesState();
}

class _Digital_watchesState extends State<Digital_watches> {
  void initState(){
    myClock();
    weekDay();
  }
  int second=0;
  int hour=0;
  int minute=0;
  int mark=0;
  List months =
   ['jan', 'feb', 'mar', 'apr', 'may','jun','jul','aug','sep','oct','nov','dec'];
  var now = new DateTime.now();
  myClock(){
    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        second=DateTime.now().second;
        minute=DateTime.now().minute;
        hour=DateTime.now().hour;
        mark=DateTime.now().weekday;

      });
      myClock();
    });
  }
  weekDay() {
    switch (mark) {
      case 1 : // Enter this block if mark == 0
        print("monday");
        break;
      case 2 : // Enter this block if mark == 0
        print("Tuesday");
        break;
      case 3 : // Enter this block if mark == 0
        print("Wednesday");
        break;
      case 4 : // Enter this block if mark == 0
        print("Thuesday");
        break;
      case 5 : // Enter this block if mark == 0
        print("Friday");
        break;
      case 6 : // Enter this block if mark == 0
        print("Saturday");
        break;
      case 7 : // Enter this block if mark == 0
        print("Sunday");
        break;
      default :
        print("Enter valid number");
        break;
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Digital Watches"),
        centerTitle: true,
      ),
      // floatingActionButton: FloatingActionButton(onPressed: (){myClock();},child: Icon(Icons.lock_clock_sharp),),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}",style: TextStyle(fontSize: 14,color: Colors.white),),
            Text("${DateTime.now().hour}:${DateTime.now().minute}",style: TextStyle(fontSize: 35,color: Colors.white)),

            // weekDay(),
            // Text("${DateTime.now().weekday}",style: TextStyle(fontSize: 35,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
// :${DateTime.now().second}
//
//
//
// print(months[current_mon-1]);