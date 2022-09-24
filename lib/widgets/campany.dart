import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ImagenCarru extends StatefulWidget{
  List<String> imagen = [ ""

  ]
}
@override
Widget _swiper() {
  return Container(
    width: double.infinity,
    height: 250.0,
    child: Swiper(
      itemCount: ImagenCarru().length,
      viewportFraction: 0.8,
      scale:0.9,
      pagination: new SwiperPagination(),
      control: new SwiperControl(),
      itemBuilder: (BuildContext (context, int index){
     return new Image.network("",fit: BoxFit.fill,); 
    },
    ),),
  );
}
