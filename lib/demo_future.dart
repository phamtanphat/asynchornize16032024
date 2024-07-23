import 'package:flutter/material.dart';

class DemoFuturePage extends StatefulWidget {
  const DemoFuturePage({super.key});

  @override
  State<DemoFuturePage> createState() => _DemoFuturePageState();
}

class _DemoFuturePageState extends State<DemoFuturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Future page"),
      ),
      body: Container()
    );
  }
}
