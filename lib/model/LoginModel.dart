import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
    String usuarioEmail;
    String usuarioContrasena;

    Login({
        this.usuarioEmail,
        this.usuarioContrasena
    });

    factory Login.fromJson(Map<String, dynamic> json) => Login(
        usuarioEmail      : json["usuarioEmail"],
        usuarioContrasena : json["usuarioContrasena"],
    );

    Map<String, dynamic> toJson() => {
        "usuarioEmail"      : usuarioEmail,
        "usuarioContrasena" : usuarioContrasena
    };
}