// ignore_for_file: unused_import, prefer_interpolation_to_compose_strings, unused_element

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter_cake_shop_app/models/case_shop.dart';
import 'package:url_launcher/url_launcher.dart';

class SubCHomeUi extends StatefulWidget {
  const SubCHomeUi({super.key});

  @override
  State<SubCHomeUi> createState() => _SubCHomeUiUiState();
}

class _SubCHomeUiUiState extends State<SubCHomeUi> {
  List<String> imgCakeShop = [
    'assets/images/bank.png',
    'assets/images/bank2.png',
    'assets/images/atm.png',
  ];

  List<CakeShop> cakeShops = [
    CakeShop(
      name: 'ธนาคารกรุงเทพ',
      phone: '1333',
      image1: 'bk.png',
    ),
    CakeShop(
      name: 'ธนาคารออมสิน',
      phone: '1115',
      image1: 'os.png',
    ),
    CakeShop(
      name: 'ธนาคารกสิกรไทย',
      phone: '028888888',
      image1: 'kt.png',
    ),
    CakeShop(
      name: 'ธนาคารกรุงไทย',
      phone: '021111111',
      image1: 'kt2.png',
    ),
    CakeShop(
      name: 'ธนาคารกรุงศรี',
      phone: '1572',
      image1: 'ks.jpg',
    ),
    CakeShop(
      name: 'ทีเอ็มบีธนชาต',
      phone: '1428',
      image1: 'ttb.png',
    ),
    CakeShop(
      name: 'citi bank',
      phone: '1588',
      image1: 'citi.png',
    ),
    CakeShop(
      name: 'LH BANK',
      phone: '1327',
      image1: 'LHB.png',
    ),
    CakeShop(
      name: 'ธนาคาร ธอส.',
      phone: '026459000',
      image1: 'ghb.png',
    ),
    CakeShop(
      name: 'ธนาคารไทยพาณิชย์',
      phone: '027777777',
      image1: 'tpn.jpg',
    ),
    CakeShop(
      name: 'KIATNAKIN PHATRA BANK',
      phone: '021655555',
      image1: 'kkp.png',
    ),
    CakeShop(
      name: 'ธนาคารไทยเครดิต',
      phone: '026975454',
      image1: 'tkd.jpg',
    ),
    CakeShop(
      name: 'UOB',
      phone: '026336000',
      image1: 'uob.png',
    ),
    CakeShop(
      name: 'ธนาคารอิสลาม',
      phone: '022042766',
      image1: 'isl.jpg',
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
          'สายด่วน\nธนาคาร',
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
