import 'package:flutter/material.dart';

class Model {
  String imgpath;
  String name;
  var appcolor;

  Model({
    this.imgpath,
    this.name
  });
}

List<Model> flowers =[
  Model(
    imgpath: 'images/flower.png',
    name: 'Thunder Good'
  ),
  Model(
    imgpath: 'images/flower2.png',
    name: 'OG Kush Strain'
  ),
  Model(
    imgpath: 'images/flower3.png',
    name: 'Seeds Good'
  ),
  Model(
    imgpath: 'images/seeds.png',
    name: 'Edibles good'
  ),
  Model(
    imgpath: 'images/flower4.png',
    name: 'Cannabis Oils'
  )
];

List appcolors =[
    Color(0xFF2c6975).withOpacity(.9),
    Color(0xFF93B198).withOpacity(.8),
    Color(0xFF6882A0),
    Color(0xFFFED876),
    Color(0xFFC9FFBF)
  ];

  final List<String> kinds =[
    'Flowers',
    'Seeds',
    'Edibles',
    'Pre Rolls',
    'Cannabis Oils',
    'CBd Products',
    'Vaping'
  ];