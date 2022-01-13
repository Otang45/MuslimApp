import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:progress_indicators/progress_indicators.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final widget = (Platform.isAndroid)
        ? JumpingDotsProgressIndicator(
            fontSize: 42,
            color: ThemeColor.colorText(context),
          )
        : const CupertinoActivityIndicator();
    return Container(
      alignment: Alignment.center,
      child: widget,
    );
  }
}
