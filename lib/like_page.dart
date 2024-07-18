import 'package:flutter/material.dart';
import 'package:shopping_app/like2_page.dart';

class LikePage extends StatefulWidget {
  const LikePage({super.key});

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  List data=[
  {"img": "asset/juice.png"},
  {"img": "asset/honey.png"},
  {"img": "asset/food.png"},
  {"img": "asset/wine.png",},
  {"img": "asset/straw.png"},
  {"img": "asset/dorts.png",}
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
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.person_pin,size: 70,color: Colors.white,),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Motly Fox",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),
                SizedBox(height: 10,),
                Text("New York",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              height: MediaQuery.of(context).size.height/1.5,
              width: MediaQuery.of(context).size.width/1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.favorite,color: Colors.red,),
                          Text("I like",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                        ],
                      ),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                        itemCount: 6,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,mainAxisExtent: 160),
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.all(0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Like2Page()));
                              },
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Image.asset(data[index]["img"]),
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

