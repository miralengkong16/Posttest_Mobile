import 'package:flutter/material.dart';
import 'package:landing_page/page/form_pengaduan.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "You Destinations",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 150,
              color: Colors.deepPurple,
              alignment: Alignment.bottomCenter,
              child: Text(
                "Welcome ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Dark Mode"),
              trailing: Switch(
                value: false,
                onChanged: (changedTheme) {},
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
              },
              leading: Icon(
                Icons.home,
                color: Colors.black,
                size: 20,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              // onTap: () {
              //   Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => Profil(),
              //   ));
              // },
              leading: Icon(
                Icons.people,
                color: Colors.black,
                size: 20,
              ),
              title: Text(
                "Profil",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FormPengaduan(),
                ));
              },
              leading: Icon(
                Icons.help_center,
                color: Colors.black,
                size: 20,
              ),
              title: Text(
                "Form Pengaduan",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
