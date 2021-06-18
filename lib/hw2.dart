import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Vertical List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 60,
              color: Colors.blue,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 600,
              // width: double.infinity,
              color: Colors.teal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        shape: BoxShape.circle,
                        boxShadow: const [
                          BoxShadow(blurRadius: 90),
                        ],
                      ),
                      child: Center(
                          child: Text(
                        'Hello World!',
                        style: TextStyle(fontSize: 25),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
