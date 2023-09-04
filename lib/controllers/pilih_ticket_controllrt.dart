import 'package:get/get.dart';

class PilihTicketController extends GetxController {
  var indexGerbong = 0.obs;
  var indexKursi = 0.obs;

  void gantiGerbong(int index) {
    indexGerbong.value = index;
    gerbong.refresh();
  }

  void reset() {
    gerbong.forEach((element) {
      element.forEach((elt) {
        if (elt["status"] != "filled") {
          elt.update("status", (value) => "avalable");
        }
      });
    });
  }

  void selectKursi(int idKursi) {
    reset();
    if (gerbong[indexGerbong.value][idKursi]['status'] == "avalable") {
      gerbong[indexGerbong.value][idKursi]
          .update("status", (value) => "selected");
    }
    gerbong.refresh();
  }

  var gerbong = List.generate(
    6,
    (indexG) => List<Map<String, dynamic>>.generate(
      75,
      (indexK) {
        if (indexG == 0) {
          if (indexK >= 20 && indexK <= 24) {
            return {
              "id": "ID-${indexG + 1}-${indexK + 1}",
              "status": "filled",
            };
          } else {
            return {
              "id": "ID-${indexG + 1}-${indexK + 1}",
              "status": "avalable",
            };
          }
        } else if (indexG == 1) {
          if ((indexK >= 10 && indexK <= 16) || indexK >= 32 && indexK <= 53) {
            return {
              "id": "ID-${indexG + 1}-${indexK + 1}",
              "status": "filled",
            };
          } else {
            return {
              "id": "ID-${indexG + 1}-${indexK + 1}",
              "status": "avalable",
            };
          }
        } else {
          return {
            "id": "ID-${indexG + 1}-${indexK + 1}",
            "status": "avalable",
          };
        }
      },
    ),
  ).obs;
}
