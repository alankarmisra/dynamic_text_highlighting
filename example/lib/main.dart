import 'package:flutter/material.dart';
import 'package:dynamic_text_highlighting/dynamic_text_highlighting.dart';

void main() {
  runApp(DTHExampleApp());
}

class DTHExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      home: DTHExample(),
    );
  }
}

class DTHExample extends StatefulWidget {
  DTHExample({Key? key}) : super(key: key);

  @override
  _DTHExampleState createState() => _DTHExampleState();
}

class _DTHExampleState extends State<DTHExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DynamicTextHighlighting(
            text:
                'This is the demo text. The specified texts will be highlighted.',
            highlights: const ['this', 'demo', 'text', 'highlighted'],
            color: Colors.yellow,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ),
            caseSensitive: false,
          ),
        ),
      ),
    );
  }
}
