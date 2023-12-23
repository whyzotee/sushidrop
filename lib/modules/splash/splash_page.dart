import 'package:flutter/material.dart';

import '../home/home_page.dart';

class SpalshPage extends StatefulWidget {
  const SpalshPage({super.key});

  @override
  State<SpalshPage> createState() => _SpalshPageState();
}

class _SpalshPageState extends State<SpalshPage> {
  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    'assets/images/icon/sushidrop_icon.png',
                  ),
                ),
                Text(
                  'SushiDrop',
                  style: TextStyle(
                    color: Color(0xFF505050),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Delivery',
                  style: TextStyle(
                    color: Color(0xFF505050),
                    fontSize: 16,
                    letterSpacing: 4,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              color: Color(0xFFFBE8C6),
            ),
            padding: EdgeInsets.symmetric(
              vertical: query.height * 0.05,
              horizontal: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'ยินดีต้อนรับ',
                  style: TextStyle(
                    color: Color(0xFF505050),
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                ),
                const Text(
                  'เราจะส่งของให้ถึงคุณภายในไม่ถึงเสี้ยววิแต่ก่อนขั้นตอนแรก โปรดเข้าสู่ระบบเพื่อใช้บริการของเราก่อนนะ',
                  style: TextStyle(
                    color: Color(0xFF505050),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: query.height * 0.05),
                homeBTN(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget homeBTN() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF303030),
          shape: const StadiumBorder(),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Get started!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  Widget loginAndRegisBTN() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Container(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF303030),
              shape: const StadiumBorder(),
            ),
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Container(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: const StadiumBorder(),
            ),
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Color(0xff303030),
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
