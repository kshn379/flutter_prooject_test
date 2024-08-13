import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent.shade100,
          title: const Text('Flutter의 CallBack'),
        ),
        body: const Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const TestWidget();
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Count : $value',
          style: const TextStyle(fontSize: 30),
        ),
        TestButton(addCounter),
      ],
    );
  }

  // void addCounter() => setState(() => ++value);
  void addCounter(int addValue) => setState(() => value = addValue + value);
}

class TestButton extends StatelessWidget {
  const TestButton(this.callback, {super.key});

  // final VoidCallback callback;
  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      child: InkWell(
        // onTap: () => callback.call(),
        onTap: () => callback.call(1),
        onDoubleTap: () => callback.call(5),
        onLongPress: () => callback.call(10),
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text(
              'Up Counter',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}