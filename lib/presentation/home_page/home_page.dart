import 'package:flutter/material.dart';
import 'package:practice_barber/presentation/constants.dart';
import 'package:practice_barber/presentation/home_page/home_page_companents.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: kBackgroundyColor,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            HeaderText(
              hellouser: 'Hey, user',
              headercontent:
                  'Выбирайте лучших мастеров своего дела\n и запишитесь к нему на прием',
              secondaryheadercontent: 'Выбери мастера и запишись на прием',
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            MiniTabBar(),
            SizedBox(
              height: kDefaultPadding,
            ),
            BestBarbersOfWeek(),
            SizedBox(
              height: kDefaultPadding,
            )
          ],
        ),
      ),
    ));
  }
}
