import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:shopping_app/linden_page.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FilttersPage extends StatefulWidget {
  const FilttersPage({super.key});

  @override
  State<FilttersPage> createState() => _FilttersPageState();
}

class _FilttersPageState extends State<FilttersPage> {
  List data = [
    {"img": "asset/juice.png", "name": "juice"},
    {"img": "asset/honey.png", "name": "honey"},
    {"img": "asset/food.png", "name": "food"},
    {"img": "asset/wine.png", "name": "wine"},
    {"img": "asset/honey.png", "name": "water"},
  ];

  List color=[
    Colors.cyan,
    Colors.limeAccent,
    Colors.indigo,
    Colors.blue,
    Colors.black,
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.orange,
    Colors.green,
  ];
  SfRangeValues _values = SfRangeValues(40.0, 80.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCBE57C),
        leading: Icon(
          Icons.arrow_back_ios_outlined,
          size: 25,
          color: Colors.black,
        ),
        title: Text(
          "Filtters",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w200),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          Icon(
            Icons.abc,
            size: 25,
            color: Colors.black,
          )
        ],
      ),
      backgroundColor: Color(0xFFCBE57C),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Catagory",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  data[index]["img"],
                                ),
                              ),
                            ),
                          Text(
                            data[index]["name"].toString(),
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LindenPage()));
              },
              child: Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Colors",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: GridView.builder(
                            shrinkWrap: true,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 10,
                            ),
                            itemCount: 20,
                            itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      radius: 20,
                                    ),
                                  );
                                }),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
           Container(
             height: 100,
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Colors.white,
             ),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Pricing",style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.w800,
                   ),),
                   SfRangeSlider(
                     min: 0.0,
                     max: 100.0,
                     values: _values,
                     interval: 20,
                     showTicks: true,
                     showLabels: true,
                     enableTooltip: true,
                     minorTicksPerInterval: 1,
                     onChanged: (SfRangeValues values){
                       setState(() {
                         _values = values;
                       });
                     },
                   ),
                 ],
               ),
             ),
           )
          ],
        ),
      ),
    );
  }
}
