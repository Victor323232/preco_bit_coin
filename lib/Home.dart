import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Preço BitCoin"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(40)),
            Image.asset("images/logop.png"),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xffffc32b),
              ),
                onPressed:(){},
                child: Text("Atualizar"))
          ],
        ),
      ),
    );
  }
}
