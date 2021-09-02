import 'package:flutter/material.dart';

import 'package:portifolio/Documentos/sobre.dart';

import 'historico.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portifolio'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              Text(
                'Gabriel Ribeiro da Silva Santos',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Image.asset(
                '../imagens/gabriel_foto.jpeg',
                width: 200,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: ElevatedButton(
                    child: Row(
                      children: [
                        Icon(Icons.school),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          'Historico',
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HistoricoState(),
                          )
                          );
                    },
                  ),
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                ),
              ),
              Container(
                  child: ElevatedButton(
                    child: Row(
                      children: [
                        Icon(Icons.account_circle),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          'Sobre',
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sobre(),
                          )
                          );
                    },
                  ),
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
