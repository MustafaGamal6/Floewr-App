import 'package:flowersapp/data/model.dart';
import 'package:flowersapp/widgets/mainlist.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {

  int selectkind=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16.0 , right: 8),
            child: IconButton(icon: 
            Icon(FontAwesomeIcons.stream ,size: 18,
             color: Color(0xFF2c6975),), onPressed: (){}),
          )
        ],
        ),
        body: SingleChildScrollView(
                  child: Container(
            margin: EdgeInsets.only(left: 20.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 6.0,),
                Column(
                  children: <Widget>[
                    Row(children: <Widget>[Text("Alchemilla", style: TextStyle(color: Color(0xFF2c6975) , fontSize: 25 , fontWeight: FontWeight.bold),),],),
                    Row(
                      children: <Widget>[
                        Text("Flowers", style: TextStyle(color: Color(0xFF2c6975) , fontSize: 25 , fontWeight: FontWeight.bold),)
                      ],
                    )
                    
                  ],
                ),
                SizedBox(height: 14.0),
                Container(
                  //padding: EdgeInsets.only(right: 8.0),
                  height: 40.0,
                //  color: Colors.red,
                  child: ListView.builder(
                    itemCount: kinds.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context , index){
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          SizedBox(width: 20.0,),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                selectkind=index;
                              });
                            }, 
                            child: Text(kinds[index] , 
                            style: TextStyle(color: selectkind==index ? Color(0xFF2c6975) :Colors.grey,
                             fontSize: 16 , fontWeight: FontWeight.bold ),),
                          )

                        ],
                      );
                    }
                     )
                  ,
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.only(top: 20.0 , bottom: 20.0 , ),
                  height:MediaQuery.of(context).size.height/1.7,                       // 420,
              //   color: Colors.red,
                  child: FlowersList()
                ),
                Container(
                    margin: EdgeInsets.only(top: 6.0 , right: 10.0),
                    height: MediaQuery.of(context).size.height/10,
                 //   color: Colors.blue,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60.0),
                          color: Color(0xFF2c6975),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(child: Center(
                               child: Icon(FontAwesomeIcons.briefcase , color: Colors.white, size: 26,),
                              
                            )),
                            Positioned(
                              right: 10.0,
                              bottom: 13.0,
                              child: Container(
                              width:15,
                        height: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text("2" , style: TextStyle(color:Color(0xFF2c6975)),),
                        ),
                            ))
                          ],
                        )
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
    );
  }
}