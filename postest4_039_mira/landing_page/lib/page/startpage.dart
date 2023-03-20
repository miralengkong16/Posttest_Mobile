import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homescreen.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          image: DecorationImage(
            image: AssetImage(
              "assets/illustration.png",
            ),
            fit: BoxFit.cover,
            // opacity: 0.6,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 160,
            ),
            Text(
              "You Destination",
              style: GoogleFonts.antonio(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            Column(
              children: [
                Text(
                  "Hello Mira,Explore Kalimantan Timur With Us",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 250,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Lets Try",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
