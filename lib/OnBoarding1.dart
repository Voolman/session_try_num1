import 'package:flutter/material.dart';
import 'package:session2/OnBoarding2.dart';
import 'package:session2/OnBoarding3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 133),
            child: SizedBox(
              width: double.infinity,
              height: 316,
              child: Image.network("https://i.imgur.com/kxnMbj8.png", fit: BoxFit.fill,)
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 68, left: 52, right: 51),
            child: Column(
              children: [
                Text(
                  "Quick Delivery At Your Doorstep",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 5, 96, 250),
                    fontFamily: "Roboto",
                    fontSize: 24,
                    fontWeight: FontWeight.w700
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 13,right: 13),
                  child: Text(
                    "Enjoy quick pick-up and delivery to your destination",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 58, 58, 58),
                        fontFamily: "Roboto",
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160, left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  height: 50,
                  child: Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color.fromARGB(255, 5, 96, 250)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OnBoarding3()));
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            color: Color.fromARGB(255, 5, 96, 250),
                            fontFamily: "Roboto",
                            fontSize: 14,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 5, 96, 250),
                          side: const BorderSide(color: Color.fromARGB(255, 5, 96, 250)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          )
                      ),
                      onPressed: () { 
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OnBoarding2()));
                      },
                      child: const Text(
                        "Next",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: "Roboto",
                            fontSize: 14,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
