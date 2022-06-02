import 'package:flutter/material.dart';
import 'package:unistamp_1/controllers/history_page_controller.dart';
import 'package:unistamp_1/widgets/custom_image_network.dart';
import '../model/time_line.dart';
import 'package:get/get.dart';

class UnistampHistoryPage extends StatelessWidget {
  UnistampHistoryPage({Key? key}) : super(key: key);

  final HistoryPageController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding:
            const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      '45 anos de história com você!',
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    const Text(
                        'Qualidade em cortes, dobras e conformação de metais')
                  ],
                ),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _controller.timeLine.length,
              itemBuilder: ((context, index) {
                TimeLine item = _controller.timeLine[index];

                return ListTile(
                  contentPadding: const EdgeInsets.all(10),
                  title: CustomImageNetwork(url: item.url),
                  subtitle: Text(item.text),
                  leading: Text('${item.year}'),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
