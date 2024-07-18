import 'package:flutter/material.dart';
import 'package:shopping_app/filtters_page.dart';
import 'package:shopping_app/sale_page.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
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
            "Baskets",
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
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                color: Colors.white,
                child:Padding(
                  padding: const EdgeInsets.only(left: 20,right: 50),
                  child: Row(
                    children: [
                      Icon(Icons.shopify_outlined,size: 60,color: Colors.orange,),
                      Text("Total:",style: TextStyle(fontWeight: FontWeight.w600),),
                      Text("\$672",style: TextStyle(fontSize: 30,color: Colors.orange,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              ListView.builder(
                shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SalePage()));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
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
                                  Text(data[index].toString(),style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),),
                                  Row(
                                    children: [
                                      Icon(Icons.remove),
                                      Card(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.black)),
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
                                        color: Colors.black54),
                                  ),
                                  Text(
                                    name[index].toString(),
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.orange),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        )
    );
  }
}
