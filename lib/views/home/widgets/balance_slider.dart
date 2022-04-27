import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mkobo_task/constants/app_colors.dart';
import 'package:mkobo_task/constants/app_icons.dart';
import 'package:mkobo_task/models/balance_slider_model.dart';
import 'package:mkobo_task/constants/app_font.dart';

class BalanceSlider extends StatefulWidget {
  const BalanceSlider({
    Key? key,
  }) : super(key: key);

  @override
  State<BalanceSlider> createState() => _BalanceSliderState();
}

class _BalanceSliderState extends State<BalanceSlider> {
  bool showBalance = true;
  CarouselController carouselController = CarouselController();
  int _sliderIndex = 0;

  void toggleShowBalance() {
    setState(() {
      showBalance = !showBalance;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _sliderItems = BalanceSliders.sliders;

    List<Widget> items = [];
    for (var item in _sliderItems) {
      items.add(
        Container(
          height: 150,
          width: size.width,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: const Color(0xFF0047CC),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Avalaible Balance',
                          style: AppFont.text.copyWith(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 11.72),
                        ),
                        Container(
                          height: 34,
                          width: 73,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Text(
                              'Tier 1',
                              style: AppFont.text.copyWith(
                                  color: AppColors.primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 14),
                          child: Image.asset(
                            AppIcons.naira,
                            fit: BoxFit.cover,
                            height: 15,
                          ),
                        ),
                        Text(
                          showBalance ? ' 690,390.68' : ' ***********',
                          style: AppFont.text.copyWith(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: GestureDetector(
                            onTap: () => toggleShowBalance(),
                            child: Icon(
                              showBalance
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.0),
                  child: Divider(
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      item.icon,
                      fit: BoxFit.cover,
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        item.text,
                        style: AppFont.text.copyWith(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    if (item.id != 2)
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Image.asset(
                          AppIcons.arrow,
                          fit: BoxFit.cover,
                          width: 20,
                        ),
                      ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }

    return Column(
      children: [
        CarouselSlider(
          carouselController: carouselController,
          items: items,
          options: CarouselOptions(
            height: 150,
            viewportFraction: 1,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _sliderIndex = index;
              });
            },
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 8,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: _sliderItems.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _sliderIndex == index
                        ? AppColors.primaryColor
                        : const Color(0xFFF5F5F7),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
