import 'package:flutter/material.dart';

import '../constants.dart';

//header text widget
class HeaderText extends StatelessWidget {
  const HeaderText(
      {Key? key,
      required this.hellouser,
      required this.headercontent,
      required this.secondaryheadercontent})
      : super(key: key);
  final String hellouser;
  final String headercontent;
  final String secondaryheadercontent;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: kDefaultPadding),
          child: Text(
            hellouser,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(headercontent),
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        Text(
          secondaryheadercontent,
          style: const TextStyle(color: Colors.red),
        ),
      ],
    );
  }
}

//Appbar builder
AppBar buildAppBar() {
  return AppBar(
    backgroundColor: kBackgroundyColor,
    title: Row(
      children: const [
        Icon(
          Icons.cut,
          color: Colors.black,
        ),
        Text(
          "my barber",
          style: TextStyle(color: Colors.black),
        )
      ],
    ),
    centerTitle: true,
  );
}

//mini tab
class MiniTabBar extends StatelessWidget {
  const MiniTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 189,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: kPrimaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/barber_page');
            },
            icon: const Icon(Icons.home),
            splashColor: Colors.transparent,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.cut)),
        ],
      ),
    );
  }
}

//best barbers of the week

class BestBarbersOfWeek extends StatelessWidget {
  const BestBarbersOfWeek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Лучшие мастера этой недели",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        Center(
          child: Container(
            width: 299,
            height: 410,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: kPrimaryColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: kDefaultPadding / 2,
                        height: kDefaultPadding / 2,
                      ),
                      BestBarberButton(
                        barberName: 'Kimura Zhakeshi',
                        barberImage: 'assets/images/1.jpg',
                        onTap: () {
                          Navigator.of(context).pushNamed('/barber_page');
                        },
                      ),
                      const SizedBox(
                        width: kDefaultPadding / 2,
                      ),
                      BestBarberButton(
                        barberName: 'Tyson Fury',
                        barberImage: 'assets/images/1.jpg',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: kDefaultPadding / 2,
                      ),
                      BestBarberButton(
                        barberName: 'Saitama Sempai',
                        barberImage: 'assets/images/1.jpg',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: kDefaultPadding / 2,
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: kDefaultPadding / 2,
                      ),
                      BestBarberButton(
                        barberName: 'Ricardo De La Riva',
                        barberImage: 'assets/images/1.jpg',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: kDefaultPadding / 2,
                      ),
                      BestBarberButton(
                        barberName: 'Antonio Segundo',
                        barberImage: 'assets/images/1.jpg',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: kDefaultPadding / 2,
                      ),
                      BestBarberButton(
                        barberName: 'Oscar De La Hoya',
                        barberImage: 'assets/images/1.jpg',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: kDefaultPadding / 2,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

//Best barber button

class BestBarberButton extends StatelessWidget {
  const BestBarberButton(
      {Key? key,
      required this.barberName,
      required this.barberImage,
      this.onTap})
      : super(key: key);
  final String barberName;
  final String barberImage;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onTap: onTap,
      child: Ink(
        child: Column(
          children: [
            ClipOval(
              child: Image.asset(
                barberImage,
                width: 140,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              barberName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
