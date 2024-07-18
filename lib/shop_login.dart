import 'package:flutter/material.dart';
import 'package:shopping_app/product_page.dart';
import 'package:shopping_app/shop3_page.dart';

class ShopLogin extends StatefulWidget {
  const ShopLogin({super.key});

  @override
  State<ShopLogin> createState() => _ShopLoginState();
}

class _ShopLoginState extends State<ShopLogin> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCBE57C),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 10,
          right: 10,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text(
                "Sing in",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 25),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                color: Colors.cyan.shade700, width: 3),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.cyan.shade700,
                              width: 3,
                            ),
                          ),
                          hintText: "E-mail",
                          hintStyle: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Colors.cyan.shade700,
                                width: 3,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.cyan.shade700,
                                width: 3,
                              )),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                checkColor: Colors.white,
                                focusColor: Colors.red,
                                activeColor: Colors.black,
                                value: check,
                                onChanged: (value) {
                                  print("........$check");
                                  setState(() {
                                    check = value!;
                                  });
                                }),
                            Text(
                              "Remember",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Text("forget pass",style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.red
                        ),)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
             Container(
                   height: 60,
                   width: 150,
                     color: Colors.white70,
                     child: Center(
                       child: InkWell(
                          onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Shop3Page()));
                         },
                         child: Text(
                           "Sign up",
                           style: TextStyle(
                             fontWeight: FontWeight.w600,
                             fontSize: 20,
                             color: Colors.red,
                           ),
                         ),
                       ),
                     ),
                   ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'don\'t have account?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Text(
                    "create account",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
