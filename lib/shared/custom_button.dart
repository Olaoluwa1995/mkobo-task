import 'package:flutter/material.dart';
import 'package:mkobo_task/constants/app_colors.dart';
import 'package:mkobo_task/constants/app_font.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onpressed;
  final double? width;
  final double? height;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onpressed,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 73,
      child: MaterialButton(
        elevation: 0,
        height: height ?? 23,
        minWidth: width ?? 73,
        color: const Color(0xFF4181F9).withOpacity(0.6),
        splashColor: Colors.white10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        onPressed: onpressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: AppFont.text.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
