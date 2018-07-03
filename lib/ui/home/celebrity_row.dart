import 'package:flutter/material.dart';
import 'package:forbes_africa_30/models/celebrity.dart';
import 'package:forbes_africa_30/ui/home/celebrity_details.dart';
import 'package:forbes_africa_30/ui/styles/fonts.dart';

class CelebrityRow extends StatelessWidget {
  final Celebrity celebrity;

  CelebrityRow(this.celebrity);

  @override
  Widget build(BuildContext context) {
    final Widget celebrityInfoCardContent = Container(
      margin: EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 4.0,
          ),
          Text(
            celebrity.name,
            style: headerTextStyle,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            celebrity.profession,
            style: subHeaderTextStyle,
          ),
          Seperator(),
          Row(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 12.0,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "${celebrity.age} yrs",
                      style: regularTextStyle,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.flag,
                      color: Colors.white,
                      size: 12.0,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      celebrity.country,
                      style: regularTextStyle,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );

    final Widget celebrityInfoCard = Container(
      height: 124.0,
      margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        color: Colors.grey[700],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          )
        ],
      ),
      child: celebrityInfoCardContent,
    );

    final Widget celebrityThumbnail = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
      ),
      margin: EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: ClipOval(
        child: Hero(
          tag: "profile-pic-${this.celebrity.id}",
          child: Image(
            image: AssetImage(this.celebrity.profileImage),
            fit: BoxFit.cover,
            height: 92.0,
            width: 92.0,
          ),
        ),
      ),
    );

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) {
              return CelebrityDetails(celebrity: this.celebrity);
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: Stack(
          children: <Widget>[
            celebrityInfoCard,
            celebrityThumbnail,
          ],
        ),
      ),
    );
  }
}

class Seperator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height: 2.0,
      width: 18.0,
      color: Color(0xfff0c330),
    );
  }
}
