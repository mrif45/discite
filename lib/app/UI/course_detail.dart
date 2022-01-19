import 'package:discite/app/UI/home_screen.dart';
import 'package:discite/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CourseDetailScreen extends StatefulWidget {
  const CourseDetailScreen({ Key? key }) : super(key: key);

  @override
  _CourseDetailScreenState createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppTheme.darkText,
          ),
          onPressed: () {
            Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
          },
        ),
        title: Text('Kelas JavaScript', style: TextStyle(color: AppTheme.darkText),),
      ),
      body: Container(
          margin: EdgeInsets.only(
            top: 8,
            left: 16,
            right: 16,
          ),
          color: AppTheme.white,
          child: Column(
            children: [
              Image.asset(
                'assets/picture-js-big.jpg',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                '\t\t\tSebelum mulai masuk mempelajari JavaScript lebih dalam, ada baiknya kita mempelajari dahulu bagaimana cara menyisipkan JavaScript di dalam HTML. \n\nHal ini ditujukan agar kode JavaScript kita bisa dibaca oleh browser, dan bisa berinteraksi dengan kode HTML kita.\nAda dua cara, yaitu:\n1. Internal JavaScript, yaitu menyisipkan kode JavaScript langsung di dalam file HTML.\n2. External JavaScript, yaitu membuat file JavaScript sendiri dan menyambungkannya dengan file HTML.\n\nYuk kita bahas kedua cara di atas!Internal JavaScript\nUntuk menyisipkan kode JavaScript di dalam file HTML, kita bisa menuliskan kode JavaScript di dalam tag <script>. Tag <script> sendiri bisa ditulis di dalam <head> maupun di dalam bagian akhir dari <body>.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  letterSpacing: 0.2,
                  color: AppTheme.darkText,
                ),
              )
            ],
          )),
    );
  }
}