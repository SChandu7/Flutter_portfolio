import 'package:get/get.dart';
import '../../../model/certificate_model.dart'; // 👈 import your list file

class CertificationController extends GetxController {
  // Dynamically match the certification list length
  RxList<bool> hovers = List<bool>.filled(certificateList.length, false).obs;

  void onHover(int index, bool value) {
    // ✅ Prevent crash if index goes out of range
    if (index >= 0 && index < hovers.length) {
      hovers[index] = value;
    }
  }

  // Optional: if you later add/remove certifications dynamically
  void refreshHoverList() {
    hovers.value = List<bool>.filled(certificateList.length, false);
  }
}
