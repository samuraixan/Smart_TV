import 'package:flutter/material.dart';
import 'package:smart_tv/model/movie_model.dart';
import 'package:smart_tv/model/top_movie_model.dart';

class MyHomePage1 extends StatelessWidget {
  MyHomePage1({super.key});

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

  final List<TopMovieModel> topMovie = [
    TopMovieModel('assets/images/1.png', 'assets/images/image1.png'),
    TopMovieModel('assets/images/2.png', 'assets/images/image2.png'),
    TopMovieModel('assets/images/3.png', 'assets/images/image3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset('assets/images/tvoe.png', width: 70, height: 70),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 220,
                      width: 10,
                      child: Column(
                        children: [
                          Expanded(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.search))),
                          Expanded(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.home_outlined))),
                          Expanded(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.terminal))),
                          Expanded(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.tv))),
                          Expanded(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.favorite_border))),
                          Expanded(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.person_outline))),
                          const SizedBox(height: 10),
                          Expanded(
                              child: IconButton(
                                  onPressed: () {},
                                  icon:
                                  const Icon(Icons.arrow_upward_outlined))),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Container(
                  height: 190,
                  width: 160,
                  child: Column(
                    children: [
                      Container(
                          height: 80,
                          width: 80,
                          child: Image.asset('assets/images/djon_uik.png')),
                      const Text(
                          'Чтобы обрести свободу, киллер-изгой бросает\nвызов Правлению кланов. Самая зрелищная\nчасть стильной экшен-саги',
                          style: TextStyle(color: Colors.white),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis),
                      const SizedBox(height: 10),
                      Container(
                        height: 30,
                        width: 140,
                        child: Row(
                          children: [
                            Expanded(
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Смотреть'))),
                            const SizedBox(width: 10),
                            Expanded(
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white10),
                                    child: const Text('О фильме'))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  width: 120,
                  child:
                  Image.asset('assets/images/image.png', fit: BoxFit.cover),
                )
              ],
            ),
          ),
          Container(
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
          ),
          Image.asset('assets/images/top_10.png'),
          Container(
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
          ),
        ],
      ),
    );
  }
}
