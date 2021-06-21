import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class goTrip extends StatefulWidget {
  @override
  _goTrip createState() => _goTrip();
}

class _goTrip extends State<goTrip> {
  Future loadDriver() async {
    String jsonS = await rootBundle.loadString("assets/driver.json");
    final jsonRes = json.decode(jsonS);
    return jsonRes;
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Container(
            padding: const EdgeInsets.only(top: 50, left: 25),
            //  alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  const Color(0xf607a333),
                  const Color(0xff3dd284)
                ])),
            width: double.infinity,
            height: 100,
            child: Text(
              "My Trip",
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 120, left: 20),
          child: Container(
            width: 317,
            height: 40,
            decoration: BoxDecoration(
                color: Color(0xffd9ded9),
                borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3, top: 3, bottom: 3),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              const Color(0xf60aad41),
                              const Color(0xff61d5a4)
                            ])),
                    width: 150,
                    height: 50,
                    child: Text(
                      "Requested",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  "History",
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 160, right: 5),
          child: FutureBuilder(
              future: rootBundle
                  ////////DefaultAssetBundle.of(context)
                  .loadString("assets/driver.json"),
              // ignore: missing_return
              builder: (context, snapshot) {
                if (!snapshot.hasData)
                  return CircularProgressIndicator();
                else {
                  var data_s = jsonDecode(snapshot.data.toString());
                  List rev = data_s;
                  for (int i = 0; i < snapshot.data.length; i++) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(children: [
                        rev[i]["TripStatus"] == "Accepted"
                            ? Card(
                                child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_today,
                                        color: Color(0xff259505),
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("21/06/21"),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Icon(
                                        Icons.access_time_rounded,
                                        color: Color(0xff259505),
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("10:00 PM"),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 10,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: Color(0xff259505)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Drive In Road, Ahmedabad,Gujarat",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10, bottom: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 10,
                                        decoration: BoxDecoration(
                                            //borderRadius: BorderRadius.circular(100),
                                            color: Color(0xffde1d21)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "GH -2, Gandhinagar, Ahmedabad,G...",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 1,
                                      width: 300,
                                      color: Color(0xffd2cccc),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 60),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/person.jpg"),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: Color(0xff12ad34)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Ashish Bareja",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "+91 9898857777",
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            //  image: DecorationImage(
                                            //    fit: BoxFit.scaleDown,
                                            //  image: AssetImage(
                                            //    "assets/m2i8Z5d3G6d3K9N4.png")),
                                            gradient: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: [
                                                  const Color(0xf608a4c2),
                                                  const Color(0xff66d9ce)
                                                ]),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: Container(
                                            height: 10,
                                            width: 10,
                                            child: Icon(
                                              Icons.phone,
                                              color: Colors.white,
                                            )
                                            //  Image.asset("assets/m2i8Z5d3G6d3K9N4.png",)
                                            ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xff13ba20),
                                                width: 5),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/Whatsapp_Icon .jpg"),
                                                fit: BoxFit.fill),
                                            gradient: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: [
                                                  const Color(0xff218d4a),
                                                  const Color(0xf65ef177),
                                                ]),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        //child: Image.asset("assets/Whatsapp_Icon .jpg")
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          height: 40,
                                          width: 100,
                                          padding: const EdgeInsets.only(
                                              top: 8, left: 10),
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    const Color(0xf6f3811a),
                                                    const Color(0xffeaa431)
                                                  ]),
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: Text(
                                            "Accept",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          )),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    const Color(0xf6ea0b3b),
                                                    const Color(0xffe3909d)
                                                  ]),
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: Icon(
                                            Icons.clear,
                                            color: Colors.white,
                                          )
                                          //Image.asset("assets/cross.png", fit: BoxFit.cover,),

                                          )
                                    ],
                                  ),
                                ),
                              ]))
                            : Text("History"),
                        Card(
                            child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: Color(0xff259505),
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("21/06/21"),
                                SizedBox(
                                  width: 40,
                                ),
                                Icon(
                                  Icons.access_time_rounded,
                                  color: Color(0xff259505),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("10:00 PM"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color(0xff259505)),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Drive In Road, Ahmedabad,Gujarat",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 10, bottom: 5),
                            child: Row(
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      //borderRadius: BorderRadius.circular(100),
                                      color: Color(0xffde1d21)),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "GH -2, Gandhinagar, Ahmedabad,G...",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 1,
                                width: 300,
                                color: Color(0xffd2cccc),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 60),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/person.jpg"),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color(0xff12ad34)),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Ashish Bareja",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "+91 9898857777",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      //  image: DecorationImage(
                                      //    fit: BoxFit.scaleDown,
                                      //  image: AssetImage(
                                      //    "assets/m2i8Z5d3G6d3K9N4.png")),
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            const Color(0xf608a4c2),
                                            const Color(0xff66d9ce)
                                          ]),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Container(
                                      height: 10,
                                      width: 10,
                                      child: Icon(
                                        Icons.phone,
                                        color: Colors.white,
                                      )
                                      //  Image.asset("assets/m2i8Z5d3G6d3K9N4.png",)
                                      ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xff13ba20), width: 5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/Whatsapp_Icon .jpg"),
                                          fit: BoxFit.fill),
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            const Color(0xff218d4a),
                                            const Color(0xf65ef177),
                                          ]),
                                      borderRadius: BorderRadius.circular(100)),
                                  //child: Image.asset("assets/Whatsapp_Icon .jpg")
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                    height: 40,
                                    width: 100,
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 10),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              const Color(0xf6f3811a),
                                              const Color(0xffeaa431)
                                            ]),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Text(
                                      "Accept",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              const Color(0xf6ea0b3b),
                                              const Color(0xffe3909d)
                                            ]),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Icon(
                                      Icons.clear,
                                      color: Colors.white,
                                    )
                                    //Image.asset("assets/cross.png", fit: BoxFit.cover,),

                                    )
                              ],
                            ),
                          ),
                        ]))
                      ]),
                    );
                  }
                }
              }),
        ),
      ],
    ));
  }
}

class morePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Center(
      child: Text("More"),
    );
  }
}
