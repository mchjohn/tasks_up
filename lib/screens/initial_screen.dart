import 'package:flutter/material.dart';

import '../components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tasks'),
      ),
      body: AnimatedOpacity(
        opacity: opacity ? 1 : 0,
        duration: const Duration(milliseconds: 600),
        child: ListView(
          children: const [
            Task(
              'Learn flutter',
              'https://img.icons8.com/fluency/512/flutter.png',
              3,
            ),
            Task(
              'Learn Kotlin',
              'https://img.icons8.com/color/512/kotlin.png',
              4,
            ),
            Task(
              'Learn Swift',
              'https://img.icons8.com/avantgarde/512/swift.png',
              5,
            ),
            SizedBox(height: 80.0),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacity = !opacity;
          });
        },
        child: opacity
            ? const Icon(Icons.visibility_off)
            : const Icon(Icons.visibility),
      ),
    );
  }
}
