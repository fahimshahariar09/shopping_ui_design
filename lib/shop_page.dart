import 'package:flutter/material.dart';
import 'package:shopping_app/shop_login.dart';

class shopPage extends StatefulWidget {
  const shopPage({super.key});

  @override
  State<shopPage> createState() => _shopPageState();
}

class _shopPageState extends State<shopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCBE57C),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Card(
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 15, bottom: 10, right: 15),
                      child: Text(
                        "Buy Here!",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 90,
                    color: Colors.white,
                  ),
                ],
              ),
              Image.asset("asset/shoppings.png",
                  height: 200, fit: BoxFit.cover),
              const SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopLogin()));
                },
                child: Card(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12,bottom: 12,left: 15,right: 15),
                    child: Text(
                      "Start Shopping",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
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
