import 'package:flutter/material.dart';
import 'package:smart_tv/model/top_movie_model.dart';

class TopMovieCard extends StatelessWidget {
  TopMovieCard({super.key});

  final List<TopMovieModel> topMovie = [
    TopMovieModel('assets/images/1.png', 'assets/images/image1.png'),
    TopMovieModel('assets/images/2.png', 'assets/images/image2.png'),
    TopMovieModel('assets/images/3.png', 'assets/images/image3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 190,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topMovie.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 190,
              width: 200,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(topMovie[index].number),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 150,
                      child: Image.asset(topMovie[index].image),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
