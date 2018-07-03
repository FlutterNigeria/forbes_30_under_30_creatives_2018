import 'package:flutter/material.dart';
import 'package:forbes_africa_30/models/celebrity.dart';
import 'package:forbes_africa_30/ui/home/celebrity_row.dart';

class CelebrityDetails extends StatefulWidget {

  final Celebrity celebrity;

  const CelebrityDetails({Key key, this.celebrity}) : super(key: key);

  @override
  CelebrityDetailsState createState() {
    return new CelebrityDetailsState();
  }
}

class CelebrityDetailsState extends State<CelebrityDetails> with SingleTickerProviderStateMixin {

  ScrollController scrollController;

  AnimationController animationController;

  Animation<double> animation;

  int scrollPosition = 0;


  @override
  void initState() {
    super.initState();

    scrollController = ScrollController();

    scrollController.addListener(() {
      print(scrollController.position);
      setState(() {
        scrollPosition = scrollController.offset.ceil();
      });
    });

    animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 500));
  }


  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final baseTextStyle = const TextStyle(fontFamily: 'Poppins');

    final regularTextStyle = baseTextStyle.copyWith(
        color: Colors.white70, fontSize: 9.0, fontWeight: FontWeight.w400);

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.black,
        child: Stack(
          children: <Widget>[
            Container(
              child: Hero(
                tag: "profile-pic-${this.widget.celebrity.id}",
                child: Image.asset(
                  widget.celebrity.profileImage,
                  height: 350.0,
                  fit: BoxFit.cover,
                ),
              ),
              constraints: BoxConstraints.expand(height: 350.0),
            ),
            Container(
              margin: EdgeInsets.only(top: 240.0),
              height: 110.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[Color(0x06000000), Colors.black],
                  stops: [0.0, 0.9],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(0.0, 1.0),
                ),
              ),
            ),
            Container(
              height: 350.0,
              decoration: BoxDecoration(
                color: Colors.black38,
              ),
            ),
            Container(
              child: ListView(
                controller: scrollController,
                padding: new EdgeInsets.fromLTRB(10.0, 250.0, 10.0, 32.0),
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              widget.celebrity.name,
                              style: TextStyle(
                                fontFamily: "Poppin",
                                fontWeight: FontWeight.w600,
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Container(
                              color: Color(0xfff0c330),
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                widget.celebrity.profession,
                                style: TextStyle(
                                  fontFamily: "Poppin",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          verticalDirection: VerticalDirection.down,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "${widget.celebrity.age} yrs",
                                  style:
                                      regularTextStyle.copyWith(fontSize: 15.0),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Icon(
                                  Icons.flag,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  widget.celebrity.country,
                                  style:
                                      regularTextStyle.copyWith(fontSize: 15.0),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Description",
                          style: baseTextStyle.copyWith(
                            fontSize: 22.0,
                            color: Color(0xfff0c330),
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Seperator(),
                      ],
                    ),
                  ),
                  Container(
                    child: Text(
                      widget.celebrity.description,
                      style: regularTextStyle.copyWith(
                        fontSize: 16.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Opacity(
              opacity: scrollPosition > 180 ? 0.0 : 1.0,
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
