import 'package:flutter/material.dart';
import 'package:my_portofolio/modules/profile/presentation/components/competitions_section_component.dart';
import 'package:my_portofolio/modules/profile/presentation/components/education_section_component.dart';
import 'package:my_portofolio/modules/profile/presentation/components/links_section_component.dart';
import 'package:my_portofolio/modules/profile/presentation/components/profile_header_component.dart';
import 'package:my_portofolio/modules/profile/presentation/components/profile_info_component.dart';
import 'package:my_portofolio/modules/profile/presentation/components/skills_section_component.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool favoriteState = false;
  num favoritedCount = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jalil",
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    ProfileHeaderComponent(),
                    SizedBox(height: 32),
                    ProfileInfoComponent(),
                    SizedBox(height: 24),
                    EducationSectionComponent(),
                    SizedBox(height: 24),
                    CompetitionsSectionComponent(),
                    SizedBox(height: 24),
                    SkillSectionComponent(),
                    SizedBox(height: 18),
                    LinksSectionComponent(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
