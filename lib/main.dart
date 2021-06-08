import 'package:ex1/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}







// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   final title = 'My title ';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: title,
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: GridView.count(
//           crossAxisCount: 10,
//           children: List.generate(100, (index) {
//             return Center(
//               child: Text(
//                 'some text $index + 1',
//                 style: Theme.of(context).textTheme.headline6,
//               ),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }
