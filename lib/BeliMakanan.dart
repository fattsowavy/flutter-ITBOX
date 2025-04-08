import 'package:basic_flutter/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BeliMakanan extends StatelessWidget {
  BeliMakanan({super.key});

  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Beli Makanan")),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(Icons.coffee),
                ),
                GestureDetector(
                  onTap: () {
                    c.removeAir();
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.pink[100],
                    ),
                    child: Icon(Icons.remove),
                  ),
                ),
                SizedBox(width: 10),
                Obx(() => Text("${c.air.toString()}")),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    c.addAir();
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.pink[100],
                    ),
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(Icons.dining_outlined),
                ),
                GestureDetector(
                  onTap: () {
                    c.removeMakanan();
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.pink[100],
                    ),
                    child: Icon(Icons.remove),
                  ),
                ),
                SizedBox(width: 10),
                Obx(() => Text("${c.makanan.toString()}")),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    c.addMakanan();
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.pink[100],
                    ),
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            Obx(() => Text("Total: ${c.sumTotal().toString()}")),

            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  'Pesanan',
                  'Total pesanan: ${c.sumTotal()}',
                  snackPosition: SnackPosition.TOP,
                  duration: Duration(seconds: 2),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text("Checkout"),
            ),
          ],
        ),
      ),
    );
  }
}
