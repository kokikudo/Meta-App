import 'package:flutter/material.dart';
import 'package:rps_ui_e1/utils/constants.dart';

class CategoryBobbles extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function onTapped;

  const CategoryBobbles({Key key, this.text, this.isSelected, this.onTapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        decoration: BoxDecoration(
          color: kcActive.withAlpha(25),
          borderRadius: BorderRadius.circular(20.0),
          border: isSelected ? Border.all(color: kcHeadline, width: 2) : null,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
        margin: const EdgeInsets.only(right: 20),
        child: Text(
          text,
          style: themeData.textTheme.headline5
        ),
      ),
    );
  }
}