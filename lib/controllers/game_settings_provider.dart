import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wrdl/models/game_settings_model.dart';

class GameSettingsNotifier extends StateNotifier<GameSettings> {
  GameSettingsNotifier() : super(GameSettings(wordSize: 4, difficulty: 6));

  void updateDifficulty(int difficulty) {
    state = state.copyWith(difficulty: difficulty);
  }

  List<int> sizes = <int>[4, 5, 6];

  void updateWordSize() {
    final index = sizes.indexOf(state.wordSize);
    final nextIndex = (index + 1) % sizes.length;
    final newWordSize = sizes[nextIndex]; 

    state = state.copyWith(wordSize: newWordSize);
  }

  // void switchWordSize() {
  //   int? newWordSize;
  //   switch (state.wordSize) {
  //     case 4:
  //       newWordSize = 5;
  //       break;
  //     case 5:
  //       newWordSize = 6;
  //       break;
  //     case 6:
  //       newWordSize = 4;
  //       break;
  //   }
  //   state = state.copyWith(wordSize: newWordSize);
  // }

  void updateAttempts() {
    final index = sizes.indexOf(state.difficulty);
    final nextIndex = (index - 1) % sizes.length;
    final newAttempt = sizes[nextIndex];

    state = state.copyWith(difficulty: newAttempt);
  }
}

final gameSettingsProvider =
    StateNotifierProvider<GameSettingsNotifier, GameSettings>(
  (ref) => GameSettingsNotifier(),
);
