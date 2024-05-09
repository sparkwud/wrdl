import 'package:flutter/material.dart';
import 'package:wrdl/views/widgets/wordle_key.dart';

class WrdlKeyboard extends StatelessWidget {
  const WrdlKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i in 'qwertyuiop'.split('')) WrdlKey(i),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i in 'asdfghjkl'.split('')) WrdlKey(i),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i in '_zxcvbnm>'.split('')) WrdlKey(i),
          ],
        ),
      ],
    );
  }
}
