import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_app_bar.dart';

class PublisherPage extends StatefulWidget {
  const PublisherPage({super.key});

  @override
  State<PublisherPage> createState() => _PublisherPageState();
}

class _PublisherPageState extends State<PublisherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icons.menu,
        onLeadingPressed: () {},
        actionIcon: Icons.notifications_outlined,
        onActionPressed: () {},
        titleWidget: Text('Home Page'),
      ),
      body: Center(child: Text('Home Page Content Here')),
    );
  }
}
