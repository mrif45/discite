import 'package:discite/app/UI/profile.dart';
import 'package:discite/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'course_list.dart';
import 'home_course_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageOptions = [
    DesignCourseHomeScreen(),
    CourseListScreen(),
    ProfileScreen()
  ];

  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
            selectedIconTheme: IconThemeData(color: AppTheme.primary),
            selectedItemColor: AppTheme.primary,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Kelas Saya',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profil',
              ),
            ],
            currentIndex: _selectedPage,
            onTap: (index) {
              setState(() {
                _selectedPage = index;
              });
            }));
  }
}
