import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Diego Ramirez mat:1091'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Stack(
            children: [
              // Fondo naranja
              Container(
                width: 150,
                height: 150,
                color: Colors.orange,
              ),
              // Cuadrado azul (debajo del verde)
              Positioned(
                bottom: 15, // Ajustado para que no quede tan cubierto
                right: 15,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.cyan,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Test',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              // Cuadrado verde (un poco menos encima del azul)
              Positioned(
                top: 15, // Ajustado para que se vea más el azul
                left: 15,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
