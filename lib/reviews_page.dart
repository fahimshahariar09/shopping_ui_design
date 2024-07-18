import 'package:flutter/material.dart';

class ReviewsPage extends StatefulWidget {
  const ReviewsPage({super.key});

  @override
  State<ReviewsPage> createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
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
            "Reviews",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w200,),
          ),
          centerTitle: true,
          elevation: 0,
          actions: [
            Icon(
              Icons.abc_outlined,
              size: 25,
              color: Colors.black,
            )
          ],
        ),
        backgroundColor: Color(0xFFCBE57C),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * .2,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.person_pin,
                            size: 50,
                            color: Colors.greenAccent,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .70,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  //  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text("Jerry"),
                                    Row(
                                      children: [
                                        Icon(Icons.star),
                                        Icon(Icons.star),
                                        Icon(Icons.star),
                                        Icon(Icons.star),
                                        Icon(Icons.star),
                                      ],
                                    )
                                  ],
                                ),
                                Text(
                                  "For businesses the key to getting positive reviews often is to ask customers at the right time especially if the customers",
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}
