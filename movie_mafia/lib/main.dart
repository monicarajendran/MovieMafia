import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_mafia/Favourites/widgets/favourites_page.dart';
import 'package:movie_mafia/Home/home_page.dart';

void main() {
  runApp(const MovieMafia());
}

class MovieMafia extends StatefulWidget {
  const MovieMafia({Key? key}) : super(key: key);

  @override
  _MovieMafiaState createState() => _MovieMafiaState();
}

class _MovieMafiaState extends State<MovieMafia> {
  List<Widget> data = [const HomePage(), const FavouritePage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movie Mafia",
      home: Scaffold(
        appBar: AppBar(
            title: const Text("Movie Mafia"), backgroundColor: Colors.red[900]),
        body: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.home, color: Colors.white),
              icon: Icon(CupertinoIcons.home, color: Colors.grey),
              label: "Home",
            ),
            BottomNavigationBarItem(
                activeIcon: Icon(CupertinoIcons.square_favorites_alt,
                    color: Colors.white),
                icon: Icon(CupertinoIcons.square_favorites_alt,
                    color: Colors.grey),
                label: "Favourites")
          ], backgroundColor: Colors.red[900], activeColor: Colors.white),
          tabBuilder: (context, index) {
            return CupertinoTabView(
              builder: (context) {
                return data[index];
              },
            );
          },
        ),
      ),
    );
  }
}
