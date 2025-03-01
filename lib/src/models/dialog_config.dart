part of pin_code_fields;

class DialogConfig {
  /// title of the [AlertDialog] while pasting the code. Default to [Paste Code]
  final String? dialogTitle;

  /// title style of the [AlertDialog] while pasting the code.
  final TextStyle? dialogTitleStyle;

  /// content of the [AlertDialog] while pasting the code. Default to ["Do you want to paste this code "]
  final String? dialogContent;

  /// content style of the [AlertDialog] while pasting the code.
  final TextStyle? dialogContentStyle;

  /// Affirmative action text for the [AlertDialog]. Default to "Paste"
  final String? affirmativeText;

  /// Negative action text for the [AlertDialog]. Default to "Cancel"
  final String? negativeText;

  /// The default dialog theme, should it be iOS or other(including web and Android)
  final Platform platform;

  DialogConfig._internal({
    this.dialogTitleStyle,
    this.dialogContentStyle,
    this.dialogContent,
    this.dialogTitle,
    this.affirmativeText,
    this.negativeText,
    this.platform = Platform.other,
  });

  factory DialogConfig({
    String? affirmativeText,
    String? dialogContent,
    String? dialogTitle,
    TextStyle? dialogTitleStyle,
    TextStyle? dialogContentStyle,
    String? negativeText,
    Platform? platform,
  }) {
    return DialogConfig._internal(
      affirmativeText: affirmativeText == null ? "Paste" : affirmativeText,
      dialogContent: dialogContent == null ? "Do you want to paste this code " : dialogContent,
      dialogTitle: dialogTitle == null ? "Paste Code" : dialogTitle,
      dialogContentStyle: dialogContentStyle,
      dialogTitleStyle: dialogTitleStyle,
      negativeText: negativeText == null ? "Cancel" : negativeText,
      platform: platform == null ? Platform.other : platform,
    );
  }
}
