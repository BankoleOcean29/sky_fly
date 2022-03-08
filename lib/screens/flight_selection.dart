
import 'package:flutter/material.dart';
import 'package:sky_fly/screens/side_menu.dart';

class FlightSelectionPage extends StatefulWidget {

  const FlightSelectionPage({Key? key}) : super(key: key);

  @override
  State<FlightSelectionPage> createState() => _FlightSelectionPageState();
}

class _FlightSelectionPageState extends State<FlightSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0XFF4188C6),
        endDrawer: NavDrawer(),
        appBar: AppBar(
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Route'),
              Tab(text: 'Flight'),
              Tab(text: 'Checkout'),
            ],
          ),
          title: const Center(child: Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Text('Add Flight'),
          )),
          leading: const Icon(Icons.arrow_back),
        ),
        body: TabBarView(
          children: [
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 40, right: 40),
                child: TextFormField(
                  style: const TextStyle(color: Color(0XFFFACBA0)),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.local_airport,
                      color: Color(0XFFFACBA0),
                    ),
                    hintText: 'From',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFFFACBA0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 40, right: 40),
                child: TextFormField(
                  style: const TextStyle(color: Color(0XFFFACBA0)),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.local_airport,
                      color: Color(0XFFFACBA0),
                    ),
                    hintText: 'To',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFFFACBA0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 40, right: 40),
                child: TextFormField(
                  style: const TextStyle(color: Color(0XFFFACBA0)),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.date_range,
                      color: Color(0XFFFACBA0),
                    ),
                    hintText: 'Date',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFFFACBA0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 40, right: 40),
                child: TextFormField(
                  style: const TextStyle(color: Color(0XFFFACBA0)),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.people,
                      color: Color(0XFFFACBA0),
                    ),
                    hintText: 'Traveller',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFFFACBA0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 40, right: 40),
                child: TextFormField(
                  style: const TextStyle(color: Color(0XFFFACBA0)),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.airline_seat_legroom_extra,
                      color: Color(0XFFFACBA0),
                    ),
                    hintText: 'Class',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFFFACBA0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 260),
                child: ElevatedButton.icon(onPressed: (){},

                  style: ElevatedButton.styleFrom(primary: Color(0XFFFACBA0)),
                  icon: Icon(Icons.navigate_next, color: Colors.black, size: 40,),
                  label: Text(''),),
              ),
            ]),


            SafeArea(
              child: Scaffold(
                backgroundColor: const Color(0XFF4188C6),
                body: Padding(
                  padding: const EdgeInsets.only(top: 10.0, right: 10, left: 10),
                  child: Container(
                    color: const Color(0XFF6AADE1),
                    width: 500,
                    height: 250,
                    child: Stack(
                    children: const [
                      Padding(
                          padding:  EdgeInsets.only(left: 20.0, top: 15),
                          child: Text('GHA', style: TextStyle(fontSize: 25),),
                        ),
                      Padding(
                        padding: EdgeInsets.only(top: 45.0, left: 20),
                        child: Text('Ghana', style: TextStyle(fontSize: 15),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0, left: 315),
                        child: Text('NGN', style: TextStyle(fontSize: 25),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 45.0, left: 315),
                        child: Text('Nigeria', style: TextStyle(fontSize: 15),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 100.0, left: 20),
                        child: Text('Date'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 120.0, left: 20),
                        child: Text('June 9', style: TextStyle(fontSize: 20),),
                      ),
                      Center(child: Padding(
                        padding: EdgeInsets.only(bottom: 50.0),
                        child: Text('1hr 20 m, 6:30am'),
                      )),

                      Padding(
                        padding: EdgeInsets.only(top: 100.0, left: 315),
                        child: Text('Flight No'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 120.0, left: 315),
                        child: Text('TB75'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 190.0, left: 200),
                        child: Text('Ticket Price'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 190.0, left: 320),
                        child: Text('#25,000'),
                      ),
                    ]
                    ),
                  ),
                ),
              ),
            ),


            Scaffold(
              backgroundColor: const Color(0XFF4188C6),
              body: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
                child: Container(
                  width: 500,
                  height: 500,
                  color: const Color(0XFF6AADE1),
                  child: Stack(
                    children:  const [
                    Padding(
                      padding:  EdgeInsets.only(left: 20.0, top: 15),
                      child: Text('GHA', style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 45.0, left: 20),
                      child: Text('Ghana', style: TextStyle(fontSize: 15),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0, left: 315),
                      child: Text('NGN', style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 45.0, left: 315),
                      child: Text('Nigeria', style: TextStyle(fontSize: 15),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 100.0, left: 20),
                      child: Text('Date'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 120.0, left: 20),
                      child: Text('June 9', style: TextStyle(fontSize: 20),),
                    ),
                    Center(child: Padding(
                      padding: EdgeInsets.only(bottom: 330.0),
                      child: Text('1hr 20 m, 6:30am'),
                    )),

                    Padding(
                      padding: EdgeInsets.only(top: 100.0, left: 315),
                      child: Text('Flight No'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 120.0, left: 315),
                      child: Text('TB75'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 160.0, left: 240),
                      child: Text('Total Price'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 160.0, left: 320),
                      child: Text('#25,000'),
                    ),
                      Padding(
                        padding: EdgeInsets.only(top: 190.0),
                        child: Image(image: AssetImage('images/image_3.png'),),
                      )

                  ]),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
