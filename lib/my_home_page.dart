import 'package:flutter/material.dart';
import 'package:smart_tv/widgets/movie_card.dart';
import 'package:smart_tv/widgets/navigation_panel.dart';
import 'package:smart_tv/widgets/top_movie_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Image.asset('assets/images/tvoe.png', width: 70, height: 70),
          ),
          const NavigationPanel(),
          MovieCard(),
          Image.asset('assets/images/top_10.png'),
          TopMovieCard(),
        ],
      ),
    );
  }
}
