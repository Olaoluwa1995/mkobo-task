import 'package:flutter/material.dart';
import 'package:mkobo_task/views/home/widgets/balance_slider.dart';
import 'package:mkobo_task/views/home/widgets/header.dart';
import 'package:mkobo_task/views/home/widgets/tabs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          margin: EdgeInsets.only(top: size.height * 0.02),
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Header(),
                SizedBox(
                  height: 10,
                ),
                BalanceSlider(),
                SizedBox(
                  height: 20,
                ),
                Tabs()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
