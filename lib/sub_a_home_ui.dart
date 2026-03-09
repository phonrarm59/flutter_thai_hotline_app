// ignore_for_file: unused_import, prefer_interpolation_to_compose_strings, unused_element

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter_cake_shop_app/models/case_shop.dart';
import 'package:url_launcher/url_launcher.dart';

class SubAHomeUi extends StatefulWidget {
  const SubAHomeUi({super.key});

  @override
  State<SubAHomeUi> createState() => _SubAHomeUiUiState();
}

class _SubAHomeUiUiState extends State<SubAHomeUi> {
  List<String> imgCakeShop = [
    'assets/images/travel.png',
    'assets/images/jj.png',
    'assets/images/may.png',
  ];

  List<CakeShop> cakeShops = [
    CakeShop(
      name: 'กรมทางหลวงชนบท',
      phone: '1146',
      image1: 'aa.png',
    ),
    CakeShop(
      name: 'ตำรวจท่องเที่ยว',
      phone: '1155',
      image1: 'bb.png',
    ),
    CakeShop(
      name: 'ตำรวจทางหลวง',
      phone: '1193',
      image1: 'cc.png',
    ),
    CakeShop(
      name: 'ข้อมูลจราจร',
      phone: '1197',
      image1: 'gg.png',
    ),
    CakeShop(
      name: 'ขสมก.',
      phone: '1348',
      image1: 'dd.png',
    ),
    CakeShop(
      name: 'บขส.',
      phone: '1490',
      image1: 'ee.png',
    ),
    CakeShop(
      name: 'เส้นทางบนทางด่วน',
      phone: '1543',
      image1: 'exat.png',
    ),
    CakeShop(
      name: 'กรมทางหลวง',
      phone: '1586',
      image1: 'hhh.png',
    ),
    CakeShop(
      name: 'การรถไฟแห่งประเทศไทย',
      phone: '1690',
      image1: 'ii.png',
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
          'สายด่วน\nการเดินทาง',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        centerTitle:
            true,
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
