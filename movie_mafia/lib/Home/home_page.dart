import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_mafia/Home/widgets/movie_widget';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

List<Widget> data = [const Text("Home")];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 3, itemBuilder: (context, index) {
      return const MovieWidget();
    } 
    ,);
  }
}