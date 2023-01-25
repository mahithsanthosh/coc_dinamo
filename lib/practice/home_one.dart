import 'package:coc_dynamo/practice/controller_one.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeOne extends StatelessWidget {
  HomeOne({super.key});
  final BrandController brandController = Get.put(BrandController());

  @override
  Widget build(BuildContext context) {
    print(brandController.brandList.length);
    return Scaffold(
      appBar: AppBar(title: Text("data")),
      body: ListView.builder(
        itemCount: brandController.brandList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 80),
            decoration: const BoxDecoration(color: Colors.teal),
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
            child: Column(
              children: [
                Text(brandController.brandList[index].id.toString()),
                Text(brandController.brandList[index].brand.toString()),
                Text(brandController.brandList[index].name.toString()),
                // Image.network(brandController.brandList[index].imageLink!)
              ],
            ),
          );
        },
      ),
    );
  }
}
