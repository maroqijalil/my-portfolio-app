import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portofolio/modules/common/components/section_component.dart';
import 'package:my_portofolio/modules/profile/widgets/skill_item_widget.dart';

import '../widgets/rounded_icon_widget.dart';

class LinksSectionComponent extends StatelessWidget {
  const LinksSectionComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionComponent(
      title: "Links",
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedIconWidget(
            icon: FaIcon(
              FontAwesomeIcons.linkedinIn,
              color: Colors.white,
            ),
            color: Colors.black54,
          ),
          SizedBox(width: 32),
          RoundedIconWidget(
            icon: FaIcon(
              FontAwesomeIcons.github,
              color: Colors.white,
            ),
            color: Colors.black54,
          ),
          SizedBox(width: 32),
          RoundedIconWidget(
            icon: FaIcon(
              FontAwesomeIcons.facebookF,
              color: Colors.white,
            ),
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}
