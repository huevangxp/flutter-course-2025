import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:course/screens/setting/screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onSettingsPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SettingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Define responsive widths
    double textWidth = screenWidth * 0.5;
    double buttonWidth = screenWidth * 0.5;
    double textFontSize = 18;

    if (screenWidth > 800) {
      // Tablet/Desktop
      textWidth = screenWidth * 0.3;
      buttonWidth = screenWidth * 0.3;
      textFontSize = 24;
    } else if (screenWidth > 500) {
      // Medium devices
      textWidth = screenWidth * 0.4;
      buttonWidth = screenWidth * 0.4;
      textFontSize = 20;
    }

    List<String> list = [
      // image url
      'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg',
      'https://cdn.pixabay.com/photo/2022/08/26/00/07/bird-7411459_1280.jpg',
      'https://cdn.pixabay.com/photo/2023/06/01/13/07/annas-hummingbird-8033578_1280.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/appIcon.png', fit: BoxFit.contain),
        ),
        title: const Text(
          'ໜ້າຫຼັກ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            tooltip: 'Settings',
            onPressed: _onSettingsPressed,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // add card here
              Card(
                elevation: 0, // Add shadow depth
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                clipBehavior: Clip
                    .antiAlias, // ensures child is clipped to the rounded border
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    height: screenHeight * 0.20,
                    viewportFraction: 1, // image fills the entire card
                    enlargeCenterPage: true,
                  ),
                  items: list
                      .map(
                        (item) => Container(
                          width: double.infinity,
                          child: Image.network(
                            item.toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(height: 16),
              Card(
                elevation: 4,
                child: Container(
                  color: Colors.white, // makes background white and full width
                  width: double.infinity, // expands to full available width
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.start, // aligns children to start
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        color: Colors.white,
                        elevation: 0,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'ສະບາຍດີ',
                              style: TextStyle(
                                fontSize: textFontSize,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'ນີ້ແມ່ນຂໍ້ຄວາມທົດລອງສໍາລັບການອອກແບບແອັບລາວທີ່ໃຊ້ເພື່ອສະແດງຮູບແບບ ແລະ ການຈັດວາງຂໍ້ຄວາມໃນໜ້າຈໍທົດລອງ. ຄໍາເຫຼົ່ານີ້ບໍ່ມີຄວາມໝາຍຈິງແຕ່ເປັນຕົວຢ່າງ ສໍາລັບການທົດສອບການຈັດຮູບແບບ ແລະ ການອ່ານຂໍ້ຄວາມ.',
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Introduc extends StatelessWidget {
  const Introduc({super.key, required this.textFontSize});

  final double textFontSize;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.info, size: textFontSize * 2, color: Colors.red),
          SizedBox(height: 12),
          Text(
            'ສະບາຍດີ',
            style: TextStyle(
              fontSize: textFontSize,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center, // centers text on small screens
          ),
          const SizedBox(height: 12),
          Text(
            'ພາສາລາວມີລັກສະນະພິເສດ ໃນການຂຽນ ແລະ ຮູບແບບຂອງຕົວອັກສອນ, ຊຶ່ງເຮັດໃຫ້ການທົດສອບນີ້ເປັນປະໂຫຍດໃນການອອກແບບ. ບາງຄັ້ງຂໍ້ຄວາມທົດສອບອາດຈະຍາວຫຼາຍ ຫຼື ສັ້ນຕາມຄວາມຕ້ອງການ ເພື່ອໃຫ້ເຫັນວ່າຮູບແບບຂອງອັກສອນສາມາດປັບໄດ້ດີແຄ່ໃດ. ນີ້ແມ່ນຂໍ້ຄວາມລອງສຳລັບການອອກແບບຫນ້າຈໍທົດສອບແລະການຈັດວາງຕົວອັກສອນໃນພາສາລາວ.',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              height: 1.6, // improves readability
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
