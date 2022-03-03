import 'package:flutter/material.dart';
import 'package:sky_fly/components/text_field.dart';

class FlightSelectionPage extends StatelessWidget {
  const FlightSelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Route'),
              Tab(text: 'Flight'),
              Tab(text: 'Seat'),
              Tab(text: 'Checkout'),
            ],
          ),
          title: Text('Add Flight'),
        ),body: const TabBarView(
        children: [
          RouteTextField(hintText: 'From', icon: Icon(Icons.airplanemode_active),),
          RouteTextField(hintText: 'From', icon: Icon(Icons.airplanemode_active),),
          RouteTextField(hintText: 'From', icon: Icon(Icons.airplanemode_active),),
          RouteTextField(hintText: 'From', icon: Icon(Icons.airplanemode_active),),
        ],
      ),
      ),
    );
  }
}
