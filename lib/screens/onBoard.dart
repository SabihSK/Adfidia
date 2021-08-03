import 'package:adfidia/screens/home.dart';
import 'package:adfidia/utilities/font_color_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingScreen extends StatefulWidget {
  static String route = "/OnboardingScreen";
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: MediaQuery.of(context).size.width * (0.02 + 0.005),
      width: MediaQuery.of(context).size.width * (0.02 + 0.005),
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF027979) : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                      alignment: Alignment.centerRight,
                      child: _currentPage != _numPages - 1
                          ? TextButton(
                              onPressed: () {
                                _pageController.animateToPage(
                                  2,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Text(
                                'Skip',
                                style: TextStyle(
                                  color: Color(0xFF027979),
                                  fontSize: width * (0.05 + 0.005),
                                ),
                              ),
                            )
                          : TextButton(
                              onPressed: () => print('Skip'),
                              child: Text(
                                '',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * (0.05 + 0.005),
                                ),
                              ),
                            )),
                  SizedBox(
                    height: width > 375 ? width * 0.05 : width * 0.00,
                  ),
                  Container(
                    height: width > 375 ? width * 1.2 : width * 1.1,
                    // color: Colors.amber,
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(height * 0.02),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/onboarding0.jpg',
                                  ),
                                  height: width * 0.6,
                                  width: width * 0.6,
                                ),
                              ),
                              SizedBox(height: height * 0.03),
                              Text(
                                'EARN MONEY',
                                style: kTitleStyle,
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: height * 0.02),
                              Text(
                                'An online earning app through which you can earn as mush as you want just by uploading an image.',
                                style: kSubtitleStyle,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(height * 0.01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/onboarding1.jpg',
                                  ),
                                  height: width * 0.6,
                                  width: width * 0.6,
                                ),
                              ),
                              SizedBox(height: height * 0.03),
                              Text(
                                'User Friendly',
                                style: kTitleStyle,
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: height * 0.02),
                              Text(
                                'An online earning app through which you can earn as mush as you want just by uploading an image.',
                                style: kSubtitleStyle,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(height * 0.01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/onboarding2.jpg',
                                  ),
                                  height: width * 0.6,
                                  width: width * 0.6,
                                ),
                              ),
                              SizedBox(height: height * 0.03),
                              Text(
                                'Here We Go!',
                                style: kTitleStyle,
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: height * 0.02),
                              Text(
                                'An online earning app through which you can earn as mush as you want just by uploading an image.',
                                style: kSubtitleStyle,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  _currentPage != _numPages - 1
                      ? Padding(
                          padding: EdgeInsets.all(height * 0.06),
                          child: ElevatedButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                              print(width);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF027979),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(height * (0.02 + 0.005)),
                              child: Text(
                                'NEXT',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      // ),
                      // )
                      : Padding(
                          padding: EdgeInsets.all(height * 0.06),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, Home.route);
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF027979),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.all(height * (0.02 + 0.005)),
                                  child: Text(
                                    'SING IN',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.04,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, Home.route);
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  side: BorderSide(
                                    width: 2.0,
                                    color: Color(0xFF027979),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.all(height * (0.02 + 0.005)),
                                  child: Text(
                                    'SIGN UP',
                                    style: TextStyle(
                                      color: Color(0xFF027979),
                                      fontSize: width * 0.04,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
