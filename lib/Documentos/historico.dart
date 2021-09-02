import 'package:flutter/material.dart';

class HistoricoState extends StatelessWidget {
  Widget _buildPage(String text, String asset) {
    return Container(
      child: Container(
        width: 200,
        height: 200,
        alignment: Alignment.topCenter,
        child: Text(text,
            style: TextStyle(
              fontSize: 38.0,
              color: Colors.black
            )
            ),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(asset),
            scale: 2,
          )
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Histórico'),
      ),
        body: PageView(
      children: [
        _buildPage("Site Html", "../imagens/html.jpg"),
        _buildPage("Css", "../imagens/css.JPG"),
        _buildPage("Bootstrap", "../imagens/bootstrap.JPG"),
        _buildPage("CalcTudo Javascript", "../imagens/javascript.JPG"),
        _buildPage("Projeto React Native", "../imagens/react.jpeg"),
      ],
    ));
  }
}
