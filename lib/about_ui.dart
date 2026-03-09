import 'package:flutter/material.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 45, 43, 42),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'สายด่วน THAILAND',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Text(
                'ผู้จัดทำ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 120,
                height: 120,
                color: Colors.grey[200],
                child: Image.asset('assets/images/sau.png'),
              ),
              const SizedBox(height: 15),
              const Text(
                'มหาวิทยาลัยเอเชียอาคเนย์',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 40),
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.grey[200],
                backgroundImage: const AssetImage('assets/images/pro.png'),
              ),
              SizedBox(height: 50),
              Text('6819M10021',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 15),
              Text('เทพอมร เกิดทอง',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 15),
              Text('phonrarm59@gmail.com',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 15),
              Text('วิศวกรรมคอมพิวเตอร์',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 15),
              Text('วิศวกรรมศาสตร์',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
