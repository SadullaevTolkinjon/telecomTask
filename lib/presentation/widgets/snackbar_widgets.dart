import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';

class SnackbarWidgets {
  static showError(BuildContext context, String key) {
    AnimatedSnackBar.material(
      key,
      type: AnimatedSnackBarType.error,
    ).show(context);
  }

  static showSuccess(BuildContext context, String key) {
    AnimatedSnackBar.material(
      key,
      type: AnimatedSnackBarType.success,
    ).show(context);
  }

  static showInfo(BuildContext context, String key) {
    AnimatedSnackBar.material(
      key,
      type: AnimatedSnackBarType.info,
    ).show(context);
  }
}
