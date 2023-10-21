import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hikkingfinder/site_details.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2a2a2a),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          "Event Calender",
          style: GoogleFonts.poppins(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
                color: Color(0xffa0a0a0),
                child: SfCalendar(
                  blackoutDatesTextStyle: TextStyle(color: Colors.white),
                  todayHighlightColor: Colors.amber,
                  view: CalendarView.month,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Event taking place on this day",
              style: GoogleFonts.poppins(
                  color: Color(0xff7f7f7f),
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          Container(
            height: 220,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => SiteDetail()));
                    },
                    child: Card(
                      color: Colors.transparent,
                      child: Container(
                          height: 200,
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) => SiteDetail()));
                                },
                                child: Card(
                                  child: Image.asset(
                                    "assets/m.png",
                                    width: 150,
                                    height: 200,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 80,
                                child: Container(
                                  margin: EdgeInsets.only(top: 10),
                                  decoration: BoxDecoration(
                                      color: Color(0xffffff00),
                                      borderRadius: BorderRadius.circular(40)),
                                  width: 60,
                                  height: 30,
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "35",
                                          style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 9,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          "KM",
                                          style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 9,
                                              fontWeight: FontWeight.normal),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    child: DropShadow(
                                      color: Color(0xff000000B3),
                                      blurRadius: .6,
                                      child: Text(
                                        "Hikking\nLakout\ntogether",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, bottom: 25),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.location_pin,
                                        color: Color(0xffffff00),
                                        size: 12,
                                      ),
                                      Text(
                                        "Laklouk, Mnt Leb.",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 9,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                  );
                })),
          ),
        ],
      ),
    );
  }
}
