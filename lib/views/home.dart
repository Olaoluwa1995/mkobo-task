import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkobo_task/constants/app_colors.dart';
import 'package:mkobo_task/constants/app_icons.dart';
import 'package:mkobo_task/shared/app_font.dart';
import 'package:mkobo_task/views/widgets/header.dart';
import 'package:mkobo_task/views/widgets/balance_slider.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Header(),
              SizedBox(
                height: 10,
              ),
              BalanceSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
