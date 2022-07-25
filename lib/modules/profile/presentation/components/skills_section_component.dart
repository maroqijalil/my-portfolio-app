import 'package:flutter/material.dart';
import 'package:my_portofolio/modules/common/components/section_component.dart';
import 'package:my_portofolio/modules/profile/presentation/widgets/skill_item_widget.dart';

class SkillSectionComponent extends StatelessWidget {
  const SkillSectionComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionComponent(
      title: "Skills",
      child: Wrap(
        children: [
          SkillItemComponent(title: "Kotlin-Android"),
          SkillItemComponent(title: "C++/C"),
          SkillItemComponent(title: "UI/UX"),
          SkillItemComponent(title: "JavasSript/TypeScript"),
          SkillItemComponent(title: "Laravel"),
          SkillItemComponent(title: "ReactJS"),
        ],
      ),
    );
  }
}
