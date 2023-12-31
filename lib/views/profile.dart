import 'dart:ui';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/viewmodel/fetch_gunung.dart';
import 'package:mobile/views/mainsc.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Repository repo = Repository();
    final int _botnavInd = 1;
    List<IconData> iconList = [
      Icons.home_outlined,
      Icons.person_3_outlined,
    ];
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.transparent,
          alignment: Alignment.topCenter,
          child: Image.network(
              'https://images.pexels.com/photos/1581840/pexels-photo-1581840.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
        ),
        Container(
            width: double.infinity,
            height: 680,
            padding: EdgeInsets.only(left: 24, right: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60)),
            ),
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(top: 12),
                height: 4,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(8)),
              ),
              Container(
                  margin: EdgeInsets.only(top: 16),
                  height: 120,
                  width: double.infinity,
                  child: Row(children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                      radius: 50,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24, right: 28),
                      width: 1,
                      height: 70,
                      color: Colors.black,
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 70,
                              width: 100,
                              // color: Colors.green,
                              child: Stack(children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                                  backgroundColor: Colors.black,
                                  radius: 12,
                                ),
                                Positioned(
                                  left: 12,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                                    backgroundColor: Colors.blue,
                                    radius: 12,
                                  ),
                                ),
                                Positioned(
                                  left: 24,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                                    backgroundColor: Colors.blueGrey,
                                    radius: 12,
                                  ),
                                ),
                                Positioned(
                                  left: 36,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                                    backgroundColor: Colors.blue,
                                    radius: 12,
                                  ),
                                ),
                                Positioned(
                                    left: 12,
                                    top: 32,
                                    child: Text(
                                      'Followers',
                                      style: GoogleFonts.poppins(),
                                    )),
                                Positioned(
                                    left: 70,
                                    child: Text(
                                      '10k',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ))
                              ]))
                        ])
                  ])),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 24),
                margin: EdgeInsets.only(top: 12),
                child: Text(
                  '@atiq12',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                width: double.infinity,
                // color: Colors.amber,
                padding: EdgeInsets.only(right: 24),
                margin: EdgeInsets.only(top: 12),
                child: Text(
                  "Hello i'm Atiq and i really like mountain, climbing",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: double.infinity,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color.fromARGB(255, 92, 149, 227)),
                          child: Text(
                            'Edit Profile',
                            style: GoogleFonts.poppins(color: Colors.white),
                          ),
                        ),
                        Container(
                            alignment: Alignment.center,
                            height: double.infinity,
                            width: 160,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(50),
                                color: Color.fromARGB(255, 255, 255, 255)),
                            child: Text(
                              'Friends List',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ))
                      ])),
              Container(
                  height: 360,
                  // color: Colors.amber,
                  child: FutureBuilder<List<dynamic>>(
                      future: repo.fetchData(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                              itemCount: 2,
                              itemBuilder: (BuildContext context, int index) {
                                var gunung = snapshot.data![index];
                                return Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Container(
                                        alignment: Alignment.bottomCenter,
                                        width: double.infinity,
                                        height: 140,
                                        margin: EdgeInsets.only(top: 10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image:
                                                    NetworkImage(gunung.img))),
                                      ),
                                      BackdropFilter(
                                          filter: ImageFilter.blur(),
                                          child: Container(
                                              margin: EdgeInsets.only(top: 32),
                                              width: double.infinity,
                                              height: 28,
                                              decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(0.5),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  20),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  20))),
                                              child: Row(children: [
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        left: 32),
                                                    child: Row(children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 6,
                                                                bottom: 2),
                                                        child: Icon(
                                                          Icons
                                                              .location_on_outlined,
                                                          size: 14,
                                                          color: Colors
                                                              .grey.shade800,
                                                        ),
                                                      ),
                                                      Text(gunung.nama,
                                                          style: GoogleFonts
                                                              .poppins(
                                                            color: Colors
                                                                .grey.shade800,
                                                          ))
                                                    ]))
                                              ])))
                                    ]);
                              });
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }))
            ]))
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.search_rounded),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _botnavInd,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return MainScreen();
                },
              ));
              break;

            default:
          }
        },
        gapLocation: GapLocation.none,
        activeColor: Colors.blue,
      ),
    );
  }
}