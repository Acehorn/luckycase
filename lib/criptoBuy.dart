import 'dart:math';

import 'package:flutter/material.dart';
import 'package:luckycase/utils/constantes.dart';

import 'Commons/paginaCripto.dart';

class CriptoBuy extends StatefulWidget {
  @override
  _CriptoBuyState createState() => _CriptoBuyState();
}

class _CriptoBuyState extends State<CriptoBuy> {
  var rng = new Random();
  int monedaSuerte = 0;

  var bitcoinColor = Colors.yellow;
  var litecoinColor = Colors.cyan;
  var dogecoinColor = Colors.orange;
  var ethereumColor = Colors.deepPurple;
  var cardanoColor = Colors.lightBlue;
  var bittorrentColor = Colors.white;
  var manaColor = Colors.deepOrange;
  var xrpColor = Colors.blueAccent;

  @override
  void initState() {
    super.initState();

    monedaSuerte = rng.nextInt(100);
    print(monedaSuerte);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: monedaSuerte == 0
            ? bitcoinColor
            : monedaSuerte == 1
                ? bitcoinColor
                : monedaSuerte == 2
                    ? litecoinColor
                    : monedaSuerte == 3
                        ? bitcoinColor
                        : monedaSuerte == 4
                            ? litecoinColor
                            : monedaSuerte == 5
                                ? litecoinColor
                                : monedaSuerte == 13
                                    ? bittorrentColor
                                    : monedaSuerte == 67
                                        ? manaColor
                                        : monedaSuerte == 54
                                            ? xrpColor
                                            : monedaSuerte == 6
                                                ? bitcoinColor
                                                : monedaSuerte == 7
                                                    ? cardanoColor
                                                    : monedaSuerte == 8
                                                        ? bitcoinColor
                                                        : monedaSuerte == 9
                                                            ? dogecoinColor
                                                            : monedaSuerte >
                                                                        9 &&
                                                                    (monedaSuerte %
                                                                            2) ==
                                                                        0
                                                                ? bitcoinColor
                                                                : ethereumColor,
        centerTitle: true,
        title: Text(
          "Criptomonedas",
          style: TextStyle(color: Colors.black),
        ),
  
      ),
      body: monedaSuerte == 0
          ? bitcoinPage()
          : monedaSuerte == 1
              ? bitcoinPage()
              : monedaSuerte == 2
                  ? litecoinPage()
                  : monedaSuerte == 3
                      ? bitcoinPage()
                      : monedaSuerte == 4
                          ? litecoinPage()
                          : monedaSuerte == 5
                              ? litecoinPage()
                              : monedaSuerte == 13
                                  ? bittorrentPage()
                                  : monedaSuerte == 67
                                      ? manaPage()
                                      : monedaSuerte == 54
                                          ? xrpPage()
                                          : monedaSuerte == 6
                                              ? bitcoinPage()
                                              : monedaSuerte == 7
                                                  ? cardanoPage()
                                                  : monedaSuerte == 8
                                                      ? bitcoinPage()
                                                      : monedaSuerte == 9
                                                          ? dogecoinPage()
                                                          : monedaSuerte > 9 &&
                                                                  (monedaSuerte % 2) ==
                                                                      0 &&
                                                                  monedaSuerte !=
                                                                      13 &&
                                                                  monedaSuerte !=
                                                                      67 &&
                                                                  monedaSuerte !=
                                                                      54
                                                              ? bitcoinPage()
                                                              : ethereumPage(),
    );
  }

  bittorrentPage() {
    return CriptoPageVariable(
      color: bittorrentColor,
      iconPath: "lib/assets/bittorrentIcon.png",
      monedaTitle: "Bittorrent",
    );
  }

  manaPage() {
    return CriptoPageVariable(
      color: manaColor,
      iconPath: "lib/assets/manaIcon.png",
      monedaTitle: "Mana",
    );
  }

  xrpPage() {
    return CriptoPageVariable(
      color: xrpColor,
      iconPath: "lib/assets/xrpIcon.jpeg",
      monedaTitle: "XRP",
    );
  }

  bitcoinPage() {
    return CriptoPageVariable(
      color: bitcoinColor,
      iconPath: "lib/assets/criptomonedas.jpeg",
      monedaTitle: "Bitcoin",
    );
  }

  ethereumPage() {
    return CriptoPageVariable(
      color: ethereumColor,
      iconPath: "lib/assets/ethereumICONNEWNEW.jpeg",
      monedaTitle: "Ethereum",
    );
  }

  litecoinPage() {
    return CriptoPageVariable(
      color: litecoinColor,
      iconPath: "lib/assets/litecoinIcon.jpeg",
      monedaTitle: "Litecoin",
    );
  }

  dogecoinPage() {
    return CriptoPageVariable(
      color: dogecoinColor,
      iconPath: "lib/assets/dogeCoinIcon.jpeg",
      monedaTitle: "Dogecoin",
    );
  }

  cardanoPage() {
    return CriptoPageVariable(
      color: cardanoColor,
      iconPath: "lib/assets/cardanoNewIcon.jpeg",
      monedaTitle: "Cardano",
    );
  }
}
