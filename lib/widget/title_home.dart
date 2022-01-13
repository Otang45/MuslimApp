import 'package:flutter/material.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:muslim/baseurl/base_app.dart';

class TitleHome extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final String textButton;
  const TitleHome({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.textButton,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: ThemeColor.colorText(context),
            fontSize: Size.size16,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            textButton,
            style: TextStyle(
              color: ThemeColor.colorPrimary(context),
              fontSize: Size.size16,
            ),
          ),
        ),
      ],
    );
  }
}
