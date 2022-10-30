import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shopping_cart/my_controller.dart';

class TotalPage extends StatelessWidget {
  TotalPage({super.key});
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Your Total is : ",
                style: TextStyle(fontSize: 30, color: Colors.blueAccent),
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(() => Text(
                    "${c.total}",
                    style: const TextStyle(fontSize: 30),
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 120,
                height: 50,
                //decoration: BoxDecoration(color: Colors.black),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple.shade300,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25)))),
                    onPressed: () => {Get.back()},
                    child: const Text("Go back")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
