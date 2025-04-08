import 'package:get/get.dart';

class Controller extends GetxController {
  var air = 0.obs;
  var makanan = 0.obs;

  addAir() {
    return air.value++;
  }

  removeAir() {
    if (air.value > 0) {
      return air.value--;
    }
  }

  addMakanan() {
    return makanan.value++;
  }

  removeMakanan() {
    if (makanan.value > 0) {
      return makanan.value--;
    }
  }

  sumTotal() {
    return makanan.value + air.value;
  }
}
