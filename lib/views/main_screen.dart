import 'package:flutter/material.dart';
import 'package:mkobo_task/constants/app_colors.dart';
import 'package:mkobo_task/constants/app_font.dart';
import 'package:mkobo_task/constants/app_icons.dart';
import 'package:mkobo_task/views/home/home.dart';
import 'package:mkobo_task/views/widgets/bottom_nav.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    const HomeScreen(),
    const OtherScreen(text: 'Mkolo'),
    const OtherScreen(text: 'Transfer'),
    const OtherScreen(text: 'Early Pay'),
    const OtherScreen(text: 'Menu'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: () => onTabTapped(2),
        child: Container(
          height: 40,
          width: 40,
          margin: const EdgeInsets.only(top: 22),
          // padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              height: 30,
              width: 30,
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                AppIcons.transfer,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(155, 132, 135, 0.142097),
            offset: Offset(0, 0),
            spreadRadius: 10,
            blurRadius: 5,
          )
        ]),
        child: BottomNav(
          currentIndex: _currentIndex,
          onTabTapped: onTabTapped,
        ),
      ),
    );
  }
}

class OtherScreen extends StatelessWidget {
  const OtherScreen({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: AppFont.text.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.secondaryColor,
        ),
      ),
    );
  }
}
