import 'package:discite/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class CourseEmptyScreen extends StatefulWidget {
  const CourseEmptyScreen({ Key? key }) : super(key: key);

  @override
  _CourseEmptyScreenState createState() => _CourseEmptyScreenState();
}

class _CourseEmptyScreenState extends State<CourseEmptyScreen> {  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            getAppBarUI(),
            SizedBox(height: 16,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/empty-state.png'), 
                Text('tidak ada kelas yang aktif', style: AppTheme.body1,),
                SizedBox(height: 16,),
              ]
            ),
          ],
        ),
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
              currentIndex: 1,
              onTap: (index) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
              })
      ),
    );
  }

  Widget getAppBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Kelas Saya',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    letterSpacing: 0.27,
                    color: AppTheme.darkerText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 40,
            height: 40,
            child: Image.asset('assets/profile-picture.png'),
          )
        ],
      ),
    );
  }
}