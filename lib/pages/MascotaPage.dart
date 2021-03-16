import 'package:flutter/material.dart';
import 'package:mascotas_frontend/widgets/Botones.dart';
import 'package:mascotas_frontend/widgets/Cards.dart';

class MascotaPage {

  Widget pageGenerate(BuildContext context) {
    final Botones botones = new Botones();
    final Cards card = new Cards();
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            botones.botonEstandar(
                50.0, 10.0, 'Agregar Mascota', "Open Sans", 14.0, () {}),
            SizedBox(height: 20.0),
            Center(child: card.cardMascota(context)),
          ],
        ),
      ),
    );
  }
  
}
