import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_mobile_app/constant.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 28.0,
      ),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 45.0,
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              decoration: BoxDecoration(
                color: Styles.secondaryColor,
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    color: Styles.primaryColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Search',
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: Styles.thirdColor,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 45.0,
            width: 45.0,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
            child: Icon(
              Icons.tune,
              size: 20,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
