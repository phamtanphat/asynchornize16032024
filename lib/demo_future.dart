import 'dart:async';
import 'dart:ffi';
import 'dart:math';

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

   // 3 + 2 - 1 * 5
   //  sum(3, 2).then((tong) {
   //    minus(tong, 1).then((hieu) {
   //      multiplication(hieu, 5).then((result) {
   //        print(result);
   //      });
   //    });
   //  });

    // sum(3, 1)
    //     .then((tong) => minus(tong as int, 1))
    //     .then((hieu) => multiplication(hieu, 5))
    //     .then((result) {
    //       return Future.error(Exception("abc"));
    //     })
    //     .catchError((error) => print(error));

    calculator2().then((value) => print(value)).catchError((error) => print(error));
  }

  Future<int> calculator2() {
    Completer<int> completer = Completer();
    Timer(const Duration(seconds: 3), () {
      completer.completeError(Exception("abc"));
    });

    return completer.future;
  }

  Future<int> calculator() async {
    try {
      var tong = Random.secure().nextBool() ? throw Exception("abc") : await sum(3, 1);
      var hieu = await minus(tong, 1);
      var result = await multiplication(hieu, 5);
      return result;
    } catch (e) {
      print(e.toString());
      return Future(() => 0);
    }
  }

  Future<int> sum(int a, int b) {
    return Future.delayed(Duration(seconds: 1), () => a + b);
  }

  Future<int> minus(int a, int b) {
    return Future.delayed(Duration(seconds: 1), () => a - b);
  }

  Future<int> multiplication(int a, int b) {
    return Future.delayed(Duration(seconds: 1), () => a * b);
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
