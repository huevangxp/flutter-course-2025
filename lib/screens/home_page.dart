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

    List<String> list = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

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
                elevation: 0,
                // add shadow
                shadowColor: Colors.black,
                // backgound color white
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(disableCenter: true),
                        height: screenHeight * 0.2,
                        items: list
                            .map(
                              (item) => Container(
                                child: Text(item.toString() , style: TextStyle(color: Colors.white),),
                                color: Colors.teal,
                              ),
                            )
                            .toList(),
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
