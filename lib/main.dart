import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.amber
    ),
    home: new Estacionamiento(),
  ));
}

class Estacionamiento extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Estacionamiento> {
  double costoHora = 0.0;
  double costoFraccion = 0.0;
  double totalPagar = 0.0;
  int hora_inicio = 0;
  int minuto_inicio = 0;
  int hora_fin = 0;
  int minuto_fin = 0;
  TimeOfDay _inicio = TimeOfDay.now();
  TimeOfDay _fin = TimeOfDay.now();

  Future<Null> _seleccionaHoraInicio(BuildContext inicia) async {
    final TimeOfDay recogeInicio =
        await showTimePicker(context: inicia, initialTime: _inicio);
    if (recogeInicio != null && recogeInicio != _inicio) {
      setState(() {
        _inicio = recogeInicio;
        hora_inicio = _inicio.hour;
        minuto_inicio = _inicio.minute;
      });
    }
  }

  Future<Null> _seleccionaHoraFin(BuildContext finaliza) async {
    final TimeOfDay recogeFin =
        await showTimePicker(context: finaliza, initialTime: _fin);
    if (recogeFin != null && recogeFin != _fin) {
      setState(() {
        _fin = recogeFin;
        hora_fin = _fin.hour;
        minuto_fin = _fin.minute;
      });
    }
  }

  void calculaTotal() {
    if (costoHora != 0 && costoFraccion != 0) {
      if (hora_fin - hora_inicio == 0 && minuto_fin - minuto_inicio == 0) {
        totalPagar = 0.0;
      }
      if (hora_fin - hora_inicio == 1 && minuto_fin - minuto_inicio == 0) {
        totalPagar = costoHora;
      }
      if (hora_fin - hora_inicio == 1 && minuto_fin - minuto_inicio >= 1) {
        totalPagar = costoHora + (costoFraccion * 1);
      }
      if (hora_fin - hora_inicio == 1 && minuto_fin - minuto_inicio >= 15) {
        totalPagar = costoHora + (costoFraccion * 2);
      }
      if (hora_fin - hora_inicio == 1 && minuto_fin - minuto_inicio >= 30) {
        totalPagar = costoHora + (costoFraccion * 3);
      }
      if (hora_fin - hora_inicio == 1 && minuto_fin - minuto_inicio >= 45) {
        totalPagar = costoHora + (costoFraccion * 4);
      }
      if (hora_fin - hora_inicio == 1 && minuto_fin - minuto_inicio >= 59) {
        totalPagar = costoHora + (costoFraccion * 5);
      }
      if (hora_fin - hora_inicio == 2 && minuto_fin - minuto_inicio == 0) {
        totalPagar = costoHora + (costoFraccion * 6 - costoFraccion);
      }
      if (hora_fin - hora_inicio == 2 && minuto_fin - minuto_inicio >= 1) {
        totalPagar = costoHora + (costoFraccion * 6);
      }
      if (hora_fin - hora_inicio == 2 && minuto_fin - minuto_inicio >= 15) {
        totalPagar = costoHora + (costoFraccion * 7);
      }
      if (hora_fin - hora_inicio == 2 && minuto_fin - minuto_inicio >= 30) {
        totalPagar = costoHora + (costoFraccion * 8);
      }
      if (hora_fin - hora_inicio == 2 && minuto_fin - minuto_inicio >= 45) {
        totalPagar = costoHora + (costoFraccion * 9);
      }
      if (hora_fin - hora_inicio == 2 && minuto_fin - minuto_inicio >= 59) {
        totalPagar = costoHora + (costoFraccion * 10);
      }
      if (hora_fin - hora_inicio == 3 && minuto_fin - minuto_inicio == 0) {
        totalPagar = costoHora + (costoFraccion * 11 - costoFraccion);
      }
      if (hora_fin - hora_inicio == 3 && minuto_fin - minuto_inicio >= 1) {
        totalPagar = costoHora + (costoFraccion * 11);
      }
      if (hora_fin - hora_inicio == 3 && minuto_fin - minuto_inicio >= 15) {
        totalPagar = costoHora + (costoFraccion * 12);
      }
      if (hora_fin - hora_inicio == 3 && minuto_fin - minuto_inicio >= 30) {
        totalPagar = costoHora + (costoFraccion * 13);
      }
      if (hora_fin - hora_inicio == 3 && minuto_fin - minuto_inicio >= 45) {
        totalPagar = costoHora + (costoFraccion * 14);
      }
      if (hora_fin - hora_inicio == 3 && minuto_fin - minuto_inicio >= 59) {
        totalPagar = costoHora + (costoFraccion * 15);
      }
      if (hora_fin - hora_inicio == 4 && minuto_fin - minuto_inicio == 0) {
        totalPagar = costoHora + (costoFraccion * 16 - costoFraccion);
      }
      if (hora_fin - hora_inicio == 4 && minuto_fin - minuto_inicio >= 1) {
        totalPagar = costoHora + (costoFraccion * 16);
      }
      if (hora_fin - hora_inicio == 4 && minuto_fin - minuto_inicio >= 15) {
        totalPagar = costoHora + (costoFraccion * 17);
      }
      if (hora_fin - hora_inicio == 4 && minuto_fin - minuto_inicio >= 30) {
        totalPagar = costoHora + (costoFraccion * 18);
      }
      if (hora_fin - hora_inicio == 4 && minuto_fin - minuto_inicio >= 45) {
        totalPagar = costoHora + (costoFraccion * 19);
      }
      if (hora_fin - hora_inicio == 4 && minuto_fin - minuto_inicio >= 59) {
        totalPagar = costoHora + (costoFraccion * 20);
      }
      if (hora_fin - hora_inicio == 5 && minuto_fin - minuto_inicio == 0) {
        totalPagar = costoHora + (costoFraccion * 21 - costoFraccion);
      }
      if (hora_fin - hora_inicio == 5 && minuto_fin - minuto_inicio >= 1) {
        totalPagar = costoHora + (costoFraccion * 21);
      }
      if (hora_fin - hora_inicio == 5 && minuto_fin - minuto_inicio >= 15) {
        totalPagar = costoHora + (costoFraccion * 22);
      }
      if (hora_fin - hora_inicio == 5 && minuto_fin - minuto_inicio >= 30) {
        totalPagar = costoHora + (costoFraccion * 23);
      }
      if (hora_fin - hora_inicio == 5 && minuto_fin - minuto_inicio >= 45) {
        totalPagar = costoHora + (costoFraccion * 24);
      }
      if (hora_fin - hora_inicio == 5 && minuto_fin - minuto_inicio >= 59) {
        totalPagar = costoHora + (costoFraccion * 25);
      }
      if (hora_fin - hora_inicio == 6 && minuto_fin - minuto_inicio == 0) {
        totalPagar = costoHora + (costoFraccion * 26 - costoFraccion);
      }
      if (hora_fin - hora_inicio == 6 && minuto_fin - minuto_inicio >= 1) {
        totalPagar = costoHora + (costoFraccion * 26);
      }
      if (hora_fin - hora_inicio == 6 && minuto_fin - minuto_inicio >= 15) {
        totalPagar = costoHora + (costoFraccion * 27);
      }
      if (hora_fin - hora_inicio == 6 && minuto_fin - minuto_inicio >= 30) {
        totalPagar = costoHora + (costoFraccion * 28);
      }
      if (hora_fin - hora_inicio == 6 && minuto_fin - minuto_inicio >= 45) {
        totalPagar = costoHora + (costoFraccion * 29);
      }
      if (hora_fin - hora_inicio == 6 && minuto_fin - minuto_inicio >= 59) {
        totalPagar = costoHora + (costoFraccion * 30);
      }
      if (hora_fin - hora_inicio == 7 && minuto_fin - minuto_inicio == 0) {
        totalPagar = costoHora + (costoFraccion * 31 - costoFraccion);
      }
      if (hora_fin - hora_inicio == 7 && minuto_fin - minuto_inicio >= 1) {
        totalPagar = costoHora + (costoFraccion * 31);
      }
      if (hora_fin - hora_inicio == 7 && minuto_fin - minuto_inicio >= 15) {
        totalPagar = costoHora + (costoFraccion * 32);
      }
      if (hora_fin - hora_inicio == 7 && minuto_fin - minuto_inicio >= 30) {
        totalPagar = costoHora + (costoFraccion * 33);
      }
      if (hora_fin - hora_inicio == 7 && minuto_fin - minuto_inicio >= 45) {
        totalPagar = costoHora + (costoFraccion * 34);
      }
      if (hora_fin - hora_inicio == 7 && minuto_fin - minuto_inicio >= 59) {
        totalPagar = costoHora + (costoFraccion * 35);
      }
      if (hora_fin - hora_inicio == 8 && minuto_fin - minuto_inicio == 0) {
        totalPagar = costoHora + (costoFraccion * 36 - costoFraccion);
      }
      if (hora_fin - hora_inicio == 8 && minuto_fin - minuto_inicio >= 1) {
        totalPagar = costoHora + (costoFraccion * 36);
      }
      if (hora_fin - hora_inicio == 8 && minuto_fin - minuto_inicio >= 15) {
        totalPagar = costoHora + (costoFraccion * 37);
      }
      if (hora_fin - hora_inicio == 8 && minuto_fin - minuto_inicio >= 30) {
        totalPagar = costoHora + (costoFraccion * 38);
      }
      if (hora_fin - hora_inicio == 8 && minuto_fin - minuto_inicio >= 45) {
        totalPagar = costoHora + (costoFraccion * 39);
      }
      if (hora_fin - hora_inicio == 8 && minuto_fin - minuto_inicio >= 59) {
        totalPagar = costoHora + (costoFraccion * 49);
      }
      if (hora_fin - hora_inicio == 9 && minuto_fin - minuto_inicio == 0) {
        totalPagar = costoHora + (costoFraccion * 41 - costoFraccion);
      }
      if (hora_fin - hora_inicio == 9 && minuto_fin - minuto_inicio >= 1) {
        totalPagar = costoHora + (costoFraccion * 41);
      }
      if (hora_fin - hora_inicio == 9 && minuto_fin - minuto_inicio >= 15) {
        totalPagar = costoHora + (costoFraccion * 42);
      }
      if (hora_fin - hora_inicio == 9 && minuto_fin - minuto_inicio >= 30) {
        totalPagar = costoHora + (costoFraccion * 43);
      }
      if (hora_fin - hora_inicio == 9 && minuto_fin - minuto_inicio >= 45) {
        totalPagar = costoHora + (costoFraccion * 44);
      }
      if (hora_fin - hora_inicio == 9 && minuto_fin - minuto_inicio >= 59) {
        totalPagar = costoHora + (costoFraccion * 45);
      }
      if (hora_fin - hora_inicio == 10 && minuto_fin - minuto_inicio == 0) {
        totalPagar = costoHora + (costoFraccion * 46 - costoFraccion);
      }
      if (hora_fin - hora_inicio == 10 && minuto_fin - minuto_inicio >= 1) {
        totalPagar = costoHora + (costoFraccion * 46);
      }
      if (hora_fin - hora_inicio == 10 && minuto_fin - minuto_inicio >= 15) {
        totalPagar = costoHora + (costoFraccion * 47);
      }
      if (hora_fin - hora_inicio == 10 && minuto_fin - minuto_inicio >= 30) {
        totalPagar = costoHora + (costoFraccion * 48);
      }
      if (hora_fin - hora_inicio == 10 && minuto_fin - minuto_inicio >= 45) {
        totalPagar = costoHora + (costoFraccion * 49);
      }
      if (hora_fin - hora_inicio == 10 && minuto_fin - minuto_inicio >= 59) {
        totalPagar = costoHora + (costoFraccion * 50);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Text("Parquimetro"), 
          actions: <Widget>[
            Icon(Icons.more_vert, size: 30.0)
          ],
          ), //
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Container(
                    padding: new EdgeInsets.all(5.0),
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.monetization_on),
                          labelText: 'Costo 1ra Hora',
                          hintText: 'Introduce el costo de la primer hora',//
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onChanged: (hora) {
                        setState(() {
                          costoHora = double.parse(hora);
                        });
                      },
                    )),
                new Container(
                    padding: new EdgeInsets.all(5.0),
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.monetization_on),
                          labelText: 'Costo xFracción',
                          hintText: 'Introduce el costo por fraccion',
                          helperText: 'Fracciones de 15 minutos',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onChanged: (fraccion) {
                        setState(() {
                          costoFraccion = double.parse(fraccion);
                        });
                      },
                    )),
                new Container(
                  padding: new EdgeInsets.all(15.0),
                  child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new RaisedButton(
                        color: Color.fromRGBO(41, 86, 254, 1.0),//
                        child: new Text('Selecciona Hora Inicio',//
                            style:
                                TextStyle(fontSize: 15, color: Colors.white)),
                        onPressed: () {
                          _seleccionaHoraInicio(context);
                        },
                      ),
                      Center(
                          child: new Text(
                              'Hora Inicio: $hora_inicio:$minuto_inicio')),
                    ],
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.all(15.0),
                  child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new RaisedButton(
                        color: Color.fromRGBO(41, 86, 254, 1.0),//
                        child: new Text('Selecciona Hora Fin', //
                            style:
                                TextStyle(fontSize: 15, color: Colors.white)),
                        onPressed: () {
                          _seleccionaHoraFin(context);
                        },
                      ),
                      Center(
                          child: new Text('Hora Fin: $hora_fin:$minuto_fin')),
                    ],
                  ),
                ),
                new Container(
                    padding: new EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        RaisedButton(
                          color: Color.fromRGBO(41, 86, 254, 1.0),
                          child: new Text('Ok',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                          onPressed: () {
                            setState(() {
                              calculaTotal();
                            });
                          },
                        ),
                        Container(
                          padding: new EdgeInsets.all(15.0),
                          child: new Text("Total a pagar: $totalPagar",//
                              style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    )),
              ],
            )));
  }
}