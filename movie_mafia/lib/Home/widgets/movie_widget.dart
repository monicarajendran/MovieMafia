import 'package:flutter/material.dart';
import 'package:movie_mafia/Home/models/movie.dart';

class MovieWidget extends StatefulWidget {
  final Movie movie;

  const MovieWidget({Key? key, required this.movie}) : super(key: key);
  @override
  _MovieWidgetState createState() => _MovieWidgetState();
}

class _MovieWidgetState extends State<MovieWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Container(
        child: Row(children: [
          // Movie image
          // const Text("Movie image"),

          Image.network(
              'https://image.tmdb.org/t/p/original${widget.movie.poster_path}'),

          // Movie details
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  widget.movie.title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Rating : ${widget.movie.vote_average}",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Expanded(
                    child: Text(
                  "Overview : ${widget.movie.overview}",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
              ),
            ]),
          )
        ]),
        height: 150,
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      ),
    );
  }
}
