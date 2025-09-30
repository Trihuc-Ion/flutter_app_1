import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icons.menu,
        onLeadingPressed: () {},
        actionIcon: Icons.notifications,
        onActionPressed: () {},
      ),
      body: Center(child: Text('Home Page Content Here')),
    );
  }
}
