import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/timer_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //int initialValue = 60;

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (t) {
      var timerInfo = Provider.of<TimerInfo>(context, listen: false);
      timerInfo.updateRemainingTime();
      //setState(() {
      //  initialValue--;
      //});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/stopwatch.png'),
            const SizedBox(
              height: 32,
            ),
            Consumer<TimerInfo>(
              builder: (context, data, child) {
                return Text(
                  data.getRemainingTime()?.toString() ?? '',
                  style: TextStyle(
                    fontSize: 72,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
