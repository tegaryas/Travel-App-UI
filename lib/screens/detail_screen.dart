import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_mobile_app/constant.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/slide3.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 25.0,
            top: 200.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange[300],
                      size: 25,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      '4.9',
                      style: GoogleFonts.inter(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      '(1440)',
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 22,
                ),
                Container(
                  width: 200,
                  child: Text(
                    'Gunung Semeru',
                    style: GoogleFonts.inter(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Text(
                  'Rp.465.217',
                  style: GoogleFonts.inter(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'per person',
                  style: GoogleFonts.inter(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'READ MORE',
                      style: GoogleFonts.inter(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      FontAwesomeIcons.arrowCircleRight,
                      color: Colors.white,
                      size: 18.0,
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.4,
            left: MediaQuery.of(context).size.width * 0.4,
            bottom: 80,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(18),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                    color: Styles.primaryColor,
                  ),
                  child: Image.asset(
                    'assets/images/map.png',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: 5,
                      ),
                      height: 3,
                      width: 3,
                      color: Colors.grey,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: 5,
                      ),
                      height: 3,
                      width: 3,
                      color: Colors.grey,
                    ),
                    Container(
                      height: 3,
                      width: 30,
                      color: Colors.white,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 5,
                      ),
                      height: 3,
                      width: 3,
                      color: Colors.grey,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 5,
                      ),
                      height: 3,
                      width: 3,
                      color: Colors.grey,
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            right: 25.0,
            top: 60.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '02',
                  style: GoogleFonts.inter(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w600,
                    color: Styles.primaryColor,
                  ),
                ),
                Text(
                  '/08',
                  style: GoogleFonts.inter(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                    color: Styles.primaryColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
