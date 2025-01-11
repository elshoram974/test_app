import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constants/app_constants.dart';

class MyFilledButton extends StatelessWidget {
  const MyFilledButton({
    super.key,
    required this.text,
    this.isLoading = false,
    this.onPressed,
    this.onLongPress,
    this.style,
    this.filledColor,
    this.minimumSize,
  });
  final String text;
  final bool isLoading;
  final TextStyle? style;
  final Color? filledColor;
  final Size? minimumSize;
  final void Function()? onPressed;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return _loadingFilledButton();
    }
    return _filledButton();
  }

  Builder _filledButton() {
    return Builder(
      builder: (context) {
        return FilledButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          style: FilledButton.styleFrom(
            minimumSize: minimumSize ?? const Size(100, 48),
            backgroundColor: filledColor ?? context.theme.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConst.borderRadius),
            ),
          ),
          child: Text(
            text,
            style: style?.copyWith(color: Colors.white) ??
                const TextStyle(color: Colors.white),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        );
      },
    );
  }

  Builder _loadingFilledButton() {
    return Builder(
      builder: (context) {
        return FilledButton(
          onPressed: null,
          style: FilledButton.styleFrom(
            minimumSize: minimumSize ?? const Size(100, 48),
            backgroundColor: filledColor ?? context.theme.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConst.borderRadius),
            ),
          ),
          child: const Center(
            child: SizedBox.square(
              dimension: 30,
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}
