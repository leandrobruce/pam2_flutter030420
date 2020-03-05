import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: TelaPrincipal(),
    ));

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Ir para a segunda tela"),
              padding: EdgeInsets.all(15),
              onPressed: () {
                /**
                 * Para navegarmos entre tela utilizando o Flutter existe uma
                 * classe que é responsável por realizar esse procedimento:
                 * a classe Navigator
                 *
                 * A classe Navigator possui dois métodos principais para a
                 * navegação entre tela: os métodos push e pop.
                 *
                 * O método push abre uma nova tela e a insere na pilha de
                 * telas da aplicação. Enquanto o método pop removo a tela
                 * atual da pilha de telas da aplicação.
                 *
                 * O método push possui dois argumentos obrigatórios: context
                 * e route; O argumento context é o contexto da aplicação
                 * enquanto o route é a rota para a nova tela
                 *
                 * O context informa qual o contexto da tela em que estamos.
                 * O route diz qual é a nota tela que será aberta
                 * */
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TelaSecundaria(
                              batata: "Potato",
                            )));
              },
            )
          ],
        ),
      ),
    );
  }
}
