import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: const BoxDecoration(
              color: Color(0xFFFBE8C6),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  const SizedBox(height: 50),
                  const Text(
                    "สวัสดีวันจันทร์ เช้าที่สดใส",
                    style: TextStyle(
                      color: Color(0xFF505050),
                      fontSize: 24,
                    ),
                  ),
                  const Text(
                    "คุณ DummyName",
                    style: TextStyle(
                      color: Color(0xFF505050),
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'วันนี้กินอะไรดี?',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'ร้านอาหารที่คุณเคยกิน',
                      style: TextStyle(
                        color: Color(0xFF505050),
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 25,
                        mainAxisSpacing: 25,
                        children: <Widget>[
                          StoreMenu(
                              title: 'ข้าวปั้นโมฟุ',
                              imgSrc: 'assets/images/food3.png',
                              isSale: true,
                              pushScreen: Container()),
                          StoreMenu(
                              title: 'กะเพราประจำใจ',
                              imgSrc: 'assets/images/food1.png',
                              isSale: false,
                              pushScreen: Container()),
                          StoreMenu(
                              title: 'เบอร์เกอร์อะไรเอ่ย',
                              imgSrc: 'assets/images/food2.png',
                              isSale: false,
                              pushScreen: Container())
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class StoreMenu extends StatelessWidget {
  final String title;
  final String imgSrc;
  final bool isSale;
  final Widget pushScreen;

  const StoreMenu({
    super.key,
    required this.title,
    required this.imgSrc,
    required this.isSale,
    required this.pushScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 15,
            offset: const Offset(0, 0.75),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (isSale)
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        '-25%',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                Column(
                  children: <Widget>[
                    const Spacer(),
                    Expanded(
                      flex: 3,
                      child: Image.asset(
                        imgSrc,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        title,
                        style: const TextStyle(
                          color: Color(0xFF505050),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
