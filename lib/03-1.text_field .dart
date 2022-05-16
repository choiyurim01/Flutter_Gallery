import 'package:flutter/material.dart';
import 'package:flutter_gallery/01.appbar.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const Text());

class Text extends StatelessWidget {
  const Text({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Text Field',
      home: TextPage(),
    );
  }
}

class TextPage extends StatefulWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Flexible(
                child: TextField(
                  controller: _textController,
                ))
          ],
        ),
      )
    );
  }
}




