import 'package:babySitting/mock_data/mork_data.dart';
import 'package:babySitting/screens/blankscreen.dart';
import 'package:babySitting/theme/app_colors.dart';
import 'package:babySitting/theme/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DashbaordScreen extends StatefulWidget {
  @override
  _DashbaordScreenState createState() => _DashbaordScreenState();
}

class _DashbaordScreenState extends State<DashbaordScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  int _selectedPageIndex = 0;

  List<Map<String, Object>> _pages;

  Widget headerContainer({String title}) {
    return Container(
      padding: const EdgeInsets.only(
        left: 12,
      ),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: AppTextStyle.getRegularTextStyle(
          25,
          color: AppColors.blue,
          weight: medium,
        ),
      ),
    );
  }

  Widget _buildBookingCard() {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'One Day Package',
                  style: TextStyle(
                    color: Color(0xFFE36DA6),
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14.0, vertical: 4.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: const Color(0xFFE36DA6),
                  textColor: Colors.white,
                  child: const Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'From',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      Row(
                        children: const [
                          Icon(
                            Icons.calendar_today_outlined,
                            color: Color(0xFFEDA3C7),
                            size: 20.0,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            '12.08.2020',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12.0),
                      Row(
                        children: const [
                          Icon(
                            Icons.access_time,
                            color: Color(0xFFEDA3C7),
                            size: 20.0,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            '11 pm',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'To',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      Row(
                        children: const [
                          Icon(
                            Icons.calendar_today_outlined,
                            color: Color(0xFFEDA3C7),
                            size: 20.0,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            '13.08.2020',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12.0),
                      Row(
                        children: const [
                          Icon(
                            Icons.access_time,
                            color: Color(0xFFEDA3C7),
                            size: 20.0,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            '07 am',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                Expanded(
                  child: RaisedButton.icon(
                    color: const Color(0xFF262F71),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.star_border_outlined,
                      size: 16.0,
                    ),
                    label: const Text(
                      'Rate Us',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: RaisedButton.icon(
                    color: const Color(0xFF262F71),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.location_on_outlined,
                      size: 16.0,
                    ),
                    label: const Text(
                      'Geolocat',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: RaisedButton.icon(
                    color: const Color(0xFF262F71),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic_outlined,
                      size: 10.0,
                    ),
                    label: const Text(
                      'Survillence',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _pages = [
      {
        'page': DashbaordScreen(),
        'title': 'Home',
      },
      {
        'page': BlankScreen(),
        'title': 'Packages',
      },
      {
        'page': BlankScreen(),
        'title': 'Booking',
      },
      {
        'page': BlankScreen(),
        'title': 'Profile',
      },
    ];
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: AnimatedContainer(
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor)
            ..rotateY(isDrawerOpen ? -0.5 : 0),
          duration: const Duration(milliseconds: 250),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0),
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: isDrawerOpen
                              ? MainAxisAlignment.spaceBetween
                              : MainAxisAlignment.end,
                          children: <Widget>[
                            if (isDrawerOpen)
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    xOffset = 0;
                                    yOffset = 0;
                                    scaleFactor = 1;
                                    isDrawerOpen = false;
                                  });
                                },
                                child: const Icon(
                                  Icons.arrow_back_ios,
                                  size: 30,
                                ),
                              )
                            else
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    xOffset = 190;
                                    yOffset = 80;
                                    scaleFactor = 0.8;
                                    isDrawerOpen = true;
                                  });
                                },
                                child: Positioned(
                                  child: Image.asset(
                                      'assets/images/drawericon.png'),
                                ),
                              ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 18.0,
                          top: 12,
                        ),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: AppColors.pinkColor,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: const Image(
                                  fit: BoxFit.cover,
                                  width: 50,
                                  height: 50,
                                  image: AssetImage('assets/images/jatin.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Welcome',
                                  style: AppTextStyle.getRegularTextStyle(
                                    22,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Jatin Kataria',
                                  style: AppTextStyle.getRegularTextStyle(
                                    22,
                                    color: AppColors.pinkColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 170,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: AppColors.lightPink,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 18.0,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Nanny And Babysitting \nServices',
                                            style: AppTextStyle
                                                .getRegularTextStyle(
                                              16,
                                              color: AppColors.blue,
                                              weight: medium,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          SizedBox(
                                            height: 25,
                                            child: RaisedButton(
                                              onPressed: () {},
                                              color: AppColors.blue,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: Text(
                                                'Book Now',
                                                style: AppTextStyle
                                                    .getRegularTextStyle(
                                                  12,
                                                  color: AppColors.whiteColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 60,
                              ),
                              child: SizedBox(
                                height: 200,
                                child: Image.asset(
                                  'assets/images/cardimage.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      headerContainer(title: 'Your Current Booking'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildBookingCard(),
                      ),
                      headerContainer(title: 'packages'),
                      ...List.generate(
                        morkData.length,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: Color(int.tryParse(
                                    morkData[index]['cardBGColor'])),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        morkData[index]["icon"],
                                        height: 30,
                                      ),
                                      RaisedButton(
                                        onPressed: () {},
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        color: Color(
                                          int.tryParse(
                                            morkData[index]['buttonBGColor'],
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                            morkData[index]['buttonText'],
                                            style: AppTextStyle
                                                .getRegularTextStyle(
                                              15.0,
                                              color: Color(
                                                int.tryParse(
                                                  morkData[index]
                                                      ['buttonTextColor'],
                                                ),
                                              ),
                                              weight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 30.0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        morkData[index]['title'],
                                        style: AppTextStyle.getRegularTextStyle(
                                          19.0,
                                          color: AppColors.blue,
                                          weight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        morkData[index]['amount'],
                                        style: AppTextStyle.getRegularTextStyle(
                                          14.0,
                                          color: Color(
                                            int.tryParse(morkData[index]
                                                ['amountTextColor']),
                                          ),
                                          weight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 25.0),
                                  Text(
                                    morkData[index]['description'],
                                    style: AppTextStyle.getRegularTextStyle(
                                      14,
                                      color: Color(
                                        int.tryParse(morkData[index]
                                            ['descriptionTextColor']),
                                      ),
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(40)),
                ),
                child: BottomNavigationBar(
                  onTap: _selectPage,
                  unselectedItemColor: Colors.black,
                  unselectedLabelStyle: const TextStyle(color: Colors.black),
                  selectedItemColor: AppColors.pinkColor,
                  currentIndex: _selectedPageIndex,
                  items: const [
                    BottomNavigationBarItem(
                      backgroundColor: Colors.white,
                      icon: Icon(
                        Icons.home,
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      backgroundColor: Colors.white,
                      icon: Icon(
                        MdiIcons.brightnessPercent,
                      ),
                      label: 'Packages',
                    ),
                    BottomNavigationBarItem(
                      backgroundColor: Colors.white,
                      icon: Icon(Icons.access_time),
                      label: 'Bookings',
                    ),
                    BottomNavigationBarItem(
                      backgroundColor: Colors.white,
                      icon: Icon(Icons.person_outline_rounded),
                      label: 'Profile',
                    ),
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
