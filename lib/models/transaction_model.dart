import 'package:mkobo_task/constants/app_icons.dart';

class Transaction {
  final int id;
  final String icon;
  final String text;
  final String name;
  final String? date;
  final String? amount;

  Transaction({
    required this.id,
    required this.icon,
    required this.text,
    required this.name,
    this.date = 'Apr 28',
    this.amount = '-3,000.00',
  });
}

class Transactions {
  static List<Transaction> transactions = [
    Transaction(
      id: 1,
      icon: AppIcons.netflix,
      text: 'Paid for',
      name: 'Netflix',
    ),
    Transaction(
      id: 2,
      icon: AppIcons.send,
      text: 'Paid for',
      name: 'Spectranet',
    ),
    Transaction(
      id: 3,
      icon: AppIcons.receive,
      text: 'Received Money From FBN',
      name: 'Demilade',
    ),
    Transaction(
      id: 4,
      icon: AppIcons.receive,
      text: 'Received Money From FBN',
      name: 'Demilade',
    ),
    Transaction(
      id: 5,
      icon: AppIcons.receive,
      text: 'Received Money From FBN',
      name: 'Demilade',
    ),
    Transaction(
      id: 6,
      icon: AppIcons.receive,
      text: 'Received Money From FBN',
      name: 'Demilade',
    ),
    Transaction(
      id: 7,
      icon: AppIcons.receive,
      text: 'Received Money From FBN',
      name: 'Demilade',
    ),
    Transaction(
      id: 8,
      icon: AppIcons.receive,
      text: 'Received Money From FBN',
      name: 'Demilade',
    ),
  ];
}
