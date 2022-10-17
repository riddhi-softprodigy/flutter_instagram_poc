import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta/home/screens/home_screen.dart';
import 'package:insta/search/screens/search_screen.dart';

class BottomTabScreen extends StatefulWidget {
  const BottomTabScreen({Key? key}) : super(key: key);

  @override
  _BottomTabScreenState createState() => _BottomTabScreenState();
}

class _BottomTabScreenState extends State<BottomTabScreen> {
  int _navBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: getTabPage(_navBarIndex),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 15.0,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _wBottomTabBar());
  }

  void onTabTap(int index) {
    setState(() => _navBarIndex = index);
  }

  Widget getTabPage(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return const SearchScreen();
      case 2:
        return const HomeScreen();
      case 3:
        return const HomeScreen();
      case 4:
        return const HomeScreen();
      default:
        return const HomeScreen();
    }
  }

  Widget _wBottomTabBar() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 0.5,
          width: MediaQuery.of(context).size.width,
          color: Colors.black87,
        ),
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.green,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _navBarIndex,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: _navBarIndex == 0
                  ? Image.asset(
                      'assets/bottom_nav_bar/home_tab_selected.png',
                      height: 22,
                      width: 22,
                    )
                  : Image.asset(
                      'assets/bottom_nav_bar/home_tab_unselected.png',
                      height: 22,
                      width: 22,
                    ),
            ),
            BottomNavigationBarItem(
              label: 'Explore',
              icon: _navBarIndex == 1
                  ? Image.asset(
                      'assets/bottom_nav_bar/explore_tab_selected.png',
                      height: 22,
                      width: 22,
                    )
                  : Image.asset(
                      'assets/bottom_nav_bar/explore_tab_unselected.png',
                      height: 22,
                      width: 22,
                    ),
            ),
            BottomNavigationBarItem(
              label: 'Activity',
              icon: _navBarIndex == 2
                  ? Image.asset(
                      'assets/bottom_nav_bar/activity_tab_selected.png',
                      height: 22,
                      width: 22,
                    )
                  : Image.asset(
                      'assets/bottom_nav_bar/activity_tab_unselected.png',
                      height: 22,
                      width: 22,
                    ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: _navBarIndex == 3
                  ? SvgPicture.asset(
                      'assets/bottom_nav_bar/profile_tab_selected.svg',
                      height: 22,
                      width: 22,
                    )
                  : Image.asset(
                      'assets/bottom_nav_bar/profile_tab_unselected.png',
                      height: 22,
                      width: 22,
                    ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: _navBarIndex == 4
                  ? SvgPicture.asset(
                      'assets/bottom_nav_bar/profile_tab_selected.svg',
                      height: 22,
                      width: 22,
                    )
                  : Image.asset(
                      'assets/bottom_nav_bar/profile_tab_unselected.png',
                      height: 22,
                      width: 22,
                    ),
            ),
          ],
          onTap: onTabTap,
        ),
      ],
    );
  }
}
