import 'package:flowersapp/data/model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Screen1  extends StatefulWidget {
  final Model details;
  Screen1({this.details});
  
  @override
  _State createState() => _State();
}

class _State extends State<Screen1> {
  String info ='OG Kush has the content of 27%. OG Kush is a good choice to treatment cuts and stomac pains';
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios , size: 22 , color: Color(0xFF2c6975),) , onPressed: (){Navigator.pop(context);}),
        actions: <Widget>[
          IconButton(icon:Icon(Icons.view_list , size: 25 ,
           color: Color(0xFF2c6975),) , 
           onPressed: (){Navigator.pushNamed(context, 'screen2');}
           )

      ],),
      body: Container(
       // margin: EdgeInsets.only(left: 10.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10.0),
            Container(
              height: MediaQuery.of(context).size.height/2.5,
            //  color: Colors.red,
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width /1.3,
                  height: MediaQuery.of(context).size.width /1.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200.0),
                    color: Color(0xFFE0ECDE).withOpacity(.3)   //Colors.blue

                  ),
                  child: Center(
                    child: Container(
                     width: MediaQuery.of(context).size.width /1.5,
                     height: MediaQuery.of(context).size.width /1.5,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(120.0),
                       color: Color(0xFFCDE0C9).withOpacity(.5)
                     ),
                     child: Center(
                       child: Image(
                         width: 220,
                         height: 220,
                         image: AssetImage(widget.details.imgpath)
                         ),
                     )
                     
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              padding: EdgeInsets.all(20.0),
              height: MediaQuery.of(context).size.height/3.3,
            //  color: Colors.red,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.grey,size: 15,),
                      Icon(Icons.star , color: Colors.grey, size: 15),
                      Icon(Icons.star , color: Colors.grey, size: 15),
                      Icon(Icons.star , color: Colors.grey, size: 15),
                      Icon(Icons.star_half, color: Colors.grey, size: 15)
                    ],
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    children: <Widget>[
                      Text(widget.details.name ,style: TextStyle(color: Color(0xFF2c6975), fontSize: 25 , fontWeight: FontWeight.bold,))
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text("type", style: TextStyle(color: Colors.grey , fontWeight: FontWeight.bold),),
                           Text("Medical", style: TextStyle(color:Color(0xFF2c6975)  ,fontSize: 15, fontWeight: FontWeight.bold),)

                        ],
                      ),
                      SizedBox(width: 50.0,),
                      Column(
                        children: <Widget>[
                          Text("Country", style: TextStyle(color: Colors.grey , fontWeight: FontWeight.bold),),
                           Text("Egypt ,cairo", style: TextStyle(color:Color(0xFF2c6975)  ,fontSize: 15, fontWeight: FontWeight.bold),),


                        ],
                      ),
                      

                    ],
                  ),SizedBox(height: 30.0,),
                 Text(info, style: TextStyle(color: Color(0xFF2c6975) , fontWeight: FontWeight.bold),),  
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 20.0 , bottom: 10.0),
              height: MediaQuery.of(context).size.height/10,
             // color: Colors.blue,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 45.0,
                    width: 130.0,
                  //  color: Colors.red,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFFCDE0C9).withOpacity(.5)
                    ),
                    child:Center(
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                           Icon(FontAwesomeIcons.briefcase, color: Color(0xFF2c6975) , size: 18,),
                           SizedBox(width: 7.0,),
                           Text("Add To Bag" , style: TextStyle(color:Color(0xFF2c6975), fontWeight: FontWeight.bold , fontSize: 12 ),)
                        ],
                      ),
                    ) ,


                  ),
                  Container(
                    width: 60,
                    height: 60,
               //     color: Colors.red,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color: Color(0xFF2c6975)
                    ),
                    child: Center(
                      child: Icon(FontAwesomeIcons.briefcase, color:Colors.white ),
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
      
    );
  }
}