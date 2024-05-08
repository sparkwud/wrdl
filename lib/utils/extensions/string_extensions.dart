extension GetRating on int {
  String get rating {
    String text;
    switch (this) {
      case 4:
        text = 'HIGH';
        break;
      case 5:
        text = 'MED';
        break;
      case 6:
      default:
        text = 'LOW';
        break;
    }
    return text;
  }
}
