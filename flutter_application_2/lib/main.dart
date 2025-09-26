import 'package:flutter/material.dart';

//statelles -> tela estática
//statefull ->  tela dinamica(muda de valor)

void main() {
  runApp(const Home());
  //rodar o app
}

class Home extends StatelessWidget { // tela estática, digite "st" para selecionar seu tipo
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //prover os elementos/componentes para sua tela
        home: Scaffold(//separar a tela em duas partes, barra e conteudo
              appBar: AppBar(title: Text("Ola bem vindo, divos")),
              body:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ //filhos da coluna
                  Container(
                    width: 50, //pixel
                    height: 50, //pixel
                    //forma mais simples: Colors.blue,
                    //forma hexadecimal: Color(0xFF9238439), 0x é obrigatorio ter
                    decoration: BoxDecoration(
                      color: Color(0xF8CC44B5),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text("Olá", style: TextStyle(fontSize: 20, color: Colors.white), 
                    textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 50, //pixel
                    height: 50, //pixel
                    color: Color(0xF88F44CC), 
                    //forma mais simples: Colors.blue,
                    //forma hexadecimal: Color(0xFF9238439), 0x é obrigatorio ter
                  ),
                  Container(
                    width: 50, //pixel
                    height: 50, //pixel
                    color: Color(0xF82F5CB4), 
                    //forma mais simples: Colors.blue,
                    //forma hexadecimal: Color(0xFF9238439), 0x é obrigatorio ter
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          color: Color(0xFF21F3AD),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          color: Color(0xFF24A178),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          color: Color(0xFF266953),
                        ),
                      ],
                  )
                ],
              ),
              
        )
    );
  }
}

