import 'dart:html';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:pelicula2022/models/company_image.dart';
import 'package:pelicula2022/models/company.dart';
import 'package:carousel_slider/carousel_slider.dart';


class CompanySScreen extends StatelessWidget{
  const CompanySScreen({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Compania(),
    );
  }
} 
class _Compania extends StatelessWidget{
@override
Widget _build(BuildContext context) {
  return  Container(
    width: double.infinity,
    height: 250.0,
    child: Swiper(
      itemCount: CompanyImage,
      viewportFraction: 0.8,
      scale:0.9,
      pagination: new SwiperPagination(),
      control: new SwiperControl(),
      itemBuilder: (BuildContext (context, int index){
     return new Image.network("",fit: BoxFit.fill,); 
    }
    ),),
  );
}
}
