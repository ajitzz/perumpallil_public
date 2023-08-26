import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:united21/screens/loan.dart';

import '../../../common/color_extension.dart';

class MyBottomNavigation extends StatefulWidget {
  final Function updateTabView; // Add this line

  const MyBottomNavigation({required this.updateTabView});
  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int selectTab = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  Colors.black, // Change this color to the desired tint color
                  BlendMode.modulate,
                ),
                child: Image.asset("assets/images/bottom_bar_bg.png"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        selectTab = 0;
                        widget.updateTabView(const LoanScreen());
                      });
                    },
                    icon: Image.asset(
                      "assets/images/home.png",
                      width: 20,
                      height: 20,
                      color:
                          selectTab == 0 ? TColor.redshade500 : TColor.gray30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        selectTab = 1;
                        // ignore: unused_local_variable
                        widget.updateTabView(const LoanScreen());
                      });
                    },
                    icon: Image.asset(
                      "assets/images/budgets.png",
                      width: 20,
                      height: 20,
                      color:
                          selectTab == 1 ? TColor.redshade500 : TColor.gray30,
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                    height: 50,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        selectTab = 2;
                        widget.updateTabView(CalenderView());
                      });
                    },
                    icon: Image.asset(
                      "assets/images/calendar.png",
                      width: 20,
                      height: 20,
                      color:
                          selectTab == 2 ? TColor.redshade500 : TColor.gray30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        selectTab = 3;
                        widget.updateTabView(const LoanScreen());
                      });
                    },
                    icon: Image.asset(
                      "assets/images/creditcards.png",
                      width: 20,
                      height: 20,
                      color:
                          selectTab == 3 ? TColor.redshade500 : TColor.gray30,
                    ),
                  ),
                ],
              )
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoanScreen()));
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: TColor.secondary.withOpacity(0.25),
                    blurRadius: 10,
                    offset: const Offset(0, 4))
              ], borderRadius: BorderRadius.circular(50)),
              child: CircleAvatar(
                radius: 32,
                backgroundColor: Colors.red.shade900,
                child: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, LoanScreen.id);
                  },
                  icon: const Icon(
                    Icons.currency_rupee_sharp,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CardsView {}

class CalenderView {}
