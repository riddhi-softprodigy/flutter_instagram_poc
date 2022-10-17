import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta/style/constants.dart';

import '../size_config.dart';

// This is stateless widget, Implement common button widget
class CommonButtonWidget extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final Widget? icon;
  final double? height;
  final ValueChanged? onTap;
  final bool? isLoading;
  final double? width;
  final double? padding;
  final double? fontSize;

  CommonButtonWidget(
      {Key? key,
      @required this.buttonText,
      this.buttonColor,
      this.onTap,
      this.height,
      this.icon,
      this.isLoading,
      this.width,
      this.padding,
      this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: width,
        height: height,
        child: TextButton(
          onPressed: () {
            onTap!(true);
          },
          child: icon != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icon!,
                    Text(
                      buttonText!,
                      style: TextStyle(
                          color: kContentColorDarkTheme, fontSize: 15),
                    ),
                  ],
                )
              : Text(
                  buttonText!,
                  style: TextStyle(color: kContentColorDarkTheme, fontSize: 15),
                ),
        ),
      ),
    );
  }
}
