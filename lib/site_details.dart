import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hikkingfinder/event_page.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SiteDetail extends StatefulWidget {
  const SiteDetail({super.key});

  @override
  State<SiteDetail> createState() => _SiteDetailState();
}

class _SiteDetailState extends State<SiteDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2a2a2a),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [
                              0.1,
                              0.4,
                              0.6,
                              0.9,
                            ],
                            colors: [
                              Color(0xff2A2A2A00),
                              Color(0xff2A2A2AE6),
                              Color(0xff2A2A2A),
                              Color(0xff2A2A2A),
                            ],
                          )),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: CarouselSlider(
                          options: CarouselOptions(
                            aspectRatio: 2.0,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                            enlargeFactor: 0.4,
                          ),
                          items: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/m.png",
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ].toList())),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 30, left: 20),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Color(0xffffff00),
                    size: 18,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 200,
                    height: 20,
                    child: Text("Laklouk, Mount lebanon",
                        style: GoogleFonts.poppins(
                            color: Color(0xffA0A0A0),
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'Hikking Laklout together',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Color(0xffffff00),
                    size: 18,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("Saturday,12 June,6:00 am",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Color(0xffA0A0A0),
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              child: Row(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/lc.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            "Distance",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Color(0xffA0A0A0),
                            ),
                          ),
                          Text(
                            "32 KM",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffff00),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/lp.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            "Elevation",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Color(0xffA0A0A0),
                            ),
                          ),
                          Text(
                            "2456 M",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffff00),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/lg.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            "Time",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Color(0xffA0A0A0),
                            ),
                          ),
                          Text(
                            "8 h",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffff00),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 335,
              height: 300,
              margin: EdgeInsets.only(left: 13, right: 13),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white.withOpacity(.8),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 6, top: 6),
              child: Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(330, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        backgroundColor: Color(0xffffff00)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => EventPage()));
                    },
                    child: Text(
                      "Go to Event Page",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ),
            ),
            Container(
              height: 65,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffaca7a7),
              child: Center(
                  child: Text(
                "ADS HERE",
                style: GoogleFonts.poppins(
                    color: Colors.white, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              )),
            )
          ],
        ),
      ),
    );
  }
}
