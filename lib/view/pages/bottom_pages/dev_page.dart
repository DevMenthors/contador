import 'package:flutter/material.dart';

class DevPage extends StatefulWidget {
  const DevPage({super.key});

  @override
  State<DevPage> createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Image.asset(
          'asset/dev_logo.png',
          width: MediaQuery.of(context).size.width / 3,
        ),
      ),
    );
  }
}
