import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp -> fornece os componentes
    return MaterialApp(
      // Scaffold -> separa entre appbar e body
      home: Scaffold(
        appBar: AppBar(title:  Text("Flutter Conatiners", style: TextStyle(fontSize: 30, color: Colors.white)),
        centerTitle: true,
        backgroundColor:Color(0xF8CC44B5) ,
        ),
        body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ //varios componentes (lista de filhos)
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Color(0xF8CC44B5),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text("1", style: TextStyle(fontSize: 30, color: Colors.white), 
                  textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Color(0xF8CC44B5),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(  
                  child: Text("2", style: TextStyle(fontSize: 30, color: Colors.white), 
                  textAlign: TextAlign.center,
                  ),
                )
              )
            ],
           ),
           SizedBox(
                height: 50,
            ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xF8CC44B5),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(  
                    child: Text("3", style: TextStyle(fontSize: 30, color: Colors.white), 
                      textAlign: TextAlign.center,
                    ),
                  )
                ),
                SizedBox(
                  width: 50,
                ),
                 Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xF8CC44B5),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(  
                    child: Text("4", style: TextStyle(fontSize: 30, color: Colors.white), 
                      textAlign: TextAlign.center,
                    ),
                  )
                ),
              ],
           )
          ],
        )
      )
    );
  }
}
