import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormPengaduan(),
    );
  }
}

class FormPengaduan extends StatefulWidget {
  FormPengaduan({Key? key}) : super(key: key);

  @override
  State<FormPengaduan> createState() => _FormPengaduanState();
}

class _FormPengaduanState extends State<FormPengaduan> {
  late TextEditingController namaController;
  late TextEditingController alamatController;
  late TextEditingController pengaduanController;
  String gender = "none";
  bool inResultPage = false;

  @override
  Widget build(BuildContext context) {
    return inResultPage
        ? buildResultPage(context)
        : Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text(
                "Form Pengaduan",
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: ListView(
              padding: EdgeInsets.all(8.0),
              children: [
                buildHeader(context),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  "Nama",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextField(
                  controller: namaController,
                  decoration: InputDecoration(
                      labelText: "Nama",
                      hintText: "Nama Lengkap",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  "Alamat",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextField(
                  controller: alamatController,
                  decoration: InputDecoration(
                      labelText: "Alamat",
                      hintText: "Alamat Lengkap",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(height: 16.0),
                Text(
                  "Jenis Kelamin",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Column(
                  children: [
                    ListTile(
                      leading: Radio(
                        value: "Laki - Laki",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value ?? "none";
                          });
                        },
                      ),
                      title: Text("Laki - Laki"),
                    ),
                    ListTile(
                      leading: Radio(
                        value: "Perempuan",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value ?? "none";
                          });
                        },
                      ),
                      title: Text("Perempuan"),
                    )
                  ],
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  "Alasan Pengaduan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextField(
                  controller: pengaduanController,
                  decoration: InputDecoration(
                      labelText: "Pengaduan",
                      hintText: "Alasan Pengaduan",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ],
            ),
          );
  }

  @override
  void initState() {
    super.initState();
    namaController = TextEditingController();
    alamatController = TextEditingController();
    pengaduanController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    namaController.dispose();
    alamatController.dispose();
    pengaduanController.dispose();
  }

  Widget buildHeader(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(),
        ),
        TextButton.icon(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.grey,
          ),
          onPressed: () {
            setState(() {
              namaController.clear();
              alamatController.clear();
              pengaduanController.clear();
              gender = "none";
            });
          },
          icon: Icon(Icons.cancel_outlined),
          label: Text("Reset"),
        ),
        SizedBox(
          width: 8.0,
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.black,
            side: BorderSide(
              width: 2,
              color: Colors.lightBlueAccent,
            ),
          ),
          onPressed: () {},
          child: Text("Cancel"),
        ),
        SizedBox(
          width: 8.0,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              )),
          onPressed: () {
            setState(() {
              inResultPage = true;
            });
          },
          child: Text("Confirm"),
        ),
      ],
    );
  }

  Widget buildResultPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Pengaduan"),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          Text("Nama : ${namaController.text}"),
          SizedBox(
            width: 12.0,
          ),
          Text("Alamat : ${alamatController.text}"),
          SizedBox(
            width: 12.0,
          ),
          Text("Jenis Kelamin : ${gender}"),
          SizedBox(
            width: 12.0,
          ),
          OutlinedButton(
            onPressed: () {
              setState(() {
                inResultPage = false;
              });
            },
            child: Text("Back"),
          ),
        ],
      ),
    );
  }
}
