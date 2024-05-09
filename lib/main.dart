
import 'package:board_website/State/Provider.dart';
import 'package:board_website/View/Board_page.dart';
import 'package:board_website/View/websited_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Provider_(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Board_Page(),
        'second': (context) => Websites_Page(),
      },
    ),
  ));
}