import 'package:flutter/material.dart';

class Cards {
  Widget cardMascota(BuildContext context) {
        return Card(
          shadowColor: Colors.blue,
          color: Colors.white,
          elevation: 10.0,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(mainAxisSize: MainAxisSize.min, children: [
                Image(image: AssetImage('assets/images/logo_inicial.png')),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  child: const ListTile(
                    title: Text('The Enchanted Nightingale', 
                      style: TextStyle(fontFamily: 'Open Sans Bold', fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('ELIMINAR'),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('EDITAR'),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ])
        ],
      ),
    );
  }
}
