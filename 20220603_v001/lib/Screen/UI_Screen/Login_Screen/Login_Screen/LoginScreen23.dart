import 'dart:math';

import 'package:flutter/material.dart';

const double kTitleTextSize = 24;

const double kBodyTextSize = 14;

const double kBtnTextSize = 18;

const double kBtnRadius = 24;

const double kInputBorderRadius = 5;

const double kIconSize = 24;

const double kIconBoxSize = 56;

const FontWeight kLightFontWeight = FontWeight.w300;

const FontWeight kMediumFontWeight = FontWeight.w800;

class LoginScreen23 extends StatefulWidget {
  LoginScreen23({Key? key}) : super(key: key);

  @override
  _LoginScreen23State createState() => _LoginScreen23State();
}

class _LoginScreen23State extends State<LoginScreen23> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.network(
              'https://images.pexels.com/photos/3713892/pexels-photo-3713892.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
          Column(
            children: [
              SizedBox(height: 260),
              ClipPath(
                clipper: LoginClipper(),
                child: LoginBodyWidget(),
              ),
            ],
          ),
          // Positioned(
          //   top: 64,
          //   left: 28,
          //   child: BackIcon(),
          // )
        ],
      ),
    );
  }
}

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.maxFinite,
      padding: EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Text(
            'Login',
            style: kTitleTextStyle.copyWith(fontSize: 27.0),
          ),
          SizedBox(height: 20),
          Text(
            'Your Email',
            style: kBodyTextStyle,
          ),
          SizedBox(height: 4),
          LoginInput(
            hintText: 'Email',
            prefixIcon: Icons.email,
          ),
          SizedBox(height: 16),
          Text(
            'Your Password',
            style: kBodyTextStyle,
          ),
          SizedBox(height: 4),
          LoginInput(
            hintText: 'Password',
            prefixIcon: Icons.vpn_key,
            obscureText: true,
          ),
          SizedBox(height: 32),
          LoginBtnIconWidget(),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}

class LoginClipper extends CustomClipper<Path> {
  // ????????????
  Point p1 = Point(0.0, 54.0);
  Point c1 = Point(20.0, 25.0);
  Point c2 = Point(81.0, -8.0);
  // ????????????
  Point p2 = Point(160.0, 20.0);
  Point c3 = Point(216.0, 38.0);
  Point c4 = Point(280.0, 73.0);
  // ????????????
  Point p3 = Point(280.0, 44.0);
  Point c5 = Point(280.0, -11.0);
  Point c6 = Point(330.0, 8.0);

  @override
  Path getClip(Size size) {
    // ????????????
    Point p4 = Point(size.width, .0);

    Path path = Path();
    // ?????????????????????
    path.moveTo(p1.x as double, p1.y as double);
    //???????????? ?????????????????????
    path.cubicTo(c1.x as double, c1.y as double, c2.x as double, c2.y as double, p2.x as double, p2.y as double);
    //???????????? ?????????????????????
    path.cubicTo(c3.x as double, c3.y as double, c4.x as double, c4.y as double, p3.x as double, p3.y as double);
    //???????????? ?????????????????????
    path.cubicTo(c5.x as double, c5.y as double, c6.x as double, c6.y as double, p4.x as double, p4.y as double);
    // ??????????????????
    path.lineTo(size.width, size.height);
    // ??????????????????
    path.lineTo(0, size.height);
    //??????
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return this.hashCode != oldClipper.hashCode;
  }
}

/// ??????????????????
class LoginBtnIconWidget extends StatelessWidget {
  const LoginBtnIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Container(
          height: 50.0,
          width: 160,
          decoration: BoxDecoration(color: Colors.pink[300]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w800))
            ],
          ),
        )
      ],
    );
  }
}

///???????????????
class LoginInput extends StatelessWidget {
  const LoginInput({
    Key? key,
    this.hintText,
    this.prefixIcon,
    this.obscureText = false,
  }) : super(key: key);

  final String? hintText;
  final IconData? prefixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: kInputBorder,
        focusedBorder: kInputBorder,
        enabledBorder: kInputBorder,
        prefixIcon: Container(
          width: kIconBoxSize,
          height: kIconBoxSize,
          alignment: Alignment.center,
          child: Icon(
            prefixIcon,
            size: 17.0,
          ),
        ),
      ),
      obscureText: obscureText,
      style: kBodyTextStyle.copyWith(
        fontSize: 18,
      ),
    );
  }
}

/// ????????????
class BackIcon extends StatelessWidget {
  const BackIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
          width: kIconBoxSize,
          height: kIconBoxSize,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.arrow_back)),
    );
  }
}

// ????????????
const Color kBgColor = Color(0xFFFEDCE0);
// ????????????
const Color kTextColor = Color(0xFF3D0007);
// ??????????????????
const Color kBtnColorStart = Color(0xFFFA6B74);
// ??????????????????
const Color kBtnColorEnd = Color(0xFFF89500);
// ??????????????????
const Color kBtnShadowColor = Color(0x33D83131);
// ?????????????????????
const Color kInputBorderColor = Color(0xFFECECEC);

// ?????????????????????
const LinearGradient kBtnLinearGradient = LinearGradient(
  colors: [
    kBtnColorStart,
    kBtnColorEnd,
  ],
);

const List<BoxShadow> kBtnShadow = [
  BoxShadow(
    color: kBtnShadowColor,
    offset: Offset(0, 8),
    blurRadius: 20,
  )
];

// ??????????????????
const TextStyle kTitleTextStyle = TextStyle(
  fontSize: kTitleTextSize,
  color: kTextColor,
  fontFamily: "Sofia",
  fontWeight: kMediumFontWeight,
);

// ??????????????????
const TextStyle kBodyTextStyle = TextStyle(
  fontSize: kBodyTextSize,
  color: kTextColor,
  fontFamily: "Sofia",
  fontWeight: kLightFontWeight,
);
// ??????????????????
const TextStyle kBtnTextStyle = TextStyle(
  color: kBtnColorStart,
  fontFamily: "Sofia",
  fontSize: kBtnTextSize,
  fontWeight: kMediumFontWeight,
);
// ???????????????
InputBorder kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kInputBorderRadius),
  borderSide: BorderSide(
    width: 1,
    color: kInputBorderColor,
  ),
);
