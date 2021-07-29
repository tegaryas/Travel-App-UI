import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeRecommendList extends StatelessWidget {
  const HomeRecommendList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        RecommendList(
          image: 'assets/images/image2.jpg',
          title: 'Mount Bromo',
          waktu: '7 Days, 7 Night',
        ),
        RecommendList(
          image: 'assets/images/image1.jpg',
          title: 'Mount Bromo',
          waktu: '7 Days, 7 Night',
        ),
        RecommendList(
          image: 'assets/images/image2.jpg',
          title: 'Mount Bromo',
          waktu: '7 Days, 7 Night',
        ),
      ],
    );
  }
}

class RecommendList extends StatelessWidget {
  final String image;
  final String title;
  final String waktu;
  const RecommendList({
    Key key,
    this.image,
    this.waktu,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 28.0,
        right: 28.0,
        bottom: 28.0,
      ),
      height: 160,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12,
        ),
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          bottom: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              waktu,
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
