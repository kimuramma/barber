import 'package:flutter/material.dart';
import 'package:practice_barber/presentation/constants.dart';
import 'package:practice_barber/presentation/home_page/home_page_companents.dart';

import 'barber_page_companents.dart';

class BarberPage extends StatefulWidget {
  const BarberPage({Key? key}) : super(key: key);

  @override
  State<BarberPage> createState() => _BarberPageState();
}

class _BarberPageState extends State<BarberPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: kBackgroundyColor,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: kDefaultPadding,
            ),
            BestBarberButton(
              barberImage: 'assets/images/1.jpg',
              barberName: 'Tyson Fury',
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            BarberTabBar(),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            ReusableContainer(
              text: 'Адрес: ',
              value: 'Байзакова 34',
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            BarberBio(
              text: 'О себе: ',
              value:
                  'Меня зовут Тайсон, работаю барбером \n15 лет. Имеются международные\n сертификаты. Подписывайтесь на меня\n что бы не потерять!',
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Text(
              "Услуги мастера",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            BarberMenu(),
            SizedBox(
              height: kDefaultPadding,
            )
          ],
        ),
      ),
    ));
  }
}
