import 'package:flutter/material.dart';
import 'package:tunes/components/tune_info.dart';

import 'colors/colors.dart';
import 'models/model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: note1, tune: 'note1.wav'),
    TuneModel(color: note2, tune: 'note2.wav'),
    TuneModel(color: note3, tune: 'note3.wav'),
    TuneModel(color: note4, tune: 'note4.wav'),
    TuneModel(color: note5, tune: 'note5.wav'),
    TuneModel(color: note6, tune: 'note6.wav'),
    TuneModel(color: note7, tune: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        title: const Text(
          'Flutter Tunes',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
          children: List.generate(tunes.length, (int index) {
        return Expanded(
          child: TuneInfo(tune: tunes[index]),
        );
      })),
    );
  }
}
