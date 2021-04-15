import 'package:flutter/material.dart';
import 'package:luckycase/loteriaPage.dart';

class LuckyPage extends StatefulWidget {
  LuckyPage({Key key}) : super(key: key);

  @override
  _LuckyPageState createState() => _LuckyPageState();
}

class _LuckyPageState extends State<LuckyPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Luckycase"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListaNumeros()),
                );
              },
              child: Container(
                  height: size.height * 0.2,
                  margin: EdgeInsets.fromLTRB(25, 25, 25, 25),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('lib/assets/mayor3800.jpeg')))),
            ),
          ),
        ],
      ),
    );
  }
}
