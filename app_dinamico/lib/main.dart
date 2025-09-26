import 'package:flutter/material.dart';

void main() {
  runApp(const Contador()); //roda a aplicação
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  //codar em dart aqui
  int _numero = 0;

  void aumentar(){
    setState(() {//função que atualiza o valor da variavel
      _numero++;
    });
  }

  void diminuir(){
    setState(() {
      if (_numero > 0){
         _numero--;
      }else{
        _numero = 0;
      }
    });
  }

  void resetar(){
    setState(() {
      _numero = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //fornece os componentes
      home: Scaffold( //divide a tela entre appbar e body
        appBar: AppBar(title:  Text("Contador da Lu",
          style: TextStyle(fontSize: 30,//tamannho
          color: Colors.white, //cor
          fontWeight: FontWeight.bold //negrito
          ),
        ),
          centerTitle: true, //deixa o titulo no centro
          backgroundColor: Colors.blue, //muda o plano de fundo
          toolbarHeight: 100,//aumenta o tamanho app dar

        ),
        body: Column(//elemento um abaixo do outro
          mainAxisAlignment: MainAxisAlignment.center,
          children: [//varios filinhos
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZUPOVhZkwI_UbbCKg-P9iWOVXa5USLh4csg&s"),

            Text("$_numero", style: TextStyle(fontSize: 100)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ), 
                  onPressed: (){
                  aumentar();
                  }, child: Icon(Icons.add)),// child é o texto do botão

                SizedBox(
                  width: 20,
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: (){
                  diminuir();
                  }, child: Icon(Icons.remove)),
                SizedBox(
                  width: 20,
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: (){
                  resetar();
                  }, child: Icon(Icons.restore)),
              ],
            )
          ],
        )
      )
    );
  }
}

