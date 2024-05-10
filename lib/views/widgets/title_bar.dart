import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wrdl/controllers/game_settings_controller.dart';
import 'package:wrdl/controllers/game_settings_provider.dart';
import 'package:wrdl/utils/extensions/context_extension.dart';
import 'package:wrdl/utils/extensions/string_extensions.dart';
import 'package:wrdl/views/screens/dummy_screen.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const DifficultyToggleButton(),
        InkWell(
          onTap: () => context.navigator.push(
            MaterialPageRoute(
              builder: (context) => const DummyScreen(),
            ),
          ),
          child: const Text(
            "WRDL",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const WordSizeToggleButton(),
      ],
    );
  }
}

class WordSizeToggleButton extends ConsumerWidget {
  const WordSizeToggleButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameSettings = ref.watch(gameSettingsNotifierProvider);

    final gameSettingsNotifier =
        ref.read(gameSettingsNotifierProvider.notifier);

    return OutlinedButton(
      onPressed: () => gameSettingsNotifier.updateWordSize(),
      child: Text(gameSettings.wordSize.toString()),
    );
  }
}

class DifficultyToggleButton extends ConsumerWidget {
  const DifficultyToggleButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameSettings = ref.watch(gameSettingsProvider);

    final gameSettingsNotifier = ref.read(gameSettingsProvider.notifier);

    return OutlinedButton(
      onPressed: () => gameSettingsNotifier.updateAttempts(),
      child: Text(gameSettings.difficulty.rating),
    );
  }
}
