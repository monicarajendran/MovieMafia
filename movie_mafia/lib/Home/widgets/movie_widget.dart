import 'package:flutter/material.dart';

class MovieWidget extends StatefulWidget {
  const MovieWidget({Key? key}) : super(key: key);

  @override
  _MovieWidgetState createState() => _MovieWidgetState();
}

class _MovieWidgetState extends State<MovieWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(children: [
          // Movie image
          const Text("Movie image"),
          const Spacer(),
          // Movie details
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "Movie title (Year)",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text("Rating : 7/10", textAlign: TextAlign.left),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Expanded(
                        child: Text(
                      "Description:Moview fadfasd afdfdsfasdfasdfffasd gfhgfhgf",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
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
