import 'package:demo_final/neu_box.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // ignore: prefer_const_constructors
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: const NeuBox(child: Icon(Icons.arrow_back)),
                  ),
                  const Text('P L A Y L I S T'),
                  const SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuBox(child: Icon(Icons.menu)),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              NeuBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('lib/images/npcb.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Sushin Shyam',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 136, 126, 126)),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'ASSAULT',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Color.fromARGB(255, 191, 23, 23),
                            size: 32,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('3:17'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('4.23')
                ],
              ),
              const SizedBox(height: 25),
              NeuBox(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.8,
                  progressColor: const Color.fromARGB(255, 59, 147, 61),
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 75,
                child: Row(
                  children: const [
                    Expanded(
                      child: NeuBox(
                        child: Icon(
                          Icons.skip_previous,
                          size: 30,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: NeuBox(
                        child: Icon(
                          Icons.play_arrow,
                          size: 30,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: NeuBox(
                          child: Icon(
                            Icons.skip_next,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
