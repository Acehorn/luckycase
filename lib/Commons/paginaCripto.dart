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
      color: Colors.black87,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            child: Text(
              "¡En este momento debes invertir en " + widget.monedaTitle + "!",
              style: TextStyle(color: widget.color),
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
            child: Text("Cantidad sugerida", style: TextStyle(color: widget.color),),
          ),
          Container(
            margin: EdgeInsets.only(top: 6, left: 64, right: 64, bottom: 6),
            alignment: Alignment.center,
            child: Text(currencyMXN.format(nS),
                style: TextStyle(fontSize: 25, color: widget.color)),
          ),
        ],
      ),
    );
  }
}
