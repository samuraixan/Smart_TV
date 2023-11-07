import 'package:flutter/material.dart';
import 'package:smart_tv/model/movie_model.dart';

class MovieCard extends StatelessWidget {
  MovieCard({super.key});

  final List<MovieModel> movie = [
    MovieModel('Синий Жук', '10', 'assets/images/Card.png'),
    MovieModel('Домашняя игра', '6.9', 'assets/images/Card1.png'),
    MovieModel('Салют 7', '5.8', 'assets/images/Card2.png'),
    MovieModel('Поймай меня,\nесли сможешь', '7.0', 'assets/images/Card3.png'),
    MovieModel('Синий Жук', '10', 'assets/images/Card.png'),
    MovieModel('Домашняя игра', '6.9', 'assets/images/Card1.png'),
    MovieModel('Салют 7', '5.8', 'assets/images/Card2.png'),
    MovieModel('Поймай меня,\nесли сможешь', '7.0', 'assets/images/Card3.png'),
    MovieModel('Синий Жук', '10', 'assets/images/Card.png'),
    MovieModel('Домашняя игра', '6.9', 'assets/images/Card1.png'),
  ];


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movie.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 100,
                      height: 130,
                      child: Image.asset(
                        movie[index].image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.deepPurple,
                        ),
                        height: 25,
                        width: 30,
                        child: Center(
                            child: Text(
                              movie[index].number,
                              style: const TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                  ],
                ),
                Text(movie[index].name,
                    style: const TextStyle(color: Colors.white)),
              ],
            ),
          );
        },
      ),
    );
  }
}
