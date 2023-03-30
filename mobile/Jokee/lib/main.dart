import 'dart:io';

import 'package:flutter/material.dart';
import 'package:joke/bottom_section.dart';
import 'package:joke/header.dart';
import 'package:joke/info_appbar.dart';
import 'package:joke/joke_container.dart';
import 'package:joke/logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jokee',
      theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
      ),
      home: MyHomePage(title: 'Jokee Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  int curr = 0;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            LogoContainer(),
            Info(),
          ],
        ),
      ),

      //Application Body
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            /// Header Section
            const HeaderJoke(),

            /// Joke Section
            JokeContainer(curr: widget.curr),
          ],
        ),
      ),

      // Disclaimer & Copyright
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height / 6,
        child: BottomSection(curr: widget.curr),
      ),
    );
  }
}
