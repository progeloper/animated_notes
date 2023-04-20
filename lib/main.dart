import 'package:animated_notes/palette.dart';
import 'package:animated_notes/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
void main() {
  runApp(const MyApp());
}



class MyApp extends ConsumerStatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Palette.lightModeAppTheme,
      debugShowCheckedModeBanner: false,
      home: HomePage(filters: 0,),
    );
  }
}
