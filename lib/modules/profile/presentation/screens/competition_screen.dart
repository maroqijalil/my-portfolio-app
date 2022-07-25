import 'package:flutter/material.dart';

import '../../domain/model/competition.dart';

class CompetitionScreen extends StatelessWidget {
  final Competition competition;

  const CompetitionScreen({
    Key? key,
    required this.competition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    int gridCount = (screenSize.width < 400) ? 2 : (screenSize.width / 200).floor().toInt();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${competition.title} - ${competition.date.year}",
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
              child: Text(competition.desc),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0, 10),
                    blurRadius: 10,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 0, right: 2, left: 2, bottom: 2),
                child: GridView.count(
                  crossAxisCount: gridCount,
                  children:
                      competition.imageSources.asMap().entries.map((image) {
                    return Padding(
                      padding: (image.key >= gridCount)
                          ? EdgeInsets.all(2)
                          : EdgeInsets.only(
                              top: 8,
                              right: 2,
                              left: 2,
                              bottom: 2,
                            ),
                      child: Image.asset(
                        image.value,
                        height: 100,
                        fit: BoxFit.fitHeight,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
