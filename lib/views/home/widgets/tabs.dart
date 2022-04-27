import 'package:flutter/material.dart';
import 'package:mkobo_task/constants/app_colors.dart';
import 'package:mkobo_task/constants/app_font.dart';
import 'package:mkobo_task/views/home/widgets/tab_content.dart';
import 'package:mkobo_task/views/home/widgets/tab_navbar.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabNavBar(
            tabIndex: _tabIndex,
            tabTextList: const [
              'Spending Account',
              'Linked Accounts',
            ],
            onTap: (index) {
              setState(() {
                _tabIndex = index;
              });
            },
          ),
          SizedBox(
            height: size.height * 0.555,
            child: TabBarView(
              children: <Widget>[
                const TabContent(),
                Center(
                  child: Text(
                    'Linked Accounts',
                    style: AppFont.text.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
