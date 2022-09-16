import 'package:event_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'login_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final controller = PageController();
  String buttonText = 'Next';
  int localindex = 0;
  static final List<String> textList = [
    'Grab all events now only in your hands',
    'Easy payments and fast event ticketing',
    'Lets go to your favourite event'
  ];
  static final List<String> imageList = [
    'assets/page1.png',
    'assets/page2.png',
    'assets/page3.png',
  ];

  final pages = List.generate(
    3,
    (index) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Image
        Expanded(
          flex: 2,
          child: Image.asset(
            imageList[index],
            scale: 0.5,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            decoration: const BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textList[index],
                  style: const TextStyle(
                    fontSize: 33,
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
                  style: TextStyle(fontSize: 19),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(children: [
            Expanded(
              child: PageView.builder(
                  controller: controller,
                  itemBuilder: (context, index) {
                    localindex = index;
                    return pages[index % pages.length];
                  }),
            ),
            Column(
              children: [
                SmoothPageIndicator(controller: controller, count: 3,
                effect: const ExpandingDotsEffect(
                  spacing: 10.0,
                  radius: 10,
                  dotWidth: 10,
                  dotHeight: 10,
                  strokeWidth: 0.5,
                  dotColor: Colors.grey,
                  activeDotColor: indigo,
                  paintStyle: PaintingStyle.fill
                ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    if (localindex == 1) {
                      setState(() {
                        buttonText = 'Get Started';
                      });
                    }
                    if (localindex == 2) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                    }
                    controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 20,
                    width: 300,
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.indigoAccent,
                    ),
                    child: Center(
                      child: Text(
                        buttonText,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
