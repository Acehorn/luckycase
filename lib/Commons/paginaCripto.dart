import 'dart:math';

import 'package:flutter/material.dart';
import 'package:luckycase/utils/constantes.dart';

class CriptoPageVariable extends StatefulWidget {
  final String monedaTitle;
  final String iconPath;
  final Color color;

  const CriptoPageVariable(
      {Key key, this.monedaTitle, this.iconPath, this.color})
      : super(key: key);

  @override
  _CriptoPageVariableState createState() => _CriptoPageVariableState();
}

class _CriptoPageVariableState extends State<CriptoPageVariable> {
  var rng = new Random();
  int nS = 0;
  @override
  void initState() {
    super.initState();
    nS = rng.nextInt(100);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            child: Text(
              "¡En este momento debes invertir en " + widget.monedaTitle + "!",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage(widget.iconPath),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6, left: 64, right: 64, bottom: 6),
            alignment: Alignment.center,
            child: Text("Cantidad sugerida"),
          ),
          Container(
            margin: EdgeInsets.only(top: 6, left: 64, right: 64, bottom: 6),
            alignment: Alignment.center,
            child: Text(currencyMXN.format(nS),
                style: TextStyle(fontSize: 25, color: Colors.black)),
          ),
          /*    Container(
            margin: EdgeInsets.only(top: 6, left: 64, right: 64, bottom: 6),
            alignment: Alignment.center,
            child: Text(currencyMXN.format(45345),
                style: TextStyle(fontSize: 25, color: Colors.black)),
          ),
          Container(
            margin: EdgeInsets.only(top: 6, left: 64, right: 64, bottom: 6),
            alignment: Alignment.center,
            child: Text("¿Cuanto invertiras?"),
          ),
          Container(
            margin: EdgeInsets.only(top: 6, left: 64, right: 64, bottom: 6),
            child: TextField(
              keyboardType: TextInputType.number,
              // controller: controllerNumero,
              onChanged: (String value) {
                setState(() {});
                /*    errorText = "";
                                inputNum = value; */
              },
            ),
          ),
          FlatButton(
            child: Container(
                width: 130,
                height: 50,
                color: Colors.black,
                child: Center(
                  child: Text(
                    "Guardar",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            onPressed: () {},
          ), */
        ],
      ),
    );
  }
}
