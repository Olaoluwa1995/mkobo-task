import 'package:flutter/material.dart';
import 'package:mkobo_task/constants/app_colors.dart';
import 'package:mkobo_task/constants/app_icons.dart';
import 'package:mkobo_task/models/feature_model.dart';
import 'package:mkobo_task/constants/app_font.dart';
import 'package:mkobo_task/models/transaction_model.dart';
import 'package:mkobo_task/shared/custom_button.dart';

class TabContent extends StatefulWidget {
  const TabContent({Key? key}) : super(key: key);

  @override
  State<TabContent> createState() => _TabContentState();
}

class _TabContentState extends State<TabContent> {
  bool isEmptyMode = false;

  void toggleEmpytMode() {
    setState(() {
      isEmptyMode = !isEmptyMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final features = Features.features;
    final featuresForEmpty = Features.featuresForEmpty;
    final transactions = Transactions.transactions;

    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      margin: const EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: isEmptyMode ? 110 : 230,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(bottom: 50),
                itemCount:
                    isEmptyMode ? featuresForEmpty.length : features.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 4 / 4,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final Feature feature =
                      isEmptyMode ? featuresForEmpty[index] : features[index];
                  return Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.only(bottom: 5),
                        decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          feature.icon,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Text(
                        feature.text,
                        style: AppFont.text.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Transactions',
                  style: AppFont.text.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF042C5C),
                  ),
                ),
                CustomButton(
                  text: 'More',
                  onpressed: () => toggleEmpytMode(),
                ),
              ],
            ),
            isEmptyMode
                ? SizedBox(
                    height: size.height * 0.34,
                    child: ListView.builder(
                      itemCount: transactions.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Transaction transaction = transactions[index];
                        return Container(
                          height: 45,
                          width: size.width,
                          margin: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    transaction.icon,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        transaction.text,
                                        style: AppFont.text.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.secondaryColor,
                                        ),
                                      ),
                                      Text(
                                        transaction.name,
                                        style: AppFont.text.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFF263238),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    transaction.date!,
                                    style: AppFont.text.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.secondaryColor,
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8),
                                        child: Image.asset(
                                          AppIcons.naira,
                                          fit: BoxFit.cover,
                                          color: const Color(0xFF263238),
                                          height: 8,
                                        ),
                                      ),
                                      Text(
                                        ' ${transaction.amount!}',
                                        style: AppFont.text.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFF263238),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text(
                      'No Recent Transactions',
                      style: AppFont.text.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
