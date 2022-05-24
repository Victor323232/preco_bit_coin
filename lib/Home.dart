import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _preco = "0";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Preço BitCoin"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset("images/logo.png"),
              Padding(padding: EdgeInsets.only(top: 30, bottom: 30),
              child: Text("R\$" + _preco ),
              ),
              Padding(padding: EdgeInsets.all(10),
                child:TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xffffc32b),),
                    onPressed:(){},
                    child: Text("Atualizar"),
                  )
                  )
            ],
          ),
        ),
      ),
    );
  }
}
