import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MovieMafia());
}

class MovieMafia extends StatefulWidget {
  const MovieMafia({ Key? key }) : super(key: key);

  @override
  _MovieMafiaState createState() => _MovieMafiaState();
}

class _MovieMafiaState extends State<MovieMafia> {

List<Widget> data = [const Text("Home")];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movie Mafia",
      home: Scaffold(
      appBar: AppBar(title: const Text("Movie Mafia")),
       body: CupertinoTabScaffold(tabBar: 
       CupertinoTabBar(items: const [ 
         BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Home"),
         BottomNavigationBarItem(icon: Icon(CupertinoIcons.star),label: "Favourites")
         ]), tabBuilder: (context, index) {
                  return CupertinoTabView(
      builder: (context) {
        return data[index];
      },);},
       ),
    ),
    );
  }
}