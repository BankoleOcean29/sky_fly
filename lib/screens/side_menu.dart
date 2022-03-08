import 'package:flutter/material.dart';


class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: Drawer(
        child: Column(
          children: [
            Container(
                height: 180,
                color: Color(0XFF79B5E4),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image:AssetImage("images/ocean.jpg"),
                              fit: BoxFit.scaleDown),
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text('Bankole Ocean'),
                    )
                  ],
                )
              ),
            Container(
              child: Column(
                children:  [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Icon(Icons.home),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text('Home'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Icon(Icons.person),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text('My Profile'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Icon(Icons.settings),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text('Settings'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Icon(Icons.question_answer),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text('Support'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Icon(Icons.logout),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text('Sign out'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        )
    );
  }
}
