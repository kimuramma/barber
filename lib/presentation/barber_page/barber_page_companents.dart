import 'package:flutter/material.dart';

import '../constants.dart';

//reuseable barberpage container
class ReusableContainer extends StatelessWidget {
  const ReusableContainer({
    Key? key,
    required this.text,
    required this.value,
  }) : super(key: key);
  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: kPrimaryColor),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 18),
            ),
            Text(value, style: const TextStyle(fontSize: 18))
          ],
        ),
      ),
    );
  }
}

//barber personal tabbar

class BarberTabBar extends StatelessWidget {
  const BarberTabBar({
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
              Navigator.of(context).pushNamed('/my_barber');
            },
            icon: const Icon(Icons.person_add),
            splashColor: Colors.transparent,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.cut)),
        ],
      ),
    );
  }
}

class BarberBio extends StatelessWidget {
  const BarberBio({Key? key, required this.text, required this.value})
      : super(key: key);
  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: kPrimaryColor),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text),
            Text(value),
          ],
        ),
      ),
    );
  }
}

//barber menu

class BarberMenu extends StatelessWidget {
  const BarberMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: kPrimaryColor),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                BarberMenuButton(
                  image: 'assets/images/1.jpg',
                  text: 'Fade',
                  price: '"80\$"',
                ),
                BarberMenuButton(
                  image: 'assets/images/1.jpg',
                  text: 'UnderCut',
                  price: '"50\$"',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                BarberMenuButton(
                  image: 'assets/images/1.jpg',
                  text: 'Fade',
                  price: '"80\$"',
                ),
                BarberMenuButton(
                  image: 'assets/images/1.jpg',
                  text: 'UnderCut',
                  price: '"50\$"',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//barber menu button
class BarberMenuButton extends StatelessWidget {
  const BarberMenuButton(
      {Key? key, required this.text, required this.price, required this.image})
      : super(key: key);
  final String text;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        width: 150,
        height: 150,
        child: Column(
          children: [
            ClipOval(
              child: Image.asset(
                image,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: kDefaultPadding / 2,
                ),
                Text(
                  price,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
