import 'dart:ffi';

import 'package:flutter/material.dart';

class DemoFuturePage extends StatefulWidget {
  const DemoFuturePage({super.key});

  @override
  State<DemoFuturePage> createState() => _DemoFuturePageState();
}

class _DemoFuturePageState extends State<DemoFuturePage> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Cho tat ca future co gia tri moi tra ve
    // Future futureResult = Future.wait([
    //   Future.delayed(Duration(seconds: 3), () => 1),
    //   Future.delayed(Duration(seconds: 2), () => 2)
    // ]);
    //
    // futureResult.then((listValue) => print(listValue));

    // Tra ve ket qua cua future hoang thanh som nhat
    // Future futureResult = Future.any([
    //   Future.delayed(Duration(seconds: 3), () => 1),
    //   Future.delayed(Duration(seconds: 2), () => 2)
    // ]);
    //
    // futureResult.then((value) => print(value));
  }

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
