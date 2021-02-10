import 'package:babySitting/screens/dashboard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 40,
                left: 10,
              ),
              child: Column(
                children: <Widget>[
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: CircleAvatar(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: const Image(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/jatin.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Jatin Kataria',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const TextWidget(
                    text: 'Home',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextWidget(
                    text: 'Book A Nanny',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextWidget(
                    text: 'How It Works',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextWidget(
                    text: 'Why Nanny Vanny',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextWidget(
                    text: 'My Bookings',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextWidget(
                    text: 'My Profile',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextWidget(
                    text: 'Support',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          DashbaordScreen(),
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;

  const TextWidget({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 190),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          if (text == 'Support')
            Container()
          else
            const Divider(
              color: Colors.black,
              height: 10,
            ),
        ],
      ),
    );
  }
}
