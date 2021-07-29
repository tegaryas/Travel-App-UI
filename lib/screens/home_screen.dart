import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_mobile_app/screens/widgets/HomeHeader.dart';
import 'package:travel_mobile_app/screens/widgets/HomeRecommendList.dart';
import 'package:travel_mobile_app/screens/widgets/HomeSearch.dart';
import '../constant.dart';
import 'widgets/HomeCarouselImage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedKategoriIndex = 0;

  List<String> _kategori = [
    'Popular',
    'Recommended',
    'New',
    'Visited',
    'Most Liked',
    'Most View'
  ];

  Widget _buildKategori(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedKategoriIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _kategori[index],
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: _selectedKategoriIndex == index
                  ? Styles.primaryColor
                  : Colors.grey,
            ),
          ),
          Container(
            height: 2.3,
            width: 28.0,
            decoration: BoxDecoration(
              color: _selectedKategoriIndex == index
                  ? Styles.primaryColor
                  : Colors.white,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.white),
    );
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          HomeHeader(),
          SizedBox(
            height: 25.0,
          ),
          HomeSearch(),
          SizedBox(
            height: 15.0,
          ),
          HomeCarouselImage(),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 28.0,
            ),
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _kategori.length,
              itemBuilder: (context, index) => Row(
                children: [
                  _buildKategori(index),
                  SizedBox(
                    width: 28.0,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          HomeRecommendList(),
        ],
      ),
    );
  }
}
