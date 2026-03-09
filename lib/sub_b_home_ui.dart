// ignore_for_file: unused_import, prefer_interpolation_to_compose_strings, unused_element

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter_cake_shop_app/models/case_shop.dart';
import 'package:url_launcher/url_launcher.dart';

class SubBHomeUi extends StatefulWidget {
  const SubBHomeUi({super.key});

  @override
  State<SubBHomeUi> createState() => _SubBHomeUiUiState();
}

class _SubBHomeUiUiState extends State<SubBHomeUi> {
  List<String> imgCakeShop = [
    'assets/images/accc.png',
    'assets/images/hos.png',
    'assets/images/hos2.png',
  ];

  List<CakeShop> cakeShops = [
    CakeShop(
      name: 'เหตุด่วนหตุร้าย',
      phone: '191',
      image1: '1911.png',
    ),
    CakeShop(
      name: 'แจ้งไฟไหม้ สัตว์เข้าบ้าน',
      phone: '199',
      image1: '199.png',
    ),
    CakeShop(
      name: 'สายด่วนรถหาย',
      phone: '1192',
      image1: '1911.png',
    ),
    CakeShop(
      name: 'อุบัติเหตุทางน้ำ',
      phone: '1196',
      image1: '1196.png',
    ),
    CakeShop(
      name: 'แจ้งคนหาย',
      phone: '1300',
      image1: '1300.png',
    ),
    CakeShop(
      name: 'ศูนย์ปลอดภัยคมนาคม',
      phone: '1356',
      image1: '1356.png',
    ),
    CakeShop(
      name: 'หน่วยแพทย์กู้ชีพ',
      phone: '1554',
      image1: '1554.png',
    ),
    CakeShop(
      name: 'ศูนย์เอราวัณ',
      phone: '1646',
      image1: '1646.png',
    ),
    CakeShop(
      name: 'เจ็บป่วยฉุกเฉิน',
      phone: '1669',
      image1: '1669.png',
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
          'สายด่วน\nอุบัติเหตุ-เหตุฉุกเฉิน',
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
