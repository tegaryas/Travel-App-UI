import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_mobile_app/screens/detail_screen.dart';

class HomeCarouselImage extends StatelessWidget {
  const HomeCarouselImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 25,
          ),
          _BuildImageContainer(
            image: 'assets/images/slide3.jpg',
            title: 'Gunung Semeru',
            rating: 4.9,
            reviewcount: 2745,
            onPress: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(),
              ),
            ),
          ),
          _BuildImageContainer(
            image: 'assets/images/slide2.jpg',
            title: 'Ubud Bali',
            rating: 4.8,
            reviewcount: 1271,
            onPress: () {},
          ),
          _BuildImageContainer(
            image: 'assets/images/slide1.jpg',
            title: 'Senja Island',
            rating: 4.9,
            reviewcount: 2137,
            onPress: () {},
          ),
          _BuildImageContainer(
            image: 'assets/images/slide4.jpg',
            title: 'Kelingking Beach',
            rating: 4.9,
            reviewcount: 2376,
            onPress: () {},
          ),
        ],
      ),
    );
  }
}

class _BuildImageContainer extends StatelessWidget {
  final String image;
  final String title;
  final double rating;
  final int reviewcount;
  final Function onPress;
  const _BuildImageContainer({
    Key key,
    this.image,
    this.title,
    this.rating,
    this.reviewcount,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(
          right: 14,
        ),
        width: 220.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(
            left: 20.0,
            bottom: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 100,
                child: Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange[300],
                    size: 20,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    '$rating',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    '($reviewcount)',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
