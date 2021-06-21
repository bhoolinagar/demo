import 'package:demo/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mytrip.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _pageIndex = 0;
  //PageController _pageController;

  List<Widget> _widgetOpetions = <Widget>[
    Home(),
    goTrip(),
    MessagePage(),
    morePage()
    //  add_page_1(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
      //    backgroundColor: const Color(0xff48d950), title: Text("My Trip")),
      body: Center(child: _widgetOpetions.elementAt(_pageIndex)), //Container(
      // child: Stack(
      //  children: [
      ///  Padding(
      // padding: const EdgeInsets.only(top: 0),
      //child: Container(
      //padding: const EdgeInsets.only(top: 40, left: 20),
      //  alignment: Alignment.centerLeft,
      //decoration: BoxDecoration(
      //  gradient: LinearGradient(
      //    begin: Alignment.topLeft,
      //  end: Alignment.bottomRight,
      // colors: [
      //   const Color(0xf607a333),
      // const Color(0xff3dd284)
      //])),
      //   width: double.infinity,
      // height: 100,
      //child: Text(
      // "My Trip",
      //style: TextStyle(
      //color: Colors.black,
      //       fontSize: 20,
      //    ),
      // ),
      //    ),
      //),
      // Padding(
      // padding: const EdgeInsets.only(top: 130, left: 30),
      //  child: Container(
      //  width: 300,
      // height: 40,
      //   decoration: BoxDecoration(
      //     color: Color(0xffd5e0d5),
      //   borderRadius: BorderRadius.circular(10.0)),
      //child: Row(
      // crossAxisAlignment: CrossAxisAlignment.center,
      //  children: [
      //  Padding(
      //   padding: const EdgeInsets.only(left: 3, top: 3, bottom: 3),
      // child: Container(
      //  alignment: Alignment.center,
      //decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10.0),
      //  gradient: LinearGradient(
      //    begin: Alignment.topLeft,
      //  end: Alignment.bottomRight,
      //colors: [
      //const Color(0xf60aad41),
      //   const Color(0xff61d5a4)
      //   ])),
      //  width: 150,
      // height: 50,
      //child: Text(
      //"Requested",
      //    style: TextStyle(
      //   color: Colors.black38,
      //   fontSize: 15,
      // ),
      //   ),
      //),
      //),
      //   SizedBox(
      //   width: 80,
      //      ),
      //    Text(
      //    "History",
      //        )
      //    ],
      // ),
      //),
      // ),
      //  Padding(
      //  padding: const EdgeInsets.only(left: 20, top: 190, right: 20),
      // child: ListView(
      // children: [
      //  Card(
      //  child: Column(
      //   children: [
      //   Padding(
      //   padding: const EdgeInsets.all(8.0),
      //  child: Row(
      //  children: [
      //  Icon(
      //  Icons.calendar_today_outlined,
      //color: Colors.green,
      // size: 15,
      // ),
      //  SizedBox(
      //  width: 10,
      //     ),
      //   Text("19/06/2021"),
      //  SizedBox(
      //  width: 40,
      // ),
      // SizedBox(
      //width: 10,
      // ),
      //Icon(
      //Icons.access_time,
      //      color: Colors.green,
      //    size: 15,
      // ),
      //    Text("10:00 PM"),
      // ],
      //    ),
      //  ),
      // Padding(
      /// padding: const EdgeInsets.all(6.0),
      //     child: Row(
      //     children: [
      //     Container(
      //     height: 10,
      //   width: 10,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(100),
      // color: Color(0xd13ce055)),
      //      ),
      //    SizedBox(
      //    width: 10,
      //  ),
      //Text(
      //  "Drive In Road, Ahmedabad,Gujarat",
      //style: TextStyle(
      //  fontSize: 15,
      //   ),
      //   ),
      //    ],
      // ),
      //     ),
      //   Padding(
      //   padding: const EdgeInsets.all(8.0),
      //     child: Row(
      //     children: [
      //     Container(
      //     height: 10,
      //   width: 10,
      // decoration: BoxDecoration(
      // borderRadius: BorderRadius.circular(100),
      //   color: Color(0xffe51e2d)),
      //     ),
      //   SizedBox(
      //   width: 10,
      // ),
      // Text(
      // "GH -2, Gandhinagar, Ahmedabad,G...",
      // style: TextStyle(
      // fontSize: 15,
      // ),
      //),
      // ],
      // ),
      //    ),
      //  Divider(),
      // Padding(
      // padding: const EdgeInsets.all(10.0),
      //    child: Row(
      //    children: [
      //    Container(
      //    height: 70,
      //  width: 70,
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage("assets/person.jpg"),
      //   fit: BoxFit.fill),
      // borderRadius: BorderRadius.circular(100),
      // color: Color(0xff12ad34)),
      //   ),
      // SizedBox(
      // width: 20,
      //    ),
      //  Column(
      //  children: [
      //  Text(
      //  "Ashish Bareja",
      //    style: TextStyle(
      //   fontWeight: FontWeight.bold,
      //   fontSize: 16,
      // ),
      //  ),
      //SizedBox(
      //  height: 5,
      //    ),
      //  Text(
      //  "+91 9898857777",
      //      style: TextStyle(
      //      fontSize: 16,
      //   ),
      // ),
      //     ],
      //  ),
      //   ],
      //   ),
      //   ),
      //  SizedBox(
      //   height: 20,
      //   ),
      // Padding(
      // padding: const EdgeInsets.all(12.0),
      //    child: Row(
      //    children: [
      //    Container(
      //    height: 40,
      //   width: 40,
      // decoration: BoxDecoration(
      //  image: DecorationImage(
      //    fit: BoxFit.scaleDown,
      //  image: AssetImage(
      //    "assets/m2i8Z5d3G6d3K9N4.png")),
      //   gradient: LinearGradient(
      //     begin: Alignment.topLeft,
      //   end: Alignment.bottomRight,
      // colors: [
      //const Color(0xf608a4c2),
      //const Color(0xff66d9ce)
      ///     ]),
      //  borderRadius: BorderRadius.circular(100)),
      //      child: Container(
      //        height: 10,
      //      width: 10,
      //    child: Icon(
      //    Icons.phone,
      //  color: Colors.white,
      ///    )
      //  Image.asset("assets/m2i8Z5d3G6d3K9N4.png",)
      // ),
      //      ),
      //    SizedBox(
      //    width: 20,
      // ),
      //  Container(
      //  height: 40,
      //width: 40,
      //    decoration: BoxDecoration(
      // image: DecorationImage(
      //   fit: BoxFit.contain,
      // image: AssetImage(
      //   "assets/whatsapp-png-23851.png")),
      ///      gradient: LinearGradient(
      ///       begin: Alignment.topLeft,
      //    end: Alignment.bottomRight,
      //  colors: [
      // const Color(0xff218d4a),
      //  const Color(0xf65ef177),
      //     ]),
      //          borderRadius: BorderRadius.circular(100)),
      //  child:
      //        Image.asset("assets/whatsapp-png-23851.png"),
      //  ),
      //SizedBox(
      //width: 20,
      //     ),
      //   Container(
      //     height: 40,
      //   width: 90,
      //        padding:
      //          const EdgeInsets.only(top: 8, left: 10),
      //    decoration: BoxDecoration(
      //      gradient: LinearGradient(
      //        begin: Alignment.topLeft,
      //      end: Alignment.bottomRight,
      //    colors: [
      //    const Color(0xf6e37514),
      //  const Color(0xffdea83d)
      //         ]),
      //   borderRadius: BorderRadius.circular(100)),
      //         child: Text(
      //         "Accept",
      //       style: TextStyle(
      //         fontSize: 15,
      //       fontWeight: FontWeight.bold,
      //     color: Colors.white),
      //       )),
      ///   SizedBox(
      //   width: 20,
      //),
      //     Container(
      //       height: 40,
      //     width: 40,
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //       begin: Alignment.topLeft,
      //     end: Alignment.bottomRight,
      //   colors: [
      //   const Color(0xf6ea0b3b),
      // const Color(0xffe3909d)
      //     ]),
      //     borderRadius: BorderRadius.circular(100)),
      // child: Icon(
      // Icons.clear,
      //    color: Colors.white,
      // )
      //Image.asset("assets/cross.png", fit: BoxFit.cover,),
      //   ),
      //      ],
      //   ),
      // )
      //     ],
      // ),
      //    ),
      // ],
      //    ),
      //)
      //   ],
      // )),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        currentIndex: _pageIndex,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black38,
        showUnselectedLabels: true,
        selectedItemColor: Color(0xff259505),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.train_sharp),
            title: Text("Trip"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_sharp),
            title: Text("Message"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_sharp),
            title: Text("More"),
          ),
        ],
      ),
    );
  }
}
