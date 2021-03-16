import 'package:flutter/material.dart';
import 'package:mascotas_frontend/model/UserModel.dart';
import 'package:mascotas_frontend/provider/UserProvider.dart';
import 'package:mascotas_frontend/widgets/Botones.dart';
import 'package:mascotas_frontend/widgets/Textos.dart';

class RegistarsePage extends StatefulWidget {
  RegistarsePage({Key key}) : super(key: key);

  @override
  _RegistarsePageState createState() => _RegistarsePageState();
}

class _RegistarsePageState extends State<RegistarsePage> {

  final Botones botones = new Botones();
  final Textos textos = new Textos();

  final UserProvider userProvider = new UserProvider();
  final User user = new User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: <Widget>[
          _crearFondo(context),
          _loginForm(context)
        ],
      ),
    );
  }

  Widget _loginForm(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          SafeArea(
            child: Container(
              height: 180.0,
            ),
          ),

          Container(
            width: size.width * 0.85,
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric( vertical: 50.0 ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 5.0),
                  spreadRadius: 3.0
                )
              ]
            ),
            child: Column(
              children: <Widget>[
                Text('Registrarse', style: TextStyle(fontSize: 20.0)),
                SizedBox( height: 30.0 ),
                _crearCedula(),
                SizedBox( height: 20.0 ),
                _crearNombre(),
                SizedBox( height: 20.0 ),
                _crearEmail(),
                SizedBox( height: 20.0 ),
                _crearNumero(),
                SizedBox( height: 20.0 ),
                _crearEdad(),
                SizedBox( height: 20.0 ),
                _crearContrasena(),
                SizedBox( height: 30.0 ),
                _crearBoton(context)

              ],
            ),
          ),
          Text('¿Ya estas registrado?, '),
          InkWell(
            child: Center(
              child: Text('login'),
            ),
            onTap:()=> Navigator.pushReplacementNamed(context, 'login'),
          ), 
          SizedBox( height: 100.0 )
        ],
      ),
    );

  }

  Widget _crearCedula() {

        return Container(
          
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              icon: Icon( Icons.credit_card, color: Color.fromRGBO(0, 117, 188, 1.0) ),
              hintText: 'Escribe tu cedula',
              labelText: 'Cedula',
            ),
            onChanged: (value){
              setState(() {             
                user.usuarioId = int.parse(value);
              });
            },
          ),
        );

  }

  Widget _crearNombre() {

        return Container(
          
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              icon: Icon( Icons.person_pin, color: Color.fromRGBO(0, 117, 188, 1.0) ),
              hintText: 'Escribe tu nombre',
              labelText: 'Nombre',
            ),
            onChanged: (value){
              setState(() {
                user.usuarioNombre = value;
              });
            },
          ),
        );

  }

  Widget _crearEmail() {

        return Container(
          
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              icon: Icon( Icons.email, color: Color.fromRGBO(0, 117, 188, 1.0) ),
              hintText: 'Escribe tu email',
              labelText: 'Email',
            ),
            onChanged: (value){
              setState(() {
                user.usuarioEmail = value;
              });
            },
          ),
        );

  }

  Widget _crearNumero() {

        return Container(
          
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              icon: Icon( Icons.phone_android, color: Color.fromRGBO(0, 117, 188, 1.0) ),
              hintText: 'Escribe tu numero',
              labelText: 'Numero de Contacto',
            ),
            onChanged: (value){
              setState(() { 
                user.usuarioTelefono = int.parse(value);
              });
            },
          ),
        );

  }

  Widget _crearEdad() {

      return Container(
        
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            icon: Icon( Icons.person, color: Color.fromRGBO(0, 117, 188, 1.0) ),
            hintText: 'Escribe tu edad',
            labelText: 'edad',
          ),
          onChanged: (value){
            setState(() { 
              user.usuarioEdad = int.parse(value);
            });
          },
        ),
      );

  }

    Widget _crearContrasena() {

      return Container(
        
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          obscureText: true,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            icon: Icon( Icons.lock, color: Color.fromRGBO(0, 117, 188, 1.0) ),
            hintText: 'Escribe tu contraseña',
            labelText: 'Contraseña',
          ),
          onChanged: (value){
            setState(() { 
              user.usuarioContrasena = value;
            });
          },
        ),
      );

  }

  Widget _crearBoton(BuildContext context){
    return ElevatedButton(
          child: Container(
            padding: EdgeInsets.symmetric( horizontal: 80.0, vertical: 15.0),
            child: Text('Registrarse'),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color.fromRGBO(0, 117, 188, 1.0),
            elevation: 0.0,
            padding: EdgeInsets.all(0.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0)
            ),
            textStyle: TextStyle(
              color: Colors.white
            )
          ),
          onPressed: (){_login(context);}
        );
  }

  void _login(BuildContext context) async {

    String respuesta;
    
    if(user.usuarioId != null && user.usuarioNombre!=null && user.usuarioEdad!=null && user.usuarioTelefono!=null
        && user.usuarioEmail!=null && user.usuarioContrasena!=null){
      respuesta = await userProvider.crearUser(user);
      if(respuesta!=null || respuesta != ''){
        Navigator.pushReplacementNamed(context, 'login');
      }else{
        mostrarAlerta(context, respuesta);
      }
      
    }else{
      mostrarAlerta(context, "Digita todos los campos porfavor");
    }
  }

  void mostrarAlerta(BuildContext context, String mensaje){

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('informacion'),
          content: Text(mensaje),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: ()=> Navigator.of(context).pop(),
            )
          ],
        );
      }
    );

  }

  Widget _crearFondo(BuildContext context) {

    final size = MediaQuery.of(context).size;

    final fondoModaro = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color> [
            Color.fromRGBO(0, 170, 220, 1.0),
            Color.fromRGBO(0, 117, 188, 1.0)
          ]
        )
      ),
    );

    final circulo = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(255, 255, 255, 0.3)
      ),
    );


    return Stack(
      children: <Widget>[
        fondoModaro,
        Positioned( top: 90.0, left: 30.0, child: circulo ),
        Positioned( top: -40.0, right: -30.0, child: circulo ),
        Positioned( bottom: -50.0, right: -10.0, child: circulo ),
        Positioned( bottom: 120.0, right: 20.0, child: circulo ),
        Positioned( bottom: -50.0, left: -20.0, child: circulo ),
        
        Container(
          padding: EdgeInsets.only(top: 80.0),
          child: Column(
            children: <Widget>[
              Icon( Icons.pets, color: Colors.white, size: 100.0 ),
              SizedBox( height: 10.0, width: double.infinity ),
              Text('MascotasApp', style: TextStyle( color: Colors.white, fontSize: 25.0 ))
            ],
          ),
        )

      ],
    );

  }
}