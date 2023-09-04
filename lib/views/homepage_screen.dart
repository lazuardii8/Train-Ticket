import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';
import 'package:train_ticket/views/pilih_ticket_screen.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: Get.width,
              height: Get.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/sfsfsfdd.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.center),
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/svgs/ic-menu.svg"),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Where are you\ngoing right now?",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff333E63),
                            ),
                          ),
                          Image.asset("assets/images/Mask Group.png"),
                        ],
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      CardFIndTicket()
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardFIndTicket extends StatelessWidget {
  const CardFIndTicket({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      clipBehavior: Clip.hardEdge,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 20,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 80,
              color: Color(0xffB6B6B6).withOpacity(0.15),
              offset: Offset(10, 20),
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Departure",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 11,
                        color: Color(0xff656CEE),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "CLB",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 16,
                        color: Color(0xff5B5B7E),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Cilebut Station",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 11,
                        color: Color(0xff9695A8),
                      ),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset("assets/svgs/mdi_swap-horizontal.svg"),
              Container(
                width: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Departure",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 11,
                        color: Color(0xff656CEE),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "MGR",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 16,
                        color: Color(0xff5B5B7E),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Manggarai Station",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 11,
                        color: Color(0xff9695A8),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: Get.width,
            height: 1,
            color: Color(0xffF2F2F2),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Date of departure",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 11,
                      color: Color(0xff656CEE),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Mon, 10 Sep 2020",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      color: Color(0xff5B5B7E),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Switch(
                    value: false,
                    onChanged: (value) {},
                  ),
                  Text(
                    "Round-trip",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 11,
                      color: Color(0xff5B5B7E),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total passenger",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 11,
                      color: Color(0xff656CEE),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/svgs/feather_minus-circle.svg"),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "1",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          color: Color(0xff5B5B7E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset("assets/svgs/feather_plus-circle.svg"),
                    ],
                  )
                ],
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    colors: [Color(0xffFFBA82), Color(0xffFF8B2D)],
                    stops: [0, 1],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () => Get.off(PilihTicketScreen()),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                  ),
                  child: Text(
                    "FIND TICKET",
                    style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
