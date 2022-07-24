import 'package:flutter/material.dart';
import 'package:my_portofolio/modules/common/components/section_component.dart';
import 'package:my_portofolio/modules/profile/widgets/skill_item_widget.dart';

class SkillSectionComponent extends StatelessWidget {
  const SkillSectionComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionComponent(
      title: "Skills",
      child: Wrap(
        children: [
          SkillItemComponent(title: "Android Development"),
          SkillItemComponent(title: "Front End Development"),
          SkillItemComponent(title: "Back End Development"),
          SkillItemComponent(title: "Graphic Design"),
        ],
      ),
    );
  }
}
