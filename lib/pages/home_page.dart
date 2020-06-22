import 'package:bloc_implementation/bloc/player_listing_bloc.dart';

import '../widgets/horizontal_bar.dart';
import '../services/reponsetory.dart';
import '../themes/themes.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  final PlayerRepository playerRepository;
  HomePage({this.playerRepository});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PlayerListingBloc _playerListingBloc;


  @override
  void initState() {
    _playerListingBloc = PlayerListingBloc(playerRepository: widget.playerRepository);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            'Football Players',
            style: appBarTextStyle,
          ),
        ),
        body: Column(
          children: <Widget>[
            HorizontalBar(),
            Text("Hi"),
            SizedBox(height: 10.0),
            // PlayerListing()
          ],
        ),
    );
  }
}
