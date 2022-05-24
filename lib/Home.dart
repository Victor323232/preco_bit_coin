import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _preco = "0";
  void _recuperarPreco () async {
      String url = "https://blockchain.info/ticker";
      http.Response response = await http.get(url); //aguarda essa consulta
     Map<String, dynamic> rotorno = jsonDecode(response.body);

     setState(() {
       _preco = rotorno ["BRL"] ["buy"].toString();
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Preço BitCoin"),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Padding(padding: EdgeInsets.only(top: 30, bottom: 30),
              child: Text("R\$" + _preco,
              style: TextStyle(
                fontSize: 35
              ),
              ),

              ),
              Padding(padding: EdgeInsets.all(0),
                child:TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.orange,
                     padding: EdgeInsets.fromLTRB(30, 10, 30, 15)
                    ),
                    onPressed:_recuperarPreco,
                    child: Text("Atualizar",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                    ),
                  )
                  )
            ],
          ),
        ),
      ),
    );
  }
}
