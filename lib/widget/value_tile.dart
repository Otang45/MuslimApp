import 'package:flutter/material.dart';
import 'package:muslim/theme/dark_theme_provider.dart';

/// General utility widget used to render a cell divided into three rows
/// First row displays [label]
/// second row displays [iconData]
/// third row displays [value]
class ValueTile extends StatelessWidget {
  final String label;
  final String value;
  final IconData? iconData;
  const ValueTile(this.label, this.value, {Key? key, this.iconData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(color: ThemeColor.colorText(context)),
        ),
        Icon(
          iconData,
          color: ThemeColor.colorPrimary(context),
          size: 0,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          value,
          style: TextStyle(
            color: ThemeColor.colorAccent(context),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class ValueTile2 extends StatelessWidget {
  final String label;
  final String value;
  final IconData? iconData;
  const ValueTile2(this.label, this.value, {Key? key, this.iconData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            value,
            style: TextStyle(
              color: ThemeColor.colorText(context),
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Icon(
            iconData,
            color: ThemeColor.colorPrimary(context),
            size: 24,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ThemeColor.colorText(context),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
