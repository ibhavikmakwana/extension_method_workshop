import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
          // TODO: Convert and Replace this ColoredBox widget into an extension
          child: ColoredBox(
            color: Colors.greenAccent,
            child: Text(
              'Extension Method',
              style: Theme.of(context).textTheme.headline6,
            ).padding16,
          ),
        ),
      ),
    );
  }
}

extension XWidget on Widget {
  Widget get padding16 {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: this,
    );
  }
}
