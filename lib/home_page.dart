
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homr page"),
        centerTitle: true,
      ),
      drawer: Drawer(
        elevation: 20,
        child: Column(
          children: [
            Stack(
              children: [
                // Container(height:MediaQuery.of(context).size.height,
                //   decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1356565274/photo/modern-abstract-wavy-background.jpg?s=612x612&w=0&k=20&c=No67IAf0B1P6THxPiU2zI9zPVp6J6wEuf_8zEs3iHKw="),fit: BoxFit.cover)),),
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage("https://cdn.shopify.com/s/files/1/1192/6800/products/HAWC-2027_4_1200x.jpg?v=1651475492"),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Clock",
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    Divider(color: Colors.black,),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('digital');
                      },
                      child: Row(
                        children: const [
                          CircleAvatar(radius: 20,
                            backgroundImage: NetworkImage("https://m.media-amazon.com/images/I/61MuSYQ7yhL._SL1500_.jpg"),
                          ),
                          Spacer(),
                          Text("Digital Watch",
                            style: TextStyle(color: Colors.black),),

                        ],
                      ),
                    ),
                    Divider(color: Colors.black),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('analog');

                      },
                      child: Row(
                        children: const [
                          CircleAvatar(radius: 20,
                            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ21XmlCw_Gnomz_VNSQgAMcIUW6Jz1EMh2mg&usqp=CAU"),
                          ),
                          Spacer(),
                          Text(" Analog Watch",
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),
                    Divider(color: Colors.black),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('strap');
                      },
                      child: Row(
                        children: const [
                          CircleAvatar(radius: 20,
                            backgroundImage: NetworkImage("https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MQE93_VW_PF+watch-49-titanium-ultra_VW_PF_WF_SI+watch-face-49-ocean-ultra_VW_PF_WF_SI?wid=2000&hei=2000&fmt=png-alpha&.v=1661199908659%2C1660927567677%2C1660927561170"),
                          ),
                          Spacer(),
                          Text("Strap Watch",
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ) ,
                    Divider(color: Colors.black,),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-vector/blue-wall-clock-background_1035-502.jpg?w=2000"),
          fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Please select clock in drawer..",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
