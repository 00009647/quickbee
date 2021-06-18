import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Flags';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 80,
                color: Colors.blue,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          'https://toppng.com/uploads/preview/crescent-moon-png-11527947119wayzhysxey.png'),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.white),
                              Icon(Icons.star, color: Colors.white),
                              Icon(Icons.star, color: Colors.white),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.white),
                              Icon(Icons.star, color: Colors.white),
                              Icon(Icons.star, color: Colors.white),
                              Icon(Icons.star, color: Colors.white),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.white),
                              Icon(Icons.star, color: Colors.white),
                              Icon(Icons.star, color: Colors.white),
                              Icon(Icons.star, color: Colors.white),
                              Icon(Icons.star, color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.red,
                height: 7,
              ),
              Container(
                height: 80,
                color: Colors.white,
              ),
              Container(
                color: Colors.red,
                height: 7,
              ),
              Container(
                height: 80,
                color: Colors.green,
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 200,
                        height: 100,
                        color: Colors.blue[900],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 18,
                            width: 200,
                            color: Colors.red,
                          ),
                          Container(
                            height: 18,
                            width: 200,
                            color: Colors.white,
                          ),
                          Container(
                            height: 18,
                            width: 200,
                            color: Colors.red,
                          ),
                          Container(
                            height: 18,
                            width: 200,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 18,
                    color: Colors.red,
                  ),
                  Container(
                    height: 18,
                    color: Colors.white,
                  ),
                  Container(
                    height: 18,
                    color: Colors.red,
                  ),
                  Container(
                    height: 18,
                    color: Colors.white,
                  ),
                  Container(
                    height: 18,
                    color: Colors.red,
                  ),
                  Container(
                    height: 18,
                    color: Colors.white,
                  ),
                  Container(
                    height: 18,
                    color: Colors.red,
                  ),
                  Container(
                    height: 18,
                    color: Colors.white,
                  ),
                  Container(
                    height: 18,
                    color: Colors.red,
                  ),
                  Container(
                    height: 18,
                    color: Colors.white,
                  ),
                  Container(
                    height: 18,
                    color: Colors.red,
                  ),
                  Container(
                    height: 18,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
