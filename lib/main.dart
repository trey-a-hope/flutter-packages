import 'package:flutter/material.dart';
import 'package:simple_page_widget/ui/simple_page_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// Key that holds the current state of the scaffold.
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) => SimplePageWidget(
        scaffoldKey: _scaffoldKey,
        leftIconButton: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            debugPrint('leftIconButton');
          },
        ),
        rightIconButton: IconButton(
          icon: const Icon(Icons.person),
          onPressed: () {
            debugPrint('rightIconButton');
          },
        ),
        title: 'Simple Page Widget',
        child: const Center(
          child: Text(
            'Center',
          ),
        ),
      );
}
