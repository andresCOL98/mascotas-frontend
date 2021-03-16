import 'package:flutter/material.dart';
import 'package:mascotas_frontend/pages/PrincipalPage.dart';
import 'package:mascotas_frontend/pages/RegistrarPage.dart';
import 'package:mascotas_frontend/pages/LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MascotasApp',
      initialRoute: 'login',
      routes: {
          'login'         : (BuildContext context) => LoginPage(),
          'Registrarse'   : (BuildContext context) => RegistarsePage(),
          'PrincipalPage' : (BuildContext context) => PrincipalPage(),
      },
      theme: ThemeData(
          primaryColor: Color.fromRGBO(0, 117, 188, 1.0),
      ),
    );
  }
}