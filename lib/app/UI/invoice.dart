import 'package:discite/app/UI/course_detail.dart';
import 'package:discite/app/UI/home_screen.dart';
import 'package:discite/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/success.png'), 
            Text('Pembelian kelas JavaScript telah berhasil', style: AppTheme.title,),
            SizedBox(height: 16,),
            Container(
              height: 48,
              margin: EdgeInsets.only(left: 24, right: 24,),
              decoration: BoxDecoration(
                color: AppTheme.primary,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16.0),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: AppTheme
                          .primary
                          .withOpacity(0.5),
                      offset: const Offset(1.1, 1.1),
                      blurRadius: 10.0),
                ],
              ),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CourseDetailScreen()),
                  );
                },
                child: Center(
                  child: Text(
                    'Mulai Belajar',
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
            SizedBox(height: 16,),
            Container(
              height: 48,
              margin: EdgeInsets.only(left: 24, right: 24,),
              decoration: BoxDecoration(
                color: AppTheme.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Center(
                  child: Text(
                    'Kembali Ke Beranda',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      letterSpacing: 0.0,
                      color: AppTheme
                          .primary,
                    ),
                  ),
                ),
              ),
            ),])
        ),
        // child: Padding(
        //         padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        //         child: SizedBox(
        //           width: AppBar().preferredSize.height,
        //           height: AppBar().preferredSize.height,
        //           child: Material(
        //             color: Colors.transparent,
        //             child: InkWell(
        //               borderRadius:
        //                   BorderRadius.circular(AppBar().preferredSize.height),
        //               child: Icon(
        //                 Icons.arrow_back_ios,
        //                 color: AppTheme.nearlyBlack,
        //               ),
        //               onTap: () {
        //                 Navigator.pop(context);
        //               },
        //             ),
        //           ),
        //         ),
        //       ),
      
    );
  }
}