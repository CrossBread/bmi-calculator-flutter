import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;
  final Function onPress;

  ReusableCard({@required this.backgroundColor, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor,
        ),
      ),
    );
  }
}
