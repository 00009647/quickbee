import 'package:ex1/pages/login.dart';
import 'package:ex1/widgets/colorful_container.dart';
import 'package:ex1/widgets/colorful_container_vertical.dart';
import 'package:ex1/widgets/image_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Color(0xFF18D191),
                  ),
                  child: Icon(
                    Icons.local_offer,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 50.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Color(0xFFFC6A7F),
                  ),
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Color(0xFFFFCE56),
                  ),
                  child: Icon(
                    Icons.local_car_wash,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 90.0, top: 10.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Color(0xFF45E0EC),
                  ),
                  child: Icon(
                    Icons.place,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 80.0),
                  child: Text(
                    "Quick Bee",
                    style: TextStyle(fontSize: 30.0, fontFamily: "Italic"),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 70.0,
                        decoration: BoxDecoration(
                            color: Color(0xFF18D191),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          "Sign In with Email",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontFamily: 'Schyler'),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 10.0, top: 10.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 70.0,
                      decoration: BoxDecoration(
                          color: Color(0xFF4364A1),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "Facebook",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
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
                      decoration: BoxDecoration(
                          color: Color(0xFFDF513B),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "Google",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.green,
        currentIndex: _bottomNavIndex,
        onTap: (int index) {
          setState(() {});
          _bottomNavIndex = index;
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.local_offer),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.message),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.notification_important),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Color(0XFF18D191)),
      ),
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Explore',
                      style: TextStyle(color: Colors.black, fontSize: 30.0),
                    )
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(right: 5.0),
                        height: 100.0,
                        child: ColourfulContainerVertical(
                          text: 'Motor',
                          icon: Icons.drive_eta,
                          color: Color(0xFF2BD093),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Container(
                          height: 100.0,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: ColorfulContainer(
                                  text: 'Classified',
                                  icon: Icons.local_offer,
                                  color: Color(0xFF2BD093),
                                ),
                              ),
                              Expanded(
                                child: ColorfulContainer(
                                  text: 'Services',
                                  icon: Icons.beenhere,
                                  color: Color(0xFFFC7B4D),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100.0,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: ColorfulContainer(
                                text: 'Properties',
                                icon: Icons.account_balance,
                                color: Color(0xFF53CEDB),
                              ),
                            ),
                            Expanded(
                              child: ColorfulContainer(
                                text: 'Jobs',
                                icon: Icons.art_track,
                                color: Color(0xFFF1B069),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Popular Trending',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    Expanded(
                      child: Text('View all ',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF2BD093),
                          ),
                          textAlign: TextAlign.end),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    SizedBox(width: 5.0),
                    // wu yerga qoyiladi!
                    Expanded(
                      child: ImageCard(
                        url:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9TmYIr2GdrNhfYmGzVS4E4Xjf3DDV9Hq07A&usqp=CAU',
                        text: 'Zebs',
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Expanded(
                      child: ImageCard(
                        url:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUfKkAw3WJUy_fow3DjoBxlnBlC_KxUceXeg&usqp=CAU',
                        text: 'Colors',
                      ),
                    ),

                    SizedBox(width: 5.0),

                    Expanded(
                      child: ImageCard(
                        url:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9R6WVd7lIJePzBBD2MiZRy511oh9ONh0H_w&usqp=CAU',
                        text: 'Flower',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Popular Trending',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    Expanded(
                      child: Text('View all ',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF2BD093),
                          ),
                          textAlign: TextAlign.end),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ImageCard(
                        url:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4QarHFR-ztiFkrO-eO7N7FP9cdH3XTEOBdg&usqp=CAU',
                        text: 'Doggy',
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Expanded(
                      child: ImageCard(
                        url:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxo_J9YUEU8zERXkOYJi6BkQKB8TbWnalHcg&usqp=CAU',
                        text: 'Photographer',
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Expanded(
                      child: ImageCard(
                        url:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4Q2EQTn5_Kyz9MSqhinHmkyFvNXeU8ZpLWQ&usqp=CAU',
                        text: 'Photographer',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Popular Trending',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    Expanded(
                      child: Text('View all ',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF2BD093),
                          ),
                          textAlign: TextAlign.end),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ImageCard(
                        url:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9TmYIr2GdrNhfYmGzVS4E4Xjf3DDV9Hq07A&usqp=CAU',
                        text: 'Zebra',
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Expanded(
                      child: ImageCard(
                        url:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUfKkAw3WJUy_fow3DjoBxlnBlC_KxUceXeg&usqp=CAU',
                        text: 'Zebra',
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Expanded(
                      child: Container(
                        height: 140.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9R6WVd7lIJePzBBD2MiZRy511oh9ONh0H_w&usqp=CAU'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Text(
                              'Flower',
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
