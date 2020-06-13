
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget{
  @override
  _State createState() => _State();
}

class _State extends State<Screen2> {
  final List<String> kinds2 =[
    'Flowers',
    'Seeds',
    'Edibles',
    'Pre Rolls',
    'Cannabis Oils',
    'CBd Products',
    'Vaping'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -30,
            right: -50,
            child:Container(
              margin: EdgeInsets.only(bottom: 20.0),
              width: MediaQuery.of(context).size.width * .8,
              height:MediaQuery.of(context).size.height * .39 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(220.0),
                color: Color(0xFF2c6975).withOpacity(.8)
              ),    
            )
             ),
             Positioned(
               top: 46.0,
               right: 28.0,
               child: GestureDetector(
                 onTap: (){Navigator.pop(context, 'screen1');},
                 child: Icon(Icons.clear , color: Colors.white , size: 25,))),
             Positioned(
               top: 180.0,
               left: 35.0,
               child: Container(
                 width: MediaQuery.of(context).size.width/3.2,
                 height: MediaQuery.of(context).size.height/2.1,
              //   color: Colors.red,
                 child: ListView.builder(
                       itemCount: kinds2.length,
                       itemBuilder: (context , x){
                         return Container(
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: <Widget>[
                               SizedBox(height: 20.0,),
                               Row(
                                 children: <Widget>[
                                   Text(kinds2[x] ,
                          style: TextStyle(color: Color(0xFF2c6975), 
                          fontSize: 18 , fontWeight: FontWeight.bold),)
                                 ],
                               )

                             ],
                           ),
                         );
                       }
                       )
               )
             ),
             Positioned(
               bottom: -40,
               right: -30,
               child: Container(
              margin: EdgeInsets.only(bottom: 20.0),
              width: MediaQuery.of(context).size.width/2.5,
              height:MediaQuery.of(context).size.width/2.5 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(135.0),
                color: Color(0xFF93B198).withOpacity(.6)
              ),  
            )
               ),
               Positioned(
                 bottom: 20.0,
                 left: 30.0,
                 child: Text("Setting" , style: TextStyle(color:Color(0xFF2c6975), fontWeight: FontWeight.bold , fontSize: 16 ),)
                 )
        ],
      )
    );
  }
}