import 'package:discite/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: Container(
        padding: EdgeInsets.only(top: 24,),
        margin: EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/profile-picture.png', width: 120,height: 120,),
                SizedBox(width: 16,),
                Text('Rifqi Muhammad Adam\nmuh.rifqi45@gmail.com', style: AppTheme.title,),
              ],
            ),
            Container(
              height: 48,
              margin: EdgeInsets.only(left: 16, right: 16,),
              decoration: BoxDecoration(
                color: AppTheme.info,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16.0),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: AppTheme
                          .info
                          .withOpacity(0.5),
                      offset: const Offset(1.1, 1.1),
                      blurRadius: 10.0),
                ],
              ),
              child: GestureDetector(
                onTap: (){},
                child: Center(
                  child: Text(
                    'Edit Profil',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      letterSpacing: 0.0,
                      color: AppTheme
                          .nearlyWhite,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
    );
  }
}