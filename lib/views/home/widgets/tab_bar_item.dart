import 'package:flutter/material.dart';
import 'package:mkobo_task/constants/app_colors.dart';
import 'package:mkobo_task/constants/app_font.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        text,
        style: AppFont.text.copyWith(fontSize: 12),
      ),
    );
  }
}
