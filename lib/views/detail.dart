import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/viewmodel/fetch_gunung.dart';
import 'package:readmore/readmore.dart';
import '../model/gunung.dart';

class Jailopg extends StatelessWidget {
  final Gunung gunung;
  const Jailopg({super.key, required this.gunung});

  @override
  Widget build(BuildContext context) {
    Repository repo = Repository();
    return Scaffold(
        body: Container(
            child: FutureBuilder(
                future: repo.fetchData(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return Stack(alignment: Alignment.bottomCenter, children: [
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        alignment: Alignment.topCenter,
                        child: Image.network(gunung.img),
                      ),
                      Container(
                          width: double.infinity,
                          height: 500,
                          padding:
                              EdgeInsets.only(top: 24, right: 26, left: 26),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(60),
                                  topRight: Radius.circular(60))),
                          child: Column(children: [
                            Container(
                                margin: EdgeInsets.only(bottom: 12),
                                width: double.infinity,
                                height: 50,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        gunung.nama,
                                        style: GoogleFonts.poppins(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Container(
                                          width: 50,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 230, 238, 250),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '2.5k',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Icon(
                                                  Icons.favorite,
                                                  size: 18,
                                                  color: Color.fromARGB(
                                                      255, 255, 0, 0),
                                                )
                                              ]))
                                    ])),
                            Container(
                                height: 40,
                                width: double.infinity,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(right: 24),
                                          child: Row(children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.blue,
                                              size: 12,
                                            ),
                                            Text(gunung.kota,
                                                style: GoogleFonts.poppins(
                                                    fontSize: 12)),
                                          ])),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Row(children: [
                                        Icon(
                                          CupertinoIcons.compass,
                                          color: Colors.blue,
                                          size: 12,
                                        ),
                                        Text(
                                          gunung.geolokasi,
                                          style:
                                              GoogleFonts.poppins(fontSize: 12),
                                        )
                                      ])
                                    ])),
                            Container(
                                margin: EdgeInsets.only(top: 16),
                                padding: EdgeInsets.all(12),
                                height: 80,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 230, 238, 250),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(children: [
                                  Container(
                                      width: 50,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Rating',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14),
                                            ),
                                            Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Container(
                                                      height: 22,
                                                      child: Icon(
                                                        Icons.star_rounded,
                                                      )),
                                                  Container(
                                                      height: 18,
                                                      child: Text(
                                                        '4.5',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 14),
                                                      ))
                                                ])
                                          ])),
                                  Container(
                                    height: double.infinity,
                                    width: 1,
                                    margin:
                                        EdgeInsets.only(left: 12, right: 12),
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 179, 179, 179),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  Container(
                                      width: 140,
                                      height: double.infinity,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              'Tinggi Gunung',
                                              style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              gunung.tinggiMeter,
                                              style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14),
                                            )
                                          ])),
                                  Container(
                                    margin: EdgeInsets.only(left: 46),
                                    height: 55,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(16),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                              'https://media.wired.com/photos/59269cd37034dc5f91bec0f1/master/w_2560%2Cc_limit/GoogleMapTA.jpg',
                                            ))),
                                  )
                                ])),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.symmetric(vertical: 16),
                              child: Text(
                                'About Destination',
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                                height: 132,
                                child: SingleChildScrollView(
                                    physics: AlwaysScrollableScrollPhysics(),
                                    child: ReadMoreText(
                                      gunung.desc,
                                      trimLines: 3,
                                      colorClickableText: const Color.fromARGB(
                                          255, 255, 112, 40),
                                      trimMode: TrimMode.Line,
                                      trimCollapsedText: 'Read more',
                                      trimExpandedText: 'Show less',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: const Color.fromARGB(
                                              255, 154, 154, 154)),
                                    )))
                          ])),
                      Positioned(
                          bottom: 700,
                          left: 20,
                          child: Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(60)),
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(left: 9),
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  )))),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 26),
                          width: double.infinity,
                          height: 80,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    child: Column(children: [
                                  Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        'Total Price',
                                        style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      )),
                                  Container(
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                        Icon(
                                          Icons.attach_money_rounded,
                                          size: 12,
                                          color: Color.fromARGB(
                                              255, 248, 176, 140),
                                        ),
                                        Text(
                                          '20 /person',
                                          style:
                                              GoogleFonts.poppins(fontSize: 14),
                                        )
                                      ]))
                                ])),
                                Container(
                                    width: 90,
                                    height: 40,
                                    margin: EdgeInsets.only(right: 12),
                                    padding: EdgeInsets.only(left: 6),
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 47, 128, 237),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Book Now',
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: Colors.white,
                                          )
                                        ]))
                              ]))
                    ]);
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                })));
  }
}
