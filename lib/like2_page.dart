import 'package:flutter/material.dart';
import 'package:shopping_app/reviews_page.dart';

class Like2Page extends StatefulWidget {
  const Like2Page({super.key});

  @override
  State<Like2Page> createState() => _Like2PageState();
}

class _Like2PageState extends State<Like2Page> {

  double _value = 10;

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
          "I like",
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
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "asset/wine.png",
                        ),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 2,
                thickness: 5,
                indent: 130,
                endIndent: 130,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Your package with orders",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "arrived at the office",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ReviewsPage()));
                },
                child: Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Status:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                        Text("In the office",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                        Slider(
                            value: _value,
                            min: 0.0,
                            max: 100,
                            divisions: 5,
                            label: "10",
                            activeColor: Colors.greenAccent,
                            inactiveColor: Colors.red,
                            onChanged: (values){
                              setState(() {
                                _value =values;
                              });
                            }),
                        Text("pick up the package within 4 days",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
