import 'package:flutter/material.dart';

// USAGE context.
// e.g. context.height

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  NavigatorState get navigator => Navigator.of(this);

  TextTheme get textTheme => theme.textTheme;
  Size get size => mediaQuery.size;

  double get height => size.height;
  double get width => size.width;

  TextStyle? get displayLarge => textTheme.displayLarge;
  TextStyle? get displayMedium => textTheme.displayMedium;
  TextStyle? get displaySmall => textTheme.displaySmall;
  TextStyle? get headlineMedium => textTheme.headlineMedium;
  TextStyle? get headlineSmall => textTheme.headlineSmall;
  TextStyle? get titleLarge => textTheme.titleLarge;
  TextStyle? get titleMedium => textTheme.titleMedium;
  TextStyle? get titleSmall => textTheme.titleSmall;
  TextStyle? get bodyLarge => textTheme.bodyLarge;
  TextStyle? get bodyMedium => textTheme.bodyMedium;
  TextStyle? get bodySmall => textTheme.bodySmall;
  TextStyle? get labelLarge => textTheme.labelLarge;
  TextStyle? get labelSmall => textTheme.labelSmall;
}
