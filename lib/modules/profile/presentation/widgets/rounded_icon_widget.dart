import 'package:flutter/material.dart';

enum RoundedIconType {
  filled,
  outlined,
}

enum RoundedIconSize {
  small,
  medium,
}

class RoundedIconWidget extends StatelessWidget {
  final Color color;
  final Widget icon;

  void Function()? onPressed;
  double containerSize = 0.0;
  double iconSize = 0.0;
  RoundedIconType type;

  RoundedIconWidget({
    Key? key,
    required this.icon,
    required this.color,
    this.onPressed,
    this.type = RoundedIconType.filled,
    RoundedIconSize size = RoundedIconSize.small,
  }) : super(key: key) {
    switch (size) {
      case RoundedIconSize.small:
        {
          this.containerSize = 42.0;
          this.iconSize = 18.0;

          break;
        }

      case RoundedIconSize.medium:
        {
          this.containerSize = 72.0;
          this.iconSize = 34.0;

          break;
        }
    }
  }

  Decoration getDecoration() {
    switch (type) {
      case RoundedIconType.filled:
        {
          return BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          );
        }

      case RoundedIconType.outlined:
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
