import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;
  int get total => books.value + pens.value;
  incrementBooks() {
    books.value++;
  }

  decrementBooks() {
    if (books.value == 0) {
      Get.snackbar("Error", "Can't be less than zero",
          icon: const Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration: const Duration(seconds: 3));
    } else {
      books.value--;
    }
  }

  incrementPens() {
    pens.value++;
  }

  decrementPens() {
    if (pens.value == 0) {
      Get.snackbar("Error", "Can't be less than zero",
          icon: const Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration: const Duration(seconds: 3));
    } else {
      pens.value--;
    }
  }
}
