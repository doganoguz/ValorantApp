import 'dart:async';
import 'dart:convert';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:valorant/main.dart';
import 'package:valorant/ui/constants/color.dart';
import 'package:valorant/ui/pages/agents/agents.dart';
import 'package:valorant/ui/pages/home/dashboard.dart';

import 'package:z_dialog/z_dialog.dart';

class AgentsDetails extends StatefulWidget {
  AgentsDetails({Key? key}) : super(key: key);

  @override
  State<AgentsDetails> createState() => _AgentsDetailsState();
}

class _AgentsDetailsState extends State<AgentsDetails> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          titleSpacing: 10.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "Agents Details",
            style: GoogleFonts.bowlbyOneSc(
                color: NowUIColors.beyaz,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          leading: IconButton(
            icon: Image.asset('assets/images/back.png'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        backgroundColor: NowUIColors.homecolorr,
        body: Stack(
          children: <Widget>[
            new Container(
              height: 389,
              width: 390,
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage(
                        "assets/images/agentdetailsbg.png",
                      ),
                      fit: BoxFit.fill)),
            ),
            SingleChildScrollView(
              child: new Container(
                padding: new EdgeInsets.all(20.0),
                color: Colors.transparent,
                child: new Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/images/agents/jett.png",
                          height: 350,
                          width: 350,
                        ),
                      ],
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Origin:",
                          style: GoogleFonts.bowlbyOneSc(
                            color: NowUIColors.redhome,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: 170,
                        ),
                        Text(
                          "???????? United States",
                          style: GoogleFonts.bowlbyOneSc(
                            color: NowUIColors.beyaz,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Divider(
                      color: NowUIColors.beyaz,
                      thickness: 1.0,
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Type:",
                          style: GoogleFonts.bowlbyOneSc(
                            color: NowUIColors.redhome,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Text(
                          "???? Controller",
                          style: GoogleFonts.bowlbyOneSc(
                            color: NowUIColors.beyaz,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Divider(
                      color: NowUIColors.beyaz,
                      thickness: 1.0,
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Points For Ultimate:",
                          style: GoogleFonts.bowlbyOneSc(
                            color: NowUIColors.redhome,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: 180,
                        ),
                        Text(
                          "6",
                          style: GoogleFonts.bowlbyOneSc(
                            color: NowUIColors.beyaz,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Divider(
                      color: NowUIColors.beyaz,
                      thickness: 1.0,
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Description:",
                          style: GoogleFonts.bowlbyOneSc(
                            color: NowUIColors.redhome,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      child: Text(
                        "Brimstone???s orbital arsenal ensures his squad always has the advantage. His ability to deliver utility precisely and safely make him the unmatched boots-on-the-ground commander.",
                        style: GoogleFonts.bowlbyOneSc(
                          color: NowUIColors.beyaz,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Divider(
                      color: NowUIColors.beyaz,
                      thickness: 1.0,
                    ),
                    SizedBox(height: 15),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Abilities:",
                          style: GoogleFonts.bowlbyOneSc(
                            color: NowUIColors.redhome,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: NowUIColors.redhome,
                        ),
                      ),
                      child: new InkWell(
                        onTap: () {},
                        child: Container(
                          color: NowUIColors.homecolorr,
                          height: 174,
                          width: 308,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 36.0, left: 12, top: 10),
                            child: Wrap(
                              spacing: 30,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Incendiary:",
                                          style: GoogleFonts.bowlbyOneSc(
                                            color: NowUIColors.redhome,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Image.asset(
                                          "assets/images/incen.png",
                                          height: 35,
                                          width: 35,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Type:",
                                          style: GoogleFonts.bowlbyOneSc(
                                            color: NowUIColors.redhome,
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Damage",
                                          style: GoogleFonts.bowlbyOneSc(
                                            color: NowUIColors.beyaz,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Text(
                                          "Cost:",
                                          style: GoogleFonts.bowlbyOneSc(
                                            color: NowUIColors.redhome,
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "300",
                                          style: GoogleFonts.bowlbyOneSc(
                                            color: NowUIColors.beyaz,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Description:",
                                          style: GoogleFonts.bowlbyOneSc(
                                            color: NowUIColors.redhome,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      child: Text(
                                        "Brimstone???s orbital arsenal ensures his squad always has the advantage. His ability to deliver utility precisely and safely make him the unmatched boots-on-the-ground commander.",
                                        style: GoogleFonts.bowlbyOneSc(
                                          color: NowUIColors.beyaz,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
          ],
        ),
      ),
    );
  }
}

class CustomeShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width * 2 / 3, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomeShape oldClipper) => false;
}
