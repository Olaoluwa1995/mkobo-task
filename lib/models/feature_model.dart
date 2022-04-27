import 'package:mkobo_task/constants/app_icons.dart';

class Feature {
  final int id;
  final String icon;
  final String text;

  Feature({
    required this.id,
    required this.icon,
    required this.text,
  });
}

class Features {
  static List<Feature> features = [
    Feature(id: 1, icon: AppIcons.transfer, text: 'Transfer Money'),
    Feature(id: 2, icon: AppIcons.fundAccount, text: 'Fund Account'),
    Feature(id: 3, icon: AppIcons.buyAirtime, text: 'Buy Airtime'),
    Feature(id: 4, icon: AppIcons.payBills, text: 'Pay Bills'),
    Feature(id: 5, icon: AppIcons.save, text: 'Save Money'),
    Feature(id: 6, icon: AppIcons.earlyPay, text: 'Earlypay'),
  ];

  static List<Feature> featuresForEmpty = [
    Feature(id: 1, icon: AppIcons.buyAirtime, text: 'Buy Airtime'),
    Feature(id: 2, icon: AppIcons.payBills, text: 'Pay Bills'),
    Feature(id: 3, icon: AppIcons.fundAccount, text: 'Fund Account'),
  ];
}
