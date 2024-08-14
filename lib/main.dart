import 'dart:ffi';

import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent.shade100,
          title: const Text('Flutter에서 외부 라이브러리 사용'),
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
    return RandomWords();
  }
}

class RandomWords extends StatelessWidget {
  const RandomWords({super.key});

  @override
  Widget build(BuildContext context) {
    final wordList = generateWordPairs().take(5).toList();
    final widgets = wordList
        .map(
          (word) => Text(
            word.asCamelCase,
            style: const TextStyle(fontSize: 32),
          ),
        )
        .toList();

    return Column(
      children: widgets,
    );
  }
}
