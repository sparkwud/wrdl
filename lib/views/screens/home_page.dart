import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wrdl/controllers/game_settings_provider.dart';
import 'package:wrdl/utils/extensions/context_extension.dart';
import 'package:wrdl/views/widgets/title_bar.dart';
import 'package:wrdl/views/widgets/wordle_keyboard.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: TitleBar(),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '${ref.watch(gameSettingsProvider).wordSize}',
                      style: context.headlineMedium,
                    ),
                  ],
                ),
              ),
            ),
            const WrdlKeyboard()
          ],
        ),
      ),
    );
  }
}
