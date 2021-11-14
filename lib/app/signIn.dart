import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget ({required Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final scaffoldKey= GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(padding: EdgeInsetsDirectional.fromSTEB(24, 129, 24, 0),
              child: Image.asset('assets/Logo.png',
              width: 60,
              height: 60,
              fit: BoxFit.fitHeight,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(child: ElevatedButton(
                  onPressed: () { print('Button Pressed'); }, child: null,
                  
                  
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
