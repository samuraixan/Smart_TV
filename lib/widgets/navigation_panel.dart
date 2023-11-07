import 'package:flutter/material.dart';

class NavigationPanel extends StatelessWidget {
  const NavigationPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
