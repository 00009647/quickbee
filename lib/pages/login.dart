import 'package:ex1/widgets/stacked_icons.dart';
import 'package:flutter/material.dart';
import 'home/home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Color(0XFF18D191)),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            StackedIcons(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 80.0),
                  child: Text(
                    "Quick Bee",
                    style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: "Italic",
                        color: Colors.lightBlueAccent),
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 10.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeView(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 70.0,
                        decoration: BoxDecoration(
                            color: Color(0XFF18D191),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          "LogIn",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 20.0, top: 10.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 70.0,
                      child: Text(
                        "Forgot password?",
                        style:
                            TextStyle(fontSize: 17.0, color: Color(0XFF18D191)),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    new Text(
                      'Create Account',
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Color(0XFF18D191),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
