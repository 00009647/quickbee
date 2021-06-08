import 'package:flutter/material.dart';

class ColourfulContainerVertical extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;

  const ColourfulContainerVertical({
    @required this.text,
    @required this.color,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: Container(
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Color(0xFFFD7384),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.drive_eta,
                color: Colors.white,
              ),
              Text(
                'Motor',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
