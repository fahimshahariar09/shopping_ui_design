import 'package:flutter/material.dart';
import 'package:shopping_app/basket_page.dart';
import 'package:shopping_app/product_page.dart';
import 'package:shopping_app/shop3_page.dart';

class BalancePage extends StatefulWidget {
  const BalancePage({super.key});

  @override
  State<BalancePage> createState() => _BalancePageState();
}

class _BalancePageState extends State<BalancePage> {
  ScrollController _scrollController = ScrollController();
  List nameList =[
    "Mobile banking",
    "Internet banking",
    "SMS banking",
    "Pawnshop",
  ];
  @override
  Widget build(BuildContext context) {
    double heigth =MediaQuery.of(context).size.height;
    double wigth =MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCBE57C),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
          size: 30,
        ),
        title:  Text(
          "Top Up Furpay",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
           Icon(
            Icons.abc,
            size: 40,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){},
        items: [
           BottomNavigationBarItem(icon: Icon(Icons.account_balance),label:"",backgroundColor: Colors.orangeAccent),
           BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits_sharp),label: "memu",backgroundColor: Colors.orangeAccent),
           BottomNavigationBarItem(icon: Icon(Icons.perm_identity_outlined),label: "person",backgroundColor: Colors.orangeAccent,),
           BottomNavigationBarItem(icon: Icon(Icons.settings),label: "setting",backgroundColor: Colors.orangeAccent),
           BottomNavigationBarItem(icon: Icon(Icons.menu),label: "memu",backgroundColor: Colors.orangeAccent),
        ],
      ),
      backgroundColor: Color(0xFFCBE57C),
      body: Padding(
        padding: EdgeInsets.only(top: 20,left: 20,right: 20),
        child: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Balance",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "205,27",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 60,
                          width: MediaQuery.of(context).size.width/1.2,
                          child: ListView.builder(
                            controller: _scrollController,
                            padding: EdgeInsets.all(8),
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 50,
                              itemBuilder: (_,index){
                                return  Card(
                                  color: Colors.white,
                                  child: Center(child: Text("17 aug")),
                                );
                              }),
                        ),
                        Positioned(
                          top: 18,
                          left: -5,
                          child: GestureDetector(
                            onTap: (){
                              _scrollController.animateTo(120, duration: Duration(seconds: 1), curve: Curves.ease);
                            },
                            child: CircleAvatar(
                              radius: 10,
                              child: Center(child: Icon(Icons.keyboard_arrow_left_outlined)),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 18,
                          right: -5,
                          child: GestureDetector(
                            onTap: (){
                              _scrollController.animateTo(120, duration: Duration(seconds: 1), curve: Curves.ease);
                            },
                            child: CircleAvatar(
                              radius: 10,
                              child: Center(child: Icon(Icons.keyboard_arrow_right_outlined)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
             SizedBox(height: 20),
             Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text("Payment Method",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            // ListView.builder(
            //   //reverse: true,
            //   //scrollDirection: Axis.vertical,
            //     physics: BouncingScrollPhysics(),
            //     itemCount: nameList.length,
            //     itemBuilder: (context,i){
            //       return Padding(
            //         padding: EdgeInsets.all(15),
            //         child: SizedBox(
            //           height: 60,
            //           child: ListTile(
            //             tileColor: Colors.greenAccent[400],
            //             leading: Text('${nameList[i]}'),
            //             subtitle: Icon(Icons.favorite,color: Colors.red,size: 50,),
            //           ),
            //         ),
            //       );
            //     }
            // ),
            SizedBox(height: 10,),
            Padding(
             padding: EdgeInsets.all(5),
             child: ListTile(
               tileColor: Colors.white70,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10)
               ),
               leading: Text("Mobile banking",
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 20,
                   fontWeight: FontWeight.w600),),
               trailing: Icon(Icons.arrow_forward_ios_rounded,size: 25,),
             ),
           ),
            Padding(
              padding: EdgeInsets.all(5),
              child: ListTile(
                tileColor: Colors.white70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                leading: Text("Internet banking",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: 25,),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: ListTile(
                tileColor: Colors.white70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                leading: Text("SMS banking",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: 25,),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: ListTile(
                tileColor: Colors.white70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                leading: Text("Pawnshop",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),),
                trailing: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BasketPage()));
                    },
                    child: Icon(Icons.arrow_forward_ios_rounded,size: 25,)),
              ),
            )
          ],
        ),
      ),
    );
  }
}