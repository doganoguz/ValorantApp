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
import 'package:valorant/ui/pages/agents_detail/agents_detail.dart';
import 'package:valorant/ui/pages/home/dashboard.dart';

import 'package:z_dialog/z_dialog.dart';

class Agents extends StatefulWidget {
  Agents({Key? key}) : super(key: key);

  @override
  State<Agents> createState() => _AgentsState();
}

class _AgentsState extends State<Agents> {
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
              backgroundColor: NowUIColors.homecolorr,
              centerTitle: true,
              title: Text(
                "Agents",
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
                      Row(
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: NowUIColors.redhome,
                              ),
                            ),
                            child: new InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                    PageAnimationTransition(
                                        page: AgentsDetails(),
                                        pageAnimationType:
                                            BottomToTopTransition()));
                              },
                              child: Container(
                                color: NowUIColors.homecolorr,
                                height: 270,
                                width: 153,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 36.0, left: 12, top: 24),
                                  child: Wrap(
                                    spacing: 30,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            "Jett",
                                            style: GoogleFonts.bowlbyOneSc(
                                                color: NowUIColors.beyaz,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(
                                            width: 29,
                                          ),
                                          Image.asset(
                                            "assets/images/agents/jett.png",
                                            height: 200,
                                            width: 131,
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
                            width: 25,
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
                                height: 270,
                                width: 153,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 36.0, left: 12, top: 24),
                                  child: Wrap(
                                    spacing: 30,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            "Raze",
                                            style: GoogleFonts.bowlbyOneSc(
                                                color: NowUIColors.beyaz,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(
                                            width: 29,
                                          ),
                                          Image.asset(
                                            "assets/images/agents/raze.png",
                                            height: 200,
                                            width: 131,
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
                      SizedBox(
                        height: 27,
                      ),
                      Row(
                        children: <Widget>[
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
                                height: 270,
                                width: 153,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 36.0, left: 12, top: 24),
                                  child: Wrap(
                                    spacing: 30,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            "Breach",
                                            style: GoogleFonts.bowlbyOneSc(
                                                color: NowUIColors.beyaz,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(
                                            width: 29,
                                          ),
                                          Image.asset(
                                            "assets/images/agents/breach.png",
                                            height: 200,
                                            width: 131,
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
                            width: 25,
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
                                height: 270,
                                width: 153,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 36.0, left: 12, top: 24),
                                  child: Wrap(
                                    spacing: 30,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            "Omen",
                                            style: GoogleFonts.bowlbyOneSc(
                                                color: NowUIColors.beyaz,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(
                                            width: 29,
                                          ),
                                          Image.asset(
                                            "assets/images/agents/omen.png",
                                            height: 200,
                                            width: 131,
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
                      SizedBox(
                        height: 27,
                      ),
                      Row(
                        children: <Widget>[
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
                                height: 270,
                                width: 153,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 36.0, left: 12, top: 24),
                                  child: Wrap(
                                    spacing: 30,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            "Brimstone",
                                            style: GoogleFonts.bowlbyOneSc(
                                                color: NowUIColors.beyaz,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(
                                            width: 29,
                                          ),
                                          Image.asset(
                                            "assets/images/agents/brimstone.png",
                                            height: 200,
                                            width: 131,
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
                            width: 25,
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
                                height: 270,
                                width: 153,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 36.0, left: 12, top: 24),
                                  child: Wrap(
                                    spacing: 30,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            "Phoneix",
                                            style: GoogleFonts.bowlbyOneSc(
                                                color: NowUIColors.beyaz,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(
                                            width: 29,
                                          ),
                                          Image.asset(
                                            "assets/images/agents/phoneix.png",
                                            height: 200,
                                            width: 131,
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
                    ]),
              ),
            )));
  }
}
