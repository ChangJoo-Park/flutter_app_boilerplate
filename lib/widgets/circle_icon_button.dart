import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final Icon icon;
  final VoidCallback onTap;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color splashColor;

  const CircleIconButton({
    Key key,
    @required this.icon,
    this.onTap,
    this.width = 56.0,
    this.height = 56.0,
    this.backgroundColor = Colors.blue,
    this.splashColor = Colors.black12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: this.backgroundColor,
        child: InkWell(
          splashColor: this.splashColor,
          child: SizedBox(
            width: this.width,
            height: this.height,
            child: this.icon,
          ),
          onTap: this.onTap,
        ),
      ),
    );
  }
}
