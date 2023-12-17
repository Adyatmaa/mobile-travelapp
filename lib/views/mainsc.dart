import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:mobile/viewmodel/fetch_gunung.dart';
import 'package:mobile/views/detail.dart';
import 'package:mobile/views/profile.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Repository repo = Repository();
    final int _botnavInd = 0;
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
            height: 520,
            width: double.infinity,
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
              Container(
                  height: 400,
                  child: FutureBuilder<List<dynamic>>(
                      future: repo.fetchData(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (BuildContext context, int index) {
                                var gunung = snapshot.data![index];
                                return GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Jailopg(
                                          gunung: gunung,
                                        );
                                      }));
                                    },
                                    child: BackdropFilter(
                                        filter: ImageFilter.blur(),
                                        child: Container(
                                            height: 180,
                                            // width: 180,
                                            margin: EdgeInsets.only(bottom: 24),
                                            padding: EdgeInsets.only(
                                                bottom: 24,
                                                left: 24,
                                                right: 24),
                                            alignment: Alignment.bottomLeft,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: NetworkImage(
                                                        gunung.img)),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 72,
                                                padding: EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    color: Colors.grey
                                                        .withOpacity(0.8)),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        gunung.nama,
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                      Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Row(children: [
                                                              Icon(
                                                                Icons
                                                                    .location_on_outlined,
                                                                color:
                                                                    Colors.blue,
                                                                size: 10,
                                                              ),
                                                              Text(
                                                                gunung.kota,
                                                                style: GoogleFonts
                                                                    .poppins(
                                                                        fontSize:
                                                                            10),
                                                              )
                                                            ])
                                                          ])
                                                    ])))));
                              });
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      })),
              SizedBox(
                height: 32,
              )
            ])),
        Positioned(
            height: 700,
            child: Container(
                height: 100,
                width: 340,
                child: Column(children: [
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
                                child: Row(children: [
                                  Container(
                                      padding:
                                          EdgeInsets.only(left: 8, right: 8),
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(18),
                                          ),
                                        ),
                                        radius: 18,
                                      )),
                                  Text(
                                    'Atiq',
                                    style: GoogleFonts.poppins(fontSize: 12),
                                  ),
                                ]))
                          ])),
                  Container(
                      margin: EdgeInsets.only(top: 12),
                      height: 80,
                      width: 300,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Hello 🙌',
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Welcome to Indonesia',
                              style: GoogleFonts.poppins(
                                  fontSize: 25, fontWeight: FontWeight.w600),
                            )
                          ]))
                ])))
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
            case 1:
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return Profile();
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
