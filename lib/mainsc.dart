import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:mobile/jailo.dart';
import 'package:mobile/jailo2.dart';
import 'package:mobile/jailo3.dart';
import 'package:mobile/profile.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> iconList = [
      Icons.home_outlined,
      Icons.favorite_outline,
      Icons.calendar_month_outlined,
      Icons.person_3_outlined,
    ];
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.transparent,
            alignment: Alignment.topCenter,
            child: Image.network(
                'https://images.pexels.com/photos/1581840/pexels-photo-1581840.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
          ),
          Container(
              height: 520,
              width: double.infinity,
              padding: EdgeInsets.only(left: 24, right: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    height: 4,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Recommended',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    child: Container(
                      height: 200,
                      // width: 300,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return Jailopg();
                                },
                              ));
                            },
                            child: BackdropFilter(
                              filter: ImageFilter.blur(),
                              child: Container(
                                height: 180,
                                width: 180,
                                padding: EdgeInsets.only(bottom: 24),
                                alignment: Alignment.bottomCenter,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            'https://images.pexels.com/photos/7163661/pexels-photo-7163661.jpeg?auto=compress&cs=tinysrgb&w=800')),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Container(
                                  width: 140,
                                  height: 52,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey.withOpacity(0.8)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jailoo',
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                color: Colors.blue,
                                                size: 10,
                                              ),
                                              Text(
                                                'Suu-Samyr',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 10),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.calendar_month_outlined,
                                                color: Colors.blue,
                                                size: 10,
                                              ),
                                              Text(
                                                'July 18',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return Jailopg2();
                                },
                              ));
                            },
                            child: BackdropFilter(
                              filter: ImageFilter.blur(),
                              child: Container(
                                height: 180,
                                width: 180,
                                padding: EdgeInsets.only(bottom: 24),
                                alignment: Alignment.bottomCenter,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            'https://images.pexels.com/photos/6271725/pexels-photo-6271725.jpeg?auto=compress&cs=tinysrgb&w=800')),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Container(
                                  width: 140,
                                  height: 52,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey.withOpacity(0.8)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Chychkan',
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                color: Colors.blue,
                                                size: 10,
                                              ),
                                              Text(
                                                'Toktogul',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 10),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.calendar_month_outlined,
                                                color: Colors.blue,
                                                size: 10,
                                              ),
                                              Text(
                                                'July 22',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return Jailopg3();
                                },
                              ));
                            },
                            child: BackdropFilter(
                              filter: ImageFilter.blur(),
                              child: Container(
                                height: 180,
                                width: 180,
                                padding: EdgeInsets.only(bottom: 24),
                                alignment: Alignment.bottomCenter,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            'https://images.pexels.com/photos/1586298/pexels-photo-1586298.jpeg?auto=compress&cs=tinysrgb&w=800')),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Container(
                                  width: 140,
                                  height: 52,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey.withOpacity(0.8)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jailoo',
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                color: Colors.blue,
                                                size: 10,
                                              ),
                                              Text(
                                                'Suu-Samyr',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 10),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.calendar_month_outlined,
                                                color: Colors.blue,
                                                size: 10,
                                              ),
                                              Text(
                                                'July 18',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'My Schedule',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue.shade50,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 14),
                          height: 72,
                          width: 72,
                          // color: Colors.amber,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.network(
                                  fit: BoxFit.fill,
                                  'https://images.pexels.com/photos/21787/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=800')),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 42,
                              width: 124,
                              padding: EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kel-suu',
                                    style: GoogleFonts.poppins(fontSize: 14),
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            size: 12,
                                          ),
                                          Text(
                                            'Ak-Sai',
                                            style: GoogleFonts.poppins(
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_month_outlined,
                                            size: 12,
                                          ),
                                          Text(
                                            'July 2',
                                            style: GoogleFonts.poppins(
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 42,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(24))),
                                child: Text(
                                  'Joined',
                                  style: GoogleFonts.poppins(fontSize: 12),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )),
          Positioned(
            height: 760,
            child: Container(
              height: 100,
              width: 340,
              // color: Colors.amber,
              child: Column(
                children: [
                  Container(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.menu,
                                  color: Colors.black,
                                  size: 18,
                                ))),
                        Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60)),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                  ),
                                  radius: 18,
                                ),
                              ),
                              Text(
                                'Atiq',
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    height: 120,
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hello Atiq',
                          style: GoogleFonts.poppins(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Welcome to Kyrgystan',
                          style: GoogleFonts.poppins(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.search_rounded),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: Colors.blue,
        icons: iconList,
        activeIndex: 0,
        onTap: (p3) {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return Profile();
            },
          ));
        },
        gapLocation: GapLocation.center,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
      ),
    );
  }
}
