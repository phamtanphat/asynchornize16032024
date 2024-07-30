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

   // 3 + 2 - 1 * 5
   //  sum(3, 2).then((tong) {
   //    minus(tong, 1).then((hieu) {
   //      multiplication(hieu, 5).then((result) {
   //        print(result);
   //      });
   //    });
   //  });

    sum(3, 1)
        .then((tong) => minus(tong as int, 1))
        .then((hieu) => multiplication(hieu, 5))
        .then((result) {
          throw Exception("abc");
        })
        .catchError((error) => print("pphat"));
  }

  Future<num> sum(int a, dynamic b) {
    return Future.delayed(Duration(seconds: 1), () {
      return a + (b as num);
    });
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
