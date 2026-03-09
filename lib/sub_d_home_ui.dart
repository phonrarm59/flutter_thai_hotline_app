// ignore_for_file: unused_import, prefer_interpolation_to_compose_strings, unused_element

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter_cake_shop_app/models/case_shop.dart';
import 'package:url_launcher/url_launcher.dart';

class SubDHomeUi extends StatefulWidget {
  const SubDHomeUi({super.key});

  @override
  State<SubDHomeUi> createState() => _SubDHomeUiUiState();
}

class _SubDHomeUiUiState extends State<SubDHomeUi> {
  List<String> imgCakeShop = [
    'assets/images/ele.png',
    'assets/images/elex.png',
    'assets/images/elext.png',
  ];

  List<CakeShop> cakeShops = [
    CakeShop(
      name: 'ไฟฟ้านครหลวง',
      phone: '1130',
      image1: 'ffncl.png',
    ),
    CakeShop(
      name: 'ไฟฟ้าส่วนภูมิภาค',
      phone: '1129',
      image1: 'ffpp.png',
    ),
    CakeShop(
      name: 'ไฟฟ้าฝ่ายผลิต',
      phone: '1416',
      image1: 'ffff.png',
    ),
    CakeShop(
      name: 'การประปานครหลวง',
      phone: '1125',
      image1: 'ppnl.png',
    ),
    CakeShop(
      name: 'การประปาส่วนภูมิภาค',
      phone: '1662',
      image1: 'pppp.png',
    ),
    CakeShop(
      name: 'TRUE',
      phone: '1242',
      image1: 'true.png',
    ),
    CakeShop(
      name: 'DTAC',
      phone: '1678',
      image1: 'dtec.jpg',
    ),
    CakeShop(
      name: 'AIS',
      phone: '1175',
      image1: 'ais.jpg',
    ),
    CakeShop(
      name: 'TOT',
      phone: '1100',
      image1: 'tot.jpg',
    ),
  ];

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          'สายด่วน\nสาธารณูปโภค',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: imgCakeShop.length,
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
              ),
              itemBuilder: (context, index, realIndex) {
                return Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(imgCakeShop[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
            Expanded(
              child: ListView.separated(
                  itemCount: cakeShops.length,
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.grey,
                      ),
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        _makePhoneCall(cakeShops[index].phone!);
                      },
                      leading: ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(10.0),
                        child: Image.asset(
                          'assets/images/' + cakeShops[index].image1!,
                        ),
                      ),
                      title: Text(
                        cakeShops[index].name!,
                      ),
                      subtitle: Text(
                        cakeShops[index].phone!,
                      ),
                      trailing: Icon(
                        Icons.phone_callback_outlined,
                        color: Colors.black,
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
