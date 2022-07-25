import 'package:flutter/material.dart';
import 'package:my_portofolio/modules/common/components/horizontal_image_item_component.dart';
import 'package:my_portofolio/modules/common/components/section_component.dart';
import 'package:my_portofolio/modules/profile/domain/model/competition.dart';
import 'package:my_portofolio/modules/profile/presentation/screens/competition_screen.dart';

class CompetitionsSectionComponent extends StatelessWidget {
  static var competitions = <Competition>[
    Competition(
      title: "Robocup",
      desc: "Lead on developing new algorithm for strategy on playing humanoid soccer game and robot’s behavior Won third place in the Kid-Size Humanoid League from participants of twelve different countries around the world",
      date: DateTime.parse('2022-07-12'),
      imageSources: [
        "assets/imgs/robocup/22/1.jpg",
        "assets/imgs/robocup/22/2.jpg",
        "assets/imgs/robocup/22/3.jpg",
        "assets/imgs/robocup/22/4.jpg",
        "assets/imgs/robocup/22/5.jpg",
        "assets/imgs/robocup/22/6.jpg",
        "assets/imgs/robocup/22/7.jpg",
        "assets/imgs/robocup/22/8.jpg",
        "assets/imgs/robocup/22/9.jpg",
      ],
    ),
    Competition(
      title: "Kontes Robot Indonesia",
      desc: "Developed robot’s behavior algorithm for every category Won first place awards in all categories (Lomba lari, Lomba Menggiring Bola, and Lomba Kerjasama Robot) in Regional Round Won awards in all categories (3rd Place in Lomba Lari, 2nd Place in Lomba Menggiring Bola, and 2nd Place in Lomba Kerjasama Robot) in National Round.",
      date: DateTime.parse('2022-07-01'),
      imageSources: [
        "assets/imgs/kri/22/1.jpg",
        "assets/imgs/kri/22/2.jpg",
        "assets/imgs/kri/22/3.jpg",
        "assets/imgs/kri/22/4.jpg",
        "assets/imgs/kri/22/5.jpg",
        "assets/imgs/kri/22/6.jpg",
        "assets/imgs/kri/22/7.jpg",
        "assets/imgs/kri/22/8.jpg",
        "assets/imgs/kri/22/9.jpg",
        "assets/imgs/kri/22/10.jpg",
      ],
    ),
    Competition(
      title: "Fira Robo World Cup",
      desc: "Developed robot’s behavior algorithm and became robot handler in some categories. Won 9 awards from various categories (1st Place in Weightlifting Adul-tsize, 1st Place in Sprint Adul-tsize, 1st Place in Basketball Adult-size, 2nd Place in All-Round Adult-size, 1st Place in Sprint Kidsize, 2nd Place in Sprint Kid-size, 2nd Place in Weightlifting Kid-size, 3rd Place in Basketball Kid-size, and 2nd Place in All-Round Kid-size)",
      date: DateTime.parse('2021-12-10'),
      imageSources: [
        "assets/imgs/fira/1.jpg",
        "assets/imgs/fira/2.jpg",
        "assets/imgs/fira/3.jpg",
      ],
    ),
    Competition(
      title: "Kontes Robot Indonesia",
      desc: "Developed robot’s behavior algorithm for every category Won first place awards in all categories (Lomba lari, Lomba Menggiring Bola, and Lomba Kerjasama Robot) in Regional Round Won awards in all categories (3rd Place in Lomba Lari, 2nd Place in Lomba Menggiring Bola, and 2nd Place in Lomba Kerjasama Robot) in National Round.",
      date: DateTime.parse('2021-09-12'),
      imageSources: [
        "assets/imgs/kri/21/1.jpeg",
        "assets/imgs/kri/21/2.jpeg",
        "assets/imgs/kri/21/3.jpeg",
        "assets/imgs/kri/21/4.jpeg",
        "assets/imgs/kri/21/5.jpeg",
        "assets/imgs/kri/21/6.jpeg",
        "assets/imgs/kri/21/7.jpeg",
        "assets/imgs/kri/21/8.jpeg",
        "assets/imgs/kri/21/9.jpeg",
        "assets/imgs/kri/21/10.jpeg",
        "assets/imgs/kri/21/11.jpeg",
        "assets/imgs/kri/21/12.jpeg",
        "assets/imgs/kri/21/13.jpeg",
      ],
    ),
    Competition(
      title: "Robocup",
      desc: "Lead on developing new algorithm for strategy on playing humanoid soccer game and robot’s behavior Won third place in the Kid-Size Humanoid League from participants of twelve different countries around the world",
      date: DateTime.parse('2021-06-24'),
      imageSources: [
        "assets/imgs/robocup/21/1.jpeg",
        "assets/imgs/robocup/21/2.jpeg",
      ],
    ),
  ];

  const CompetitionsSectionComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionComponent(
      title: "Competitions",
      child: Container(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: competitions.map((competition) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CompetitionScreen(competition: competition);
                    },
                  ),
                );
              },
              child: HorizontalImageItemComponent(
                title: competition.title,
                desc: "Tahun ${competition.date.year.toString()}",
                imageSource: competition.imageSources[0],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
