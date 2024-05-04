import 'package:carousel_slider/carousel_slider.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2 createState() => _Page2();
}

class _Page2 extends State<Page2> {
  final themeMode = ValueNotifier(2);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: themeMode,
        builder: (context, value, g) {
          return OrientationBuilder(builder: (context, orientation) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Match Highlight',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          'See All',
                          style: GoogleFonts.inter(
                            color: Color(0xff8D8D8D),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: orientation == Orientation.landscape
                          ? MediaQuery.sizeOf(context).height / 2.5
                          : MediaQuery.sizeOf(context).height / 5.15,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            child: Container(
                              margin: EdgeInsets.all(5.0),
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.asset('assets/card/img_2.png',
                                          fit: BoxFit.cover,
                                          width:
                                              MediaQuery.sizeOf(context).width /
                                                  1.5),
                                    ],
                                  )),
                            ),
                          ),
                          Container(
                            child: Container(
                              margin: EdgeInsets.all(5.0),
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.asset('assets/card/img_3.png',
                                          fit: BoxFit.cover,
                                          width:
                                              MediaQuery.sizeOf(context).width /
                                                  1.5),
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Trending News',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          'See All',
                          style: GoogleFonts.inter(
                            color: Color(0xff8D8D8D),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height/3,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Card(
                        shape: Border.all(width: 0),
                        color: Color(0xff353535),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: ListView.separated(
                              itemCount: 3, // Set the number of items in the list
                              separatorBuilder: (BuildContext context, int index) => const Divider(), // Add a divider between each item in the list
                              itemBuilder: (BuildContext context, int index) {
                                // final imageData = imageDataList[index]; // Get the ImageData object at the current index
                                return ListTile(
                                  leading: Image.asset('assets/card/img_4.png'), // Display the image on the left side of the ListTile
                                  title: Text(
                                    'Real Madrid Are Still Confident In Signing Mbappe This Summer',
                                    style: GoogleFonts.inter(
                                      color: Color(0xffffffff),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ), // Display the name as the title of the ListTile
                                  subtitle: Row(
                                    children: [
                                      Icon(FluentIcons.heart_48_regular),
                                      Text(
                                        '12',
                                        style: GoogleFonts.inter(
                                          color: Color(0xff8d8d8d),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Icon(FluentIcons.comment_48_regular),
                                      Text(
                                        '2',
                                        style: GoogleFonts.inter(
                                          color: Color(0xff8d8d8d),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Text(
                                        '2 hours from Now,',
                                        style: GoogleFonts.inter(
                                          color: Color(0xff8d8d8d),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ],
                                  ), // Display the description as the subtitle of the ListTile
                                );
                              }
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          });
        });
  }
}
