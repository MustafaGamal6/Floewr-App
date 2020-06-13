import 'package:flowersapp/data/model.dart';
import 'package:flowersapp/screens/screen1.dart';
import 'package:flutter/material.dart';

class FlowersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: flowers.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return GestureDetector(
            onTap: () {
            Navigator.push(
              context,MaterialPageRoute(
                builder: (_)=>Screen1(details:flowers[i])
                )
             );
            },
            child: Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.only(left: 15.0, right: 10.0),
                height: 300.0,
                width: 170.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(110.0),
                    color: appcolors[i]),
                child: Column(
                  children: <Widget>[
                    Container(
                      //     margin: EdgeInsets.all(20.0),
                      width: 150.0,
                      height: 145.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        color: Color(0xFF45D09E).withOpacity(.2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(2, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                              child: Image(
                            image: AssetImage(flowers[i].imgpath),
                            height: 133.0,
                            width: 133,
                          )),
                          Positioned(
                              bottom: 2.0,
                              right: -5,
                              child: Container(
                                margin: EdgeInsets.all(5.0),
                                width: 52,
                                height: 52,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Color(0xFFC9FFBF).withOpacity(.9),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.account_balance_wallet,
                                    color: Colors.black,
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 100,
                      width: 140,
                      //        color: Colors.red,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "Alkasion",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                flowers[i].name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "Strain",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "1 kg / 50 \$",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )),
          );
        });
  }
}
