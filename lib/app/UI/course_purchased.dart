import 'package:discite/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CoursePurchased extends StatefulWidget {
  const CoursePurchased({Key? key, required this.callBack}) : super(key: key);

  final Function callBack;
  @override
  _CoursePurchasedState createState() => _CoursePurchasedState();
}

class _CoursePurchasedState extends State<CoursePurchased>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  Animation? animation;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return true;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation =
    Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: animationController,
            curve: Interval((.3), 1.0,
                curve: Curves.fastOutSlowIn)));
    animationController.forward();
    return Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: Container(
          height: 100,
          width: double.infinity,
            child: CategoryView(
              animation: animation,
              animationController: animationController,
              callback: () {
                widget.callBack();
              },
            )));
  }
}

class CategoryView extends StatelessWidget {
  const CategoryView(
      {Key? key,
      required this.animationController,
      required this.animation,
      required this.callback})
      : super(key: key);

  final VoidCallback callback;
  final AnimationController animationController;
  final Animation<dynamic> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, child) {
        return FadeTransition(
          opacity: animationController,
          child: Transform(
            transform: Matrix4.translationValues(
                100 * (1.0 - animation.value), 0.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                callback();
              },
            child: SizedBox(
                width: 280,
                child: Stack(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width: 120,),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[Text(
                                  'HTML untuk Pemula',     
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    letterSpacing: 0.27,
                                    color: AppTheme.darkerText,
                                  ),
                                ),
                                ]),
                                SizedBox(height: 8,),
                              Row(
                                children: <Widget>[Text(
                                  '12 pelajaran',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    letterSpacing: 0.27,
                                    color: AppTheme.grey,
                                  ),
                                ),
                                ]),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8, bottom: 16, right: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment
                                          .start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Lanjut Belajar',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        letterSpacing: 0.27,
                                        color: AppTheme.primary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 24, left: 24),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16.0)),
                              child: AspectRatio(
                                  aspectRatio: 1.0,
                                  child: Image.asset('assets/picture-js.jpg')),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
