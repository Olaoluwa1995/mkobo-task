import 'package:flutter/material.dart';
import 'package:mkobo_task/constants/app_colors.dart';
import 'package:mkobo_task/views/widgets/tab_bar_item.dart';

class TabNavBar extends StatefulWidget {
  const TabNavBar({
    Key? key,
    required this.tabIndex,
    required this.tabTextList,
    required this.onTap,
  }) : super(key: key);

  final int tabIndex;
  final List<String> tabTextList;
  final Function(int)? onTap;

  @override
  _TabNavBarState createState() => _TabNavBarState();
}

class _TabNavBarState extends State<TabNavBar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 36,
      margin: EdgeInsets.only(bottom: size.height * 0.02),
      decoration: BoxDecoration(
        color: const Color(0xFFE6E9ED),
        borderRadius: BorderRadius.circular(9),
      ),
      child: TabBar(
        onTap: widget.onTap,
        indicatorColor: Colors.white,
        padding: const EdgeInsets.all(2),
        labelColor: AppColors.primaryColor,
        unselectedLabelColor: AppColors.secondaryColor,
        indicator: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFFE0E0E0), width: 0.867),
          borderRadius: BorderRadius.circular(6),
        ),
        tabs: widget.tabTextList
            .map((tabText) => TabBarItem(
                  text: tabText,
                ))
            .toList(),
      ),
    );
  }
}
