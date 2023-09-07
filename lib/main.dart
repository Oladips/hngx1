import 'package:flutter/material.dart';
import 'package:hng_stage_1/webview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HNGX Test 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'HNG X Stage 1 Test',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 24),
              const Text(
                "HNG X Stage 1",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Euclid",
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 24),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: const Center(
                  child: CircleAvatar(
                    radius: 48,
                    backgroundImage: AssetImage(
                      "assets/test.jpeg",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Adedoyin Oladipupo",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Euclid",
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              const Text(
                "@abiodun",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Euclid",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email,
                    size: 14,
                  ),
                  SizedBox(width: 4),
                  Text(
                    "abiodundipupo@gmail.com",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Euclid",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                    size: 14,
                  ),
                  SizedBox(width: 4),
                  Text(
                    "08038827305",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Euclid",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Colors.black),
                  overlayColor: MaterialStatePropertyAll(Colors.black.withOpacity(.5)),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.all(16),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const Webview()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "assets/github.png",
                        ),
                      ),
                    ),
                    const Text(
                      "Open Github",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Euclid",
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 24),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
