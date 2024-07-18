import 'package:flutter/material.dart';
import 'package:shopping_app/balance_page.dart';
import 'package:shopping_app/filtters_page.dart';
import 'package:shopping_app/linden_page.dart';
import 'package:shopping_app/sale_page.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List data = [
    {"img": "asset/juice.png", "name": "juice"},
    {"img": "asset/honey.png", "name": "honey"},
    {"img": "asset/food.png", "name": "fast food"},
    {"img": "asset/wine.png", "name": "wine"},
    {"img": "asset/honey.png", "name": "honey water"},
    {"img": "asset/dorts.png", "name": "others"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCBE57C),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search",
                  filled: true,
                  fillColor: Colors.white70,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
            ),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 15,),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => BalancePage()));
                          },
                          child: CircleAvatar(
                            radius: 90,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(
                              data[index]["img"],
                            ),
                          ),
                        ),
                        Text(
                          data[index]["name"].toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
