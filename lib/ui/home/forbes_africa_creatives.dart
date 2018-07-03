import 'package:flutter/material.dart';
import 'package:forbes_africa_30/models/celebrity.dart';
import 'package:forbes_africa_30/ui/home/celebrity_row.dart';

class ForbesAfricaCreatives extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[800],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GradientAppBar("Forbes"),
            ForbesAfricaBody(),
          ],
        ),
      ),
    );
  }
}

class ForbesAfricaBody extends StatelessWidget {
  final List<Celebrity> celebs = celebrities;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (_, index) {
          if (index == 0) {
            return titleWidget();
          }

          return CelebrityRow(celebs[index - 1]);
        },
        itemCount: celebs.length + 1,
       // itemExtent: 156.0,
      ),
    );
  }

  Widget titleWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Color(0xfff0c330),
            child: Text(
              "30 Under 30",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins'),
            ),
          ),
          Container(
            color: Colors.black,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Under 30 Creatives",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins'),
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

class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 66.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: barHeight + statusBarHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.grey[800],
          ],
          begin: const FractionalOffset(0.0, 0.3),
          end: const FractionalOffset(0.0, 1.0),
          stops: [0.0, 0.9],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Center(
        child: Text(
          this.title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 26.0,
          ),
        ),
      ),
    );
  }
}
