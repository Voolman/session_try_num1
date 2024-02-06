import 'package:flutter/material.dart';



class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

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
                child: Image.network("https://i.imgur.com/DzoxAG4.png", fit: BoxFit.fill,)
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 68, left: 52, right: 51),
            child: Column(
              children: [
                Text(
                  "Real-time Tracking",
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
                    "Track your packages/items from the comfort of your home till final destination",
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
                  width: 342,
                  height: 46,
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OnBoarding3()));
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: "Roboto",
                            fontSize: 16,
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