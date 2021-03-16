import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:mascotas_frontend/model/UserModel.dart';
import 'package:mascotas_frontend/model/LoginModel.dart';
import 'package:mascotas_frontend/preferencias_usuario/PreferenciasUsuario.dart';

class UserProvider {

  final String _url = "http://192.168.0.5:8080/api";
  final _prefs = new PreferenciasUsuario();
  String respuesta;

  Future<String> crearUser( User usuario) async {

    final url = "$_url/usuario/save";
    print(userToJson(usuario));
    final resp = await http.post( url, headers: {"Content-Type": "application/json"}, body: userToJson(usuario).toString() );
    final decodedData = json.decode(resp.body);
    if(decodedData['message'].isNotEmpty){
      respuesta = "Registro exitoso";
    }else{
      respuesta = decodedData['message'];
    }

    return decodedData.toString();

  }

  Future<String> login(Login login) async {

    final url = "$_url/login/usuario";
    print(loginToJson(login));
    final resp = await http.post( url, headers: {"Content-Type": "application/json"}, body: loginToJson(login).toString() );
    final decodedData = json.decode(resp.body);
    if(decodedData['message'].isNotEmpty){
      _prefs.usuarioEmail = decodedData['usuarioEmail'];
      respuesta = "Login correcto";
    }else{
      respuesta = decodedData['message'];
    }
    print(decodedData.toString());

    return respuesta;

  }

}