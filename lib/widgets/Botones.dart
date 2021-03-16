import 'package:flutter/material.dart';  

class Botones {

  Widget botonEstandar(double margenTop, double margenBotton, String texto, String fontFamily, double fontSize, Function onPressed){
    
    
    return Container(
      margin: EdgeInsets.only(top: margenTop, bottom: margenBotton),
      color: Colors.transparent,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 10.0,
          padding: EdgeInsets.all(0.0),
          textStyle: TextStyle(
            color: Colors.white
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromRGBO(0, 170, 220, 1.0),
                Color.fromRGBO(0, 117, 188, 1.0)
              ]
            ),
            borderRadius: BorderRadius.circular(15)
          ),
          padding: const EdgeInsets.all(15.0),
          child: Text(
            texto,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: fontFamily,
              fontSize: fontSize,
            ),
          )
          ),
      ),
    );
  }
  
  Widget botonSinContenedor(double margenTop, double margenBotton, String texto, String fontFamily, double fontSize, Function onPressed){

    return TextButton(
      onPressed: onPressed,
      child: Text(
        texto,
        // textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize
        ),
      ),
      style: TextButton.styleFrom(
        primary: Color.fromRGBO(0, 117, 188, 1.0),
      )
    );

  }


}