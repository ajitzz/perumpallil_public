import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// ignore: unused_import
import 'package:united21/components/my_bottom_navigation_bar.dart';
import 'package:united21/components/pageview_recipe_list.dart';
// import 'package:united21/components/popular_recipe_list.dart';
import 'package:united21/screens/nav/navigationHome.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({Key? key}) : super(key: key);
  static String id = 'home_screen';

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  Widget currentTabView =
      const PageViewRecipeList(); // Initialize with the default tab view

  void updateTabView(Widget widget) {
    setState(() {
      currentTabView = widget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFe7eefb),
      body: SafeArea(
        child: ListView(
          primary: true,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.5,
                vertical: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'PERUMPALLIL',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 226, 36, 36),
                        ),
                      ),
                      Text(
                        'FINANCE',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.amber.shade800,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 36,
                    child: SvgPicture.asset('assets/svg/icon-nav.svg'),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16.53,
            ),
            const PageViewRecipeList(),
            const SizedBox(
              height: 42.52,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(
            //     horizontal: 32,
            //   ),
            //   child: Row(
            //     children: [
            //       SvgPicture.asset('assets/svg/icon-popular.svg'),
            //       const SizedBox(
            //         width: 4.26,
            //       ),
            //       // const Text(
            //       //   'Popular',
            //       //   style: TextStyle(
            //       //     fontSize: 20,
            //       //     color: Color.fromARGB(255, 165, 2, 2),
            //       //   ),
            //       // )
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 16,
            ),
            // const PopularRecipeList(),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigation(updateTabView: updateTabView),
    );
  }
}
