import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_mafia/Home/models/movie.dart';
import 'package:movie_mafia/Home/widgets/movie_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:movie_mafia/api_key';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> data = [const Text("Home")];
  List<Movie> movieDataList = [];
  @override
  void initState() {
    super.initState();
    fetchMovieData();
  }

  void fetchMovieData() async {
    final headers = {
      'accept': 'application/json',
      'Authorization': 'Bearer $token',
    };

    final url = Uri.parse(
        'https://api.themoviedb.org/3/movie/now_playing?language=en-US&page=1');

    final response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      if (jsonData['results'] != null && jsonData['results'] is List) {
        List<dynamic> results = jsonData['results'];

        for (var result in results) {
          if (result['title'] != null &&
              result['overview'] != null &&
              result['vote_average'] is double &&
              result['poster_path'] != null) {
            movieDataList.add(Movie(result["title"], result["vote_average"],
                result["overview"], result["poster_path"]));
          }
        }
        setState(() {});
      }
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red[900],
      child: ListView.builder(
        itemCount: movieDataList.length,
        itemBuilder: (context, index) {
          return MovieWidget(movie: movieDataList[index]);
        },
      ),
    );
  }
}
