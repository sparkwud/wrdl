import 'package:flutter/material.dart';

class DummyScreen extends StatefulWidget {
  const DummyScreen({super.key});

  @override
  State<DummyScreen> createState() => _DummyScreenState();
}

class _DummyScreenState extends State<DummyScreen> {
  List<String> keyStates = List.filled(31, 'unused');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ),
            itemCount: 30, // 5 rows (26 letters) + 1 row (Enter and Backspace)
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (context, index) {
              // Get the current letter or special character
              String letter = (index < 26)
                  ? String.fromCharCode(65 + index)
                  : (index == 26)
                      ? 'Enter'
                      : 'Backspace';

              return InkWell(
                onTap: () {
                  // Update the key state based on user input and Wordle logic
                  setState(() {
                    keyStates[index] =
                        'used'; // Placeholder, update based on game logic
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Text(
                    letter,
                    style: TextStyle(
                      fontSize: 18,
                      color: getColor(
                        keyStates[index],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Color getColor(String state) {
    switch (state) {
      case 'unused':
        return Colors.grey;
      case 'correct':
        return Colors.green;
      case 'incorrect':
        return Colors.yellow;
      default:
        return Colors.grey;
    }
  }
}
