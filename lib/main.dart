import 'package:flutter/material.dart';

void main() {
  runApp( const SkyFly());
}

class SkyFly extends StatefulWidget {
  const SkyFly({Key? key}) : super(key: key);

  @override
  _SkyFlyState createState() => _SkyFlyState();
}

class _SkyFlyState extends State<SkyFly> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue[300],
          body: Column(
            children: [
              Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 70.0),
                    child: Text(
                      'SkyFly',
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.orangeAccent),
                    ),
                  )),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                  ),
                  child:
                  Text('Welcome Onboard!', style: TextStyle(fontSize: 20)),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text('Let\'s get you started'),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: TextField(
                    decoration:
                    InputDecoration(hintText: 'Full name'),
                  ),
                ),
              ),
              Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                    child: Expanded(
                      child: TextField(
                          decoration:
                          InputDecoration(hintText: 'Email address')),
                    ),)
              ),
              Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                    child:  TextField(
                        decoration:
                        InputDecoration(hintText: 'Password')),)),
              Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                    child: TextField(
                        decoration:
                        InputDecoration(hintText: 'Confirm your password')),)),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(onPressed: (){
                    print('tes');
                  }, child: Text('Sign Up'), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orangeAccent)) ,),
                ),
              ),
              Text('Or')
            ],
          ),

        ),
      ),
    );
  }
}

