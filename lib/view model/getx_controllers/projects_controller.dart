import 'package:get/get.dart';
import '../../../model/project_model.dart'; // ✅ Import your projectList

class ProjectController extends GetxController {
  // Dynamically match the number of projects
  RxList<bool> hovers = List<bool>.filled(projectList.length, false).obs;

  void onHover(int index, bool value) {
    // ✅ Safe guard: only update valid indexes
    if (index >= 0 && index < hovers.length) {
      hovers[index] = value;
    }
  }

  // Optional: call this if you ever update your projectList dynamically
  void refreshHoverList() {
    hovers.value = List<bool>.filled(projectList.length, false);
  }
}
