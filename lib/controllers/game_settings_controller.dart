import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wrdl/models/game_settings_model.dart';

class GameSettingsNotifier extends Notifier<GameSettings> {
  @override
  GameSettings build() {
    return GameSettings(
      wordSize: 4,
      difficulty: 6,
    );
  }

  List<int> sizes = <int>[4, 5, 6];

  void updateWordSize() {
    final index = sizes.indexOf(state.wordSize);
    final nextIndex = (index + 1) % sizes.length;
    final newWordSize = sizes[nextIndex];

    state = state.copyWith(wordSize: newWordSize);
  }

  void updateAttempts() {
    final index = sizes.indexOf(state.difficulty);
    final nextIndex = (index - 1) % sizes.length;
    final newAttempt = sizes[nextIndex];

    state = state.copyWith(difficulty: newAttempt);
  }
}

final gameSettingsNotifierProvider =
    NotifierProvider<GameSettingsNotifier, GameSettings>(
  () => GameSettingsNotifier(),
);
