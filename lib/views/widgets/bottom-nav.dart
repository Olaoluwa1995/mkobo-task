import 'package:flutter/material.dart';
import 'package:mkobo_task/constants/app_colors.dart';
import 'package:mkobo_task/constants/app_font.dart';
import 'package:mkobo_task/constants/app_icons.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTabTapped;

  const BottomNav({
    Key? key,
    required this.currentIndex,
    required this.onTabTapped,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextStyle style =
        AppFont.text.copyWith(fontSize: 10, fontWeight: FontWeight.w600);

    BottomNavigationBarItem bottomNavBar({String? icon, String? text}) {
      return BottomNavigationBarItem(
        icon: Image.asset(
          icon!,
          fit: BoxFit.cover,
          color: AppColors.secondaryColor,
          height: text == 'menu' ? 15 : 20,
        ),
        label: text,
        activeIcon: Image.asset(
          icon,
          fit: BoxFit.cover,
          color: AppColors.primaryColor,
          height: 20,
        ),
      );
    }

    return BottomNavigationBar(
      elevation: 10,
      currentIndex: currentIndex,
      unselectedLabelStyle: style,
      selectedLabelStyle: style,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.secondaryColor,
      onTap: onTabTapped,
      type: BottomNavigationBarType.fixed,
      items: [
        bottomNavBar(icon: AppIcons.home, text: 'Accounts'),
        bottomNavBar(icon: AppIcons.saveBarIcon, text: 'Mkolo'),
        bottomNavBar(icon: AppIcons.transfer, text: 'Transfer'),
        bottomNavBar(icon: AppIcons.earlyPayHands, text: 'EarlyPay'),
        bottomNavBar(icon: AppIcons.menu, text: 'Menu'),
      ],
    );
  }
}
