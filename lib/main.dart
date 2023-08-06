import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/home_page.dart';
import 'package:provider_sample/timer_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
          create: (context) => TimerInfo(), child: const HomePage()),
    );
  }
}
