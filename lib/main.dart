import 'package:bloc_implementation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'services/reponsetory.dart';

void main() {
  PlayerRepository _repository = PlayerRepository();
  runApp(MyApp(
    playerRepository: _repository,
  ));
}

class MyApp extends StatelessWidget {
  final PlayerRepository playerRepository;

  MyApp({Key key, this.playerRepository});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloc Implementation',
      // home: HomePage(playerRepository: playerRepository),
      home: HomePage(playerRepository: playerRepository,),
    );
  }
}
