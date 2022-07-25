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
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ProfileHeaderComponent(),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
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
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
