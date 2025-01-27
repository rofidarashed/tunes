import 'package:flutter/material.dart';
import 'package:tunes/models/model.dart';

class TuneInfo extends StatelessWidget {
  const TuneInfo({super.key, required this.tune});
  final TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tune.playTune();
      },
      child: Container(
        width: double.infinity,
        color: tune.color,
      ),
    );
  }
}
