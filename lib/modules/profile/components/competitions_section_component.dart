import 'package:flutter/material.dart';
import 'package:my_portofolio/modules/common/components/section_component.dart';
import 'package:my_portofolio/modules/profile/widgets/skill_item_widget.dart';

class CompetitionsSectionComponent extends StatelessWidget {
  const CompetitionsSectionComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionComponent(
      title: "Competitions",
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [

        ],
      ),
    );
  }
}
