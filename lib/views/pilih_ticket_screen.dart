// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:train_ticket/controllers/pilih_ticket_controllrt.dart';

class PilihTicketScreen extends StatelessWidget {
  PilihTicketScreen({super.key});
  PilihTicketController pilihTicketController =
      Get.put(PilihTicketController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: Get.width,
              height: Get.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Group 94.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.center),
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 32),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Select Your\nSeat",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff333E63),
                        ),
                      ),
                      RichText(
                        textAlign: TextAlign.right,
                        text: TextSpan(
                          text: "Commuter Line (A)\n",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff5B5B7E),
                          ),
                          children: [
                            TextSpan(
                              text: "Wagon 1 -3A",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff656CEE),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InfoSeat(
                        title: "Avaiable",
                        boxColor: Colors.white,
                        borderColor: Color(0xffF2F2F2),
                      ),
                      InfoSeat(
                        title: "Filled",
                        boxColor: Color(0xffFF8B2D),
                        borderColor: Color(0xffFF8B2D),
                      ),
                      InfoSeat(
                        title: "Selected",
                        boxColor: Color(0xff656CEE),
                        borderColor: Color(0xff969BFF),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: BlurryContainer(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    blur: 120,
                    elevation: 0,
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(
                        16,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Wagon",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff5B5B7E),
                              ),
                            ),
                            Container(
                              width: 40,
                              child: Center(
                                child: Text(
                                  "A",
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff5B5B7E),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 40,
                              child: Center(
                                child: Text(
                                  "B",
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff5B5B7E),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 40,
                              child: Center(
                                child: Text(
                                  "C",
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff5B5B7E),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 40,
                              child: Center(
                                child: Text(
                                  "D",
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff5B5B7E),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 40,
                              child: Center(
                                child: Text(
                                  "E",
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff5B5B7E),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Obx(
                                  () => Column(
                                    children: List.generate(
                                      pilihTicketController.gerbong.length,
                                      (index) => WagonBox(
                                        number: index,
                                        selected: pilihTicketController
                                            .indexGerbong.value,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Obx(
                                  () => Container(
                                    child: GridView.builder(
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 5,
                                        mainAxisSpacing: 10,
                                        crossAxisSpacing: 10,
                                      ),
                                      itemCount: pilihTicketController
                                          .gerbong[pilihTicketController
                                              .indexGerbong.value]
                                          .length,
                                      itemBuilder: (context, index) {
                                        return SeatChoose(
                                          status: pilihTicketController.gerbong[
                                              pilihTicketController.indexGerbong
                                                  .value][index]['status'],
                                          idKursi: index,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                BlurryContainer(
                  height: 90,
                  padding: EdgeInsets.all(20),
                  color: Colors.white.withOpacity(0.5),
                  blur: 120,
                  elevation: 0,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Center(
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [Color(0xff656CEE), Color(0xff969BFF)],
                          stops: [0, 1],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                      ),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              minimumSize: Size.fromHeight(100),
                              backgroundColor: Colors.transparent),
                          child: Text(
                            "SELECT YOUR SEAT",
                            style: GoogleFonts.raleway(
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SeatChoose extends StatelessWidget {
  final String status;
  final int idKursi;
  SeatChoose({
    Key? key,
    required this.status,
    required this.idKursi,
  }) : super(key: key);
  final PilihTicketController controller = Get.find<PilihTicketController>();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.selectKursi(idKursi);
      },
      child: Container(
        width: 40,
        height: 40,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: status == "filled"
              ? Color(0xffFF8B2D)
              : status == "avalable"
                  ? Colors.white
                  : Color(0xff656CEE),
          border: Border.all(
            width: 2,
            color: Color(0xffEBEBEB),
          ),
        ),
      ),
    );
  }
}

class WagonBox extends StatelessWidget {
  final int number;
  final int selected;
  WagonBox({
    Key? key,
    required this.number,
    required this.selected,
  }) : super(key: key);
  final PilihTicketController controller = Get.find<PilihTicketController>();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.gantiGerbong(number),
      child: Container(
        width: 40,
        height: 100,
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: [
              selected == number ? Color(0xff656CEE) : Colors.white,
              selected == number ? Color(0xff969BFF) : Colors.white
            ],
            stops: [0, 1],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          border: Border.all(
            width: 2,
            color: Color(0xffEBEBEB),
          ),
        ),
        child: Center(
          child: Text(
            (number + 1).toString(),
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: selected == number ? Colors.white : Color(0xff88879C),
            ),
          ),
        ),
      ),
    );
  }
}

class InfoSeat extends StatelessWidget {
  final String title;
  final Color boxColor;
  final Color borderColor;
  const InfoSeat({
    Key? key,
    required this.title,
    required this.boxColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 20,
          height: 20,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 2,
              color: borderColor,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14,
            color: Color(0xff333E63),
          ),
        )
      ],
    );
  }
}
