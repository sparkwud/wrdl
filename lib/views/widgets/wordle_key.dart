import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WrdlKey extends ConsumerWidget {
  final String letter;
  const WrdlKey(this.letter, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget keyCap;
    double width = 50;
    if (letter == '_') {
      keyCap = const Icon(
        Icons.keyboard_return,
        size: 20,
      );
    } else if (letter == '>') {
      keyCap = const Icon(
        Icons.backspace_outlined,
        size: 20,
      );
    } else {
      width = 34;
      keyCap = Text(
        letter.toUpperCase(),
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      );
    }

    return InkWell(
      onTap: () {},
      child: Container(
        width: width,
        height: 60,
        alignment: Alignment.center,
        //padding: EdgeInsets.all(5),
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromRGBO(105, 105, 105, 1),
        ),
        child: keyCap,
      ),
    );
  }
}
