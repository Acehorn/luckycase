import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math' as math;

class Melate extends StatefulWidget {
  Melate({Key key}) : super(key: key);

  @override
  _MelateState createState() => _MelateState();
}

class _MelateState extends State<Melate> {
  List<String> listNum = [];

  String inputNum = "";
  String errorText = "";

  String valor2;
  String valor3;
  String valor4;
  String valor5;

  int contador1 = 0;
  int contador2 = 0;
  int contador3 = 0;
  int contador4 = 0;
  int contador5 = 0;
  int contador6 = 0;
  int contador7 = 0;
  int contador8 = 0;
  int contador9 = 0;

  int resultado;
  String muestra = "";
  String alternativo = "";

  TextEditingController controllerNumero = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          "Melate",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              child: listNum.isNotEmpty
                  ? Container(
                      height: size.height * 0.35,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: listNum.length,
                        itemBuilder: (context, index) {
                          return Container(
                              height: size.height * 0.1,
                              color: Color(
                                      (math.Random().nextDouble() * 0xFFFFFF)
                                          .toInt())
                                  .withOpacity(1.0),
                              child: Center(
                                  child: Text(listNum[index].toString())));
                        },
                      ),
                    )
                  : Container(
                      height: size.height * 0.35,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.only(left: 32, right: 32),
                          child: Text(
                              "Agrega ultimos numeros ganadores para predicción"),
                        ),
                      )),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              color: Colors.transparent,
              child: Column(
                children: [
                  Text(
                    alternativo != "" ? 'Numero ganador con suerte:' : "",
                  ),
                  Text(
                    alternativo != "" ? alternativo : "",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    muestra != "" ? 'Numero ganador con probabilidad' : "",
                  ),
                  Text(
                    muestra != "" ? muestra : "Buena Suerte",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  FlatButton(
                      onPressed: () {
                        setState(() {});
                        var rng = new Random();
                        alternativo = rng.nextInt(100000).toString();
                        if (listNum.length >= 1) {
                          muestra = conseguirNum(0) +
                              conseguirNum(1) +
                              conseguirNum(2) +
                              conseguirNum(3) +
                              conseguirNum(4);
                        }

                        // resultado = valor1;
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
                        width: size.width * 0.4,
                        height: size.height * 0.08,
                        color: Colors.red,
                        child: Center(
                            child: Text(
                          "Generar",
                          style: TextStyle(color: Colors.white),
                        )),
                      )),
                  FlatButton(
                      onPressed: () {
                        setState(() {});
                        listNum.clear();
                        muestra = "";
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
                        width: size.width * 0.4,
                        height: size.height * 0.06,
                        color: Colors.green,
                        child: Center(
                            child: Text(
                          "Limpiar lista",
                          style: TextStyle(color: Colors.white),
                        )),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), //
    );
  }

  conseguirNum(int index) {
    int numX;
    String valor1 = "";
    List<int> nuevaLista = [];
    List<int> contadores = [0, 0, 0, 0, 0, 0, 0, 0, 0];
    for (var i = 0; i < listNum.length; i++) {
      if (index == 0) {
        numX = int.parse(listNum[i].substring(0, 1));
        nuevaLista.add(numX);
      }
      if (index == 1) {
        numX = int.parse(listNum[i].substring(1, 2));
        nuevaLista.add(numX);
      }
      if (index == 2) {
        numX = int.parse(listNum[i].substring(2, 3));
        nuevaLista.add(numX);
      }
      if (index == 3) {
        numX = int.parse(listNum[i].substring(3, 4));
        nuevaLista.add(numX);
      }

      if (index == 4) {
        numX = int.parse(listNum[i].substring(4));
        nuevaLista.add(numX);
      }
    }
    for (var i = 0; i < nuevaLista.length; i++) {
      if (nuevaLista[i].toString().substring(0).contains("1")) {
        contadores[0]++;
      }
      if (nuevaLista[i].toString().substring(0).contains("2")) {
        contadores[1]++;
      }
      if (nuevaLista[i].toString().substring(0).contains("3")) {
        contadores[2]++;
      }
      if (nuevaLista[i].toString().substring(0).contains("4")) {
        contadores[3]++;
      }
      if (nuevaLista[i].toString().substring(0).contains("5")) {
        contadores[4]++;
      }
      if (nuevaLista[i].toString().substring(0).contains("6")) {
        contadores[5]++;
      }
      if (nuevaLista[i].toString().substring(0).contains("7")) {
        contadores[6]++;
      }
      if (nuevaLista[i].toString().substring(0).contains("8")) {
        contadores[7]++;
      }
      if (nuevaLista[i].toString().substring(0).contains("9")) {
        contadores[8]++;
      }
    }
    int valor;
    int posicion;
    print(contadores);

    valor = contadores
        .reduce((value, element) => value > element ? value : element);
    for (var i = 0; i < contadores.length; i++) {
      if (contadores[i] == valor) {
        print("hola");
        posicion = i + 1;
        print(posicion);
        valor1 = posicion.toString();
      }
    }

    return valor1;
  }

  _incrementCounter() {
    setState(() {});
    var size = MediaQuery.of(context).size;

    showDialog(
      context: context,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(""),
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.close,
                  color: Colors.transparent,
                )),
          ),
          body: SingleChildScrollView(
            child: Container(
              height: size.height * 0.9,
              color: Colors.transparent,
              child: Center(
                child: Container(
                  height: size.height * 0.5,
                  width: size.width * 0.9,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.close)),
                      ),
                      Container(child: Text("Ingrese numero")),
                      Container(
                          width: size.width * 0.6,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            controller: controllerNumero,
                            onChanged: (String value) {
                              setState(() {});
                              errorText = "";
                              inputNum = value;
                            },
                          )),
                      FlatButton(
                          onPressed: () {
                            setState(() {});
                            if (inputNum != "") {
                              listNum.add(inputNum);
                              Navigator.pop(context);
                              controllerNumero.clear();
                              inputNum = "";
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
                            width: size.width * 0.4,
                            height: size.height * 0.08,
                            color: Colors.red,
                            child: Center(
                                child: Text(
                              "Agregar",
                              style: TextStyle(color: Colors.white),
                            )),
                          )),
                      FlatButton(
                          onPressed: () {
                            setState(() {});
                            for (var i = 0; i < 1000000; i++) {
                              var rng = new Random();
                              String nS = rng.nextInt(100000).toString();
                              if (nS.length == 5) {
                                listNum.add(nS);
                              }
                            }
                            Navigator.pop(context);
                            /*       if (inputNum != "") {
                              listNum.add(inputNum);
                              Navigator.pop(context);
                              controllerNumero.clear();
                              inputNum = "";
                            } */
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
                            width: size.width * 0.4,
                            height: size.height * 0.08,
                            color: Colors.green,
                            child: Center(
                                child: Text(
                              "Lucky",
                              style: TextStyle(color: Colors.white),
                            )),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
