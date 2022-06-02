import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unistamp_1/pages/calculate_page.dart';
import 'package:unistamp_1/pages/unistamp_history_page.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 64, 1, 1),
        title: Image.asset(
          'assets/images/logo.png',
          width:
              context.isLandscape ? context.width * 0.30 : context.width * 0.5,
        ),
      ),
      drawer: Drawer(
        width: context.width * 0.5,
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(color: Colors.grey.shade700),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo2.png'),
                  const Text(
                    'UNISTAMP®',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              hoverColor: Colors.red,
              title: const Text('Home'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                _pageController.jumpToPage(0);
                Get.back();
              },
            ),
            ListTile(
              title: const Text('Cálculo'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                _pageController.jumpToPage(1);
                Get.back();
              },
            ),
            ListTile(
              title: const Text('Tabela de Materiais'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                //_pageController.jumpToPage(0);
              },
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          UnistampHistoryPage(),
          Get.put(CalculatePage()),
        ],
      ),
    );
  }
}
