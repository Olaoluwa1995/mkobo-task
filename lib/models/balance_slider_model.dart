import 'package:mkobo_task/constants/app_icons.dart';

class SliderItem {
  final int id;
  final String icon;
  final String text;

  SliderItem({
    required this.id,
    required this.icon,
    required this.text,
  });
}

class BalanceSliders {
  static List<SliderItem> sliders = [
    SliderItem(id: 1, icon: AppIcons.avatar, text: 'Verify Your Identity'),
    SliderItem(id: 2, icon: AppIcons.fundAccount, text: 'Fund Account'),
  ];
}
