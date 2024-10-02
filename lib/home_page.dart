import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const alucard = Hero(
      tag: 'Hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('lib/assets/leon-avatar.jpg'),
        ),
      ),
    );

    const welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Bem vindo Leon S. Kennedy',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    const lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Leon S. Kennedy. Informações Classificadas.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.deepPurple,
            Colors.pinkAccent,
          ],
        ),
      ),
      child: const Column(
        children: <Widget>[
          alucard,
          welcome,
          lorem,
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Banco de Dados RE'),
      ),
      body: body,
    );
  }
}
