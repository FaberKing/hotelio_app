import 'package:course_hotelio/controller/c_home.dart';
import 'package:course_hotelio/page/home_page.dart';
import 'package:course_hotelio/widget/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/hotel.dart';

class CheckoutSuccessPage extends StatelessWidget {
  CheckoutSuccessPage({super.key});
  final cHome = Get.put(CHome());

  @override
  Widget build(BuildContext context) {
    // final cHome = Get.put(CHome());
    Hotel hotel = ModalRoute.of(context)!.settings.arguments as Hotel;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 6, color: Colors.white),
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                hotel.cover,
                width: 190,
                height: 190,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 46),
          Text(
            'Payment Success',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 12),
          Text(
            'Enjoy your whole new experience\nin this beautiful world',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.black,
                ),
          ),
          const SizedBox(height: 46),
          ButtonCustom(
            label: 'View My Booking',
            onTap: () {
              cHome.indexPage = 1;
              Get.offAll(() => HomePage());
            },
          ),
        ],
      ),
    );
  }
}
