import 'package:flutter/material.dart';
import 'package:flutter_cake_shop_app/splash_screen_ui.dart';
import 'package:introduction_screen/introduction_screen.dart';
class IntroductionCallUI extends StatefulWidget {
  const IntroductionCallUI({super.key});

  @override
  State<IntroductionCallUI> createState() => _IntroductionCallUIState();
}

class _IntroductionCallUIState extends State<IntroductionCallUI> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      scrollPhysics: const BouncingScrollPhysics(),
      pages: [
        PageViewModel(
          title: "สายด่วน THAILAND",
          bodyWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "แอปพลิเคชันที่รวมสายด่วน เหตุฉุกเฉิน บริการอื่นๆไว้ในแอปเดียว กดโทรได้ ในคลิกเดียว",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              _buildFeatureItem("สายด่วนการเดินทาง"),
              _buildFeatureItem("สายด่วนอุบัติเหตุ-เหตุฉุกเฉิน"),
              _buildFeatureItem("สายด่วนธนาคาร"),
              _buildFeatureItem("สายด่วนสาธารณูปโภค"),
            ],
          ),
          image: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Image.asset("assets/images/logo2.png", height: 150),
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
      ],
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SplashScreenUi()),
        );
      },
      showSkipButton: false,
      next: const Icon(Icons.arrow_forward),
      done: const Text("เริ่มต้น", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.grey,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
  Widget _buildFeatureItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.check_box, color: Colors.green, size: 30),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}