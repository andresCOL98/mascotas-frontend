import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    int usuarioId;
    String usuarioDescripcion;
    int usuarioEdad;
    String usuarioEmail;
    String usuarioNombre;
    int usuarioTelefono;
    String usuarioContrasena;

    User({
        this.usuarioId,
        this.usuarioDescripcion,
        this.usuarioEdad,
        this.usuarioEmail,
        this.usuarioNombre,
        this.usuarioTelefono,
        this.usuarioContrasena
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        usuarioId         : json["usuarioId"],
        usuarioDescripcion: json["usuarioDescripcion"],
        usuarioEdad       : json["usuarioEdad"],
        usuarioEmail      : json["usuarioEmail"],
        usuarioNombre     : json[ "usuarioNombre"],
        usuarioTelefono   : json["usuarioTelefono"],
        usuarioContrasena : json["usuarioContrasena"],
    );

    Map<String, dynamic> toJson() => {
        "usuarioId"         : usuarioId,
        "usuarioDescripcion": usuarioDescripcion,
        "usuarioEdad"       : usuarioEdad,
        "usuarioEmail"      : usuarioEmail,
        "usuarioNombre"     : usuarioNombre,
        "usuarioTelefono"   : usuarioTelefono,
        "usuarioContrasena" : usuarioContrasena
    };
}