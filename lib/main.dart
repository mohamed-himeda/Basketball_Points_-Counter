import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(BasketballPointCounter());
}
class BasketballPointCounter extends StatefulWidget {
  @override
  State<BasketballPointCounter> createState() => _BasketballPointCounterState();
}
class _BasketballPointCounterState extends State<BasketballPointCounter> {
  int teamAPoints=0;
  int teamBPoints=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Points Counter',
              style: TextStyle(fontSize: 23),
            ),
            backgroundColor: Colors.orange,
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 500,
                      child: Column(
                        children: [
                          Text(
                            'Team A',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '$teamAPoints',
                            style: TextStyle(fontSize: 150),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Colors.orange,
                              ),
                              minimumSize: MaterialStatePropertyAll(
                                Size(150, 50),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                teamAPoints++;
                              });
                            },
                            child: Text(
                              'Add 1 Point',
                              style: TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                        const  SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.orange),
                              minimumSize: MaterialStatePropertyAll(
                                Size(150, 50),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                teamAPoints+=2;
                              });
                            },
                            child: Text(
                              'Add 2 Point',
                              style: TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.orange),
                              minimumSize: MaterialStatePropertyAll(
                                Size(150, 50),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                teamAPoints+=3;
                              });
                            },
                            child: Text(
                              'Add 3 Point',
                              style: TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                 const  SizedBox(
                    height: 500,
                     child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 15,
                        endIndent: 80,
                      ),
                   ),
                    SizedBox(
                      height: 500,
                      child: Column(
                        children: [
                          Text(
                            'Team B',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '$teamBPoints',
                            style: TextStyle(fontSize: 150),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.orange),
                              minimumSize:
                                  MaterialStatePropertyAll(Size(150, 50)),
                            ),
                            onPressed: () {
                              setState(() {
                                teamBPoints++;
                              });
                            },
                            child: Text(
                              'Add 1 Point',
                              style: TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                         const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.orange),
                              minimumSize:
                                  MaterialStatePropertyAll(Size(150, 50)),
                            ),
                            onPressed: () {
                              setState(() {
                                teamBPoints+=2;
                              });
                            },
                            child: Text(
                              'Add 2 Point',
                              style: TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                        const  SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.orange),
                              minimumSize:
                                  MaterialStatePropertyAll(Size(150, 50)),
                            ),
                            onPressed: () {
                              setState(() {
                                teamBPoints+=3;
                              });
                            },
                            child: Text(
                              'Add 3 Point',
                              style: TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange),
                    minimumSize: MaterialStatePropertyAll(
                      Size(220, 50),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      teamAPoints=0;
                      teamBPoints=0;
                    });
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
    );
  }
}