import 'package:flutter/material.dart';
import 'package:shopping_app/basket_page.dart';
import 'package:shopping_app/filtters_page.dart';

class SalePage extends StatefulWidget {
  const SalePage({super.key});

  @override
  State<SalePage> createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  List data = [
    "Snekbers",
    "Perfume",
    "Book",
    "Glasses",
    "Snekbers",
    "Orange",
    "Computer"
  ];
  List name = [
    "\$45",
    "\$30",
    "\$15",
    "\$8",
    "\$45",
    "\$5",
    "\$300",
  ];
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
          "Sale",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w200,
          ),
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
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FilttersPage()));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.image,
                                size: 70,
                                color: Colors.greenAccent,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                data[index].toString(),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.remove),
                                  Card(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Text('1'),
                                    ),
                                  ),
                                  Icon(Icons.add),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "\$79",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                              ),
                              Text(
                                name[index].toString(),
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
