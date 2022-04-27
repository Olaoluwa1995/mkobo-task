import 'package:flutter/material.dart';
import 'package:mkobo_task/constants/app_colors.dart';
import 'package:mkobo_task/constants/app_icons.dart';
import 'package:mkobo_task/constants/app_font.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, Lanre!',
              style: AppFont.text
                  .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Account no : ',
                    style: AppFont.text.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondaryColor,
                    ),
                    children: const [
                      TextSpan(
                        text: '533423243542',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Image.asset(
                    AppIcons.copy,
                    fit: BoxFit.cover,
                    height: 17,
                  ),
                )
              ],
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              AppIcons.earphone,
              fit: BoxFit.cover,
              width: 20,
            ),
            const SizedBox(
              width: 25,
            ),
            Image.asset(
              AppIcons.notification,
              fit: BoxFit.cover,
              height: 20,
            )
          ],
        )
      ],
    );
  }
}
