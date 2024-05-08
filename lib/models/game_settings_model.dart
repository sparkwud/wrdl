class GameSettings {
  int wordSize;
  int difficulty;

  GameSettings({
    required this.wordSize,
    required this.difficulty,
  });

  GameSettings copyWith({
    int? wordSize,
    int? difficulty,
  }) {
    return GameSettings(
      wordSize: wordSize ?? this.wordSize,
      difficulty: difficulty ?? this.difficulty,
    );
  }
}
