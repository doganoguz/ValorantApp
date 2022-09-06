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
import 'package:valorant/ui/constants/color.dart';
import 'package:valorant/ui/pages/agents/agents.dart';

import 'package:z_dialog/z_dialog.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          titleSpacing: 10.0,
          backgroundColor: NowUIColors.homecolorr,
          centerTitle: true,
          title: Text(
            "VALORANT GUIDE",
            style: GoogleFonts.bowlbyOneSc(
                color: NowUIColors.beyaz,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ),
        backgroundColor: NowUIColors.homecolorr,
        body: SingleChildScrollView(
          padding: EdgeInsets.all(21),
          child: Form(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 109,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: NowUIColors.redhome,
                      ),
                    ),
                    child: new InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageAnimationTransition(
                            page: Agents(),
                            pageAnimationType: BottomToTopTransition()));
                      },
                      child: Container(
                        color: NowUIColors.homecolorr,
                        height: 138,
                        width: 335,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(bottom: 32.0, left: 25),
                          child: Wrap(
                            spacing: 30,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "AGENTS",
                                    style: GoogleFonts.bowlbyOneSc(
                                        color: NowUIColors.beyaz,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 29,
                                  ),
                                  Image.asset(
                                    "assets/images/agents.png",
                                    height: 138,
                                    width: 152,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 26,
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
                        height: 138,
                        width: 335,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(bottom: 32.0, left: 17),
                          child: Wrap(
                            spacing: 30,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "WEAPONS",
                                    style: GoogleFonts.bowlbyOneSc(
                                        color: NowUIColors.beyaz,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset(
                                    "assets/images/weapons.png",
                                    height: 130,
                                    width: 155,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 26,
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
                        height: 138,
                        width: 335,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(bottom: 32.0, left: 32),
                          child: Wrap(
                            spacing: 30,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "RANKS",
                                    style: GoogleFonts.bowlbyOneSc(
                                        color: NowUIColors.beyaz,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Image.asset(
                                    "assets/images/ranks.png",
                                    height: 138,
                                    width: 152,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 26,
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
                        height: 138,
                        width: 335,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(bottom: 28.0, left: 30),
                          child: Wrap(
                            spacing: 30,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "SPRAYS",
                                    style: GoogleFonts.bowlbyOneSc(
                                        color: NowUIColors.beyaz,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 23,
                                  ),
                                  Image.asset(
                                    "assets/images/sprays.png",
                                    height: 141,
                                    width: 158,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 26,
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
                        height: 138,
                        width: 335,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(bottom: 32.0, left: 25),
                          child: Wrap(
                            spacing: 30,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "PLAYER\n CARDS",
                                    style: GoogleFonts.bowlbyOneSc(
                                        color: NowUIColors.beyaz,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 38,
                                  ),
                                  Image.asset(
                                    "assets/images/playercards.png",
                                    height: 138,
                                    width: 152,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 26,
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
                        height: 138,
                        width: 335,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 49),
                          child: Wrap(
                            spacing: 30,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "MAPS",
                                    style: GoogleFonts.bowlbyOneSc(
                                        color: NowUIColors.beyaz,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 39,
                                  ),
                                  Image.asset(
                                    "assets/images/maps.png",
                                    height: 138,
                                    width: 153,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 26,
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
                        height: 138,
                        width: 335,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(bottom: 32.0, left: 25),
                          child: Wrap(
                            spacing: 30,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "    GUN\nBUDDIES",
                                    style: GoogleFonts.bowlbyOneSc(
                                        color: NowUIColors.beyaz,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 19,
                                  ),
                                  Image.asset(
                                    "assets/images/gunbuddies.png",
                                    height: 138,
                                    width: 152,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 26,
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
                        height: 138,
                        width: 335,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/wallpaper.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 48.0, left: 70),
                          child: Wrap(
                            spacing: 30,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "WALLPAPER",
                                    style: GoogleFonts.bowlbyOneSc(
                                        color: NowUIColors.beyaz,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ));
  }
}
