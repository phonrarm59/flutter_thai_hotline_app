// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_cake_shop_app/sub_a_home_ui.dart';
import 'package:flutter_cake_shop_app/sub_b_home_ui.dart';
import 'package:flutter_cake_shop_app/sub_c_home_ui.dart';
import 'package:flutter_cake_shop_app/sub_d_home_ui.dart';


import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  int selectIndexItem = 1;

  //ตัวเเปรเก็บหน้าจอย่อยเอามาแสดงที่ body

  List showInbody = [
    SubAHomeUi(),
    SubBHomeUi(),
    SubCHomeUi(),
    SubDHomeUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 45, 43, 42),
        title: Text(
          'สายด่วน THAILAND',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: showInbody[selectIndexItem],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (paramValue) {
          setState(() {
            selectIndexItem = paramValue;
          });
        },
        currentIndex: selectIndexItem,
        selectedItemColor: const Color.fromARGB(255, 45, 43, 42),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.plane,
              ),
              label: 'การเดินทาง'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.triangleExclamation,
              ),
              label: 'อุบัติเหตุ-เหตุฉุกเฉิน'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.bank,
              ),
              label: 'ธนาคาร'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.plug,
              ),
              label: 'สาธารณูปโภค'),
        ],
      ),
    );
  }
}
