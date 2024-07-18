import 'package:flutter/material.dart';
import 'package:shopping_app/like_page.dart';
import 'package:shopping_app/sale_page.dart';

class LindenPage extends StatefulWidget {
  const LindenPage({super.key});

  @override
  State<LindenPage> createState() => _LindenPageState();
}

class _LindenPageState extends State<LindenPage> {
  List data = [
    {"img": "asset/juice.png"},
    {"img": "asset/honey.png"},
    {"img": "asset/food.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.purple,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                "asset/foods.png",
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 2.4,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                bottom: -70,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    clipBehavior: Clip.none,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Linden honey",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              Icon(
                                Icons.favorite,
                                size: 20,
                                color: Colors.orange,
                              )
                            ],
                          ),
                          Text(
                            "Specificaton: 300 ml",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$6",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              Card(
                                color: Colors.orange[400],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Buy now"),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_activity,
                        size: 30,
                        color: Colors.orange,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Text(
                          "Description",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "Lorem issum dolor sit amet .consectetuer ",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "adipiscing elit .sed ",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Divider(
                  height: 2,
                  thickness: 3,
                  color: Colors.greenAccent,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Similar products",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LikePage()));
                      },
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.greenAccent,
                          child: Image.asset(
                            "asset/juice.png",
                            fit: BoxFit.cover,
                            height: 120,
                            width: 135,
                          )),
                    ),
                    Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.greenAccent,
                        child: Image.asset(
                          "asset/wine.png",
                          fit: BoxFit.cover,
                          height: 120,
                          width: 135,
                        )),
                    Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.greenAccent,
                        child: Image.asset(
                          "asset/food.png",
                          fit: BoxFit.cover,
                          height: 120,
                          width: 135,
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
