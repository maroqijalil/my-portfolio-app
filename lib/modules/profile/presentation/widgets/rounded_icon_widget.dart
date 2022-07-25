import 'package:flutter/material.dart';

enum Type {
  filled,
  outlined,
}

enum Size {
  small,
  medium,
}

class RoundedIconWidget extends StatelessWidget {
  final Color color;
  final Widget icon;

  void Function()? onPressed;
  double containerSize = 0.0;
  double iconSize = 0.0;
  Type type;

  RoundedIconWidget({
    Key? key,
    required this.icon,
    required this.color,
    this.onPressed,
    this.type = Type.filled,
    Size size = Size.small,
  }) : super(key: key) {
    switch (size) {
      case Size.small:
        {
          this.containerSize = 42.0;
          this.iconSize = 18.0;

          break;
        }

      case Size.medium:
        {
          this.containerSize = 72.0;
          this.iconSize = 34.0;

          break;
        }
    }
  }

  Decoration getDecoration() {
    switch (type) {
      case Type.filled:
        {
          return BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          );
        }

      case Type.outlined:
        {
          return BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: color, width: 2.0),
          );
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
        iconSize: iconSize,
      ),
      width: containerSize,
      height: containerSize,
      decoration: getDecoration(),
    );
  }
}
