import 'package:flutter/material.dart';

class Textos{

  Widget textoCentrado(double margenTop, double margenBottom, double ancho, double alto, String texto, String fontFamily, Color color, double fontSize){
      return Container(
        margin: EdgeInsets.only(top: margenTop, bottom: margenBottom),
        width: ancho,
        height: alto,
        child: Text(
            texto,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: fontFamily,
              fontStyle: FontStyle.normal,
              color: color,
              fontSize: fontSize,
            ),
          ),
      );
    }

}