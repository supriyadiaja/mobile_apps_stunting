import 'package:apps_stunting_mobile/util/navbar.dart';
import 'package:flutter/material.dart';

class DataBalitaPage extends StatefulWidget {
  DataBalitaPage({
    super.key,
  });

  @override
  State<DataBalitaPage> createState() => _DataBalitaPageState();
}

class _DataBalitaPageState extends State<DataBalitaPage> {
  final String name = "Silvia";

  final List<String> _dropdownItems = [
    'Harian',
    'Mingguan',
    'Bulanan',
  ];
  String? _selectedItem;

  bool _isScrolled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              color: _isScrolled
                  ? Colors.white.withValues(alpha: 0.9)
                  : Colors.white),
        ),
        title: Navbar(),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification.metrics.pixels > 0 && !_isScrolled) {
            setState(() {
              _isScrolled = true;
            });
          } else if (notification.metrics.pixels <= 0 && _isScrolled) {
            setState(() {
              _isScrolled = false;
            });
          }
          return true;
        },
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.teal[300],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: 53,
                        backgroundColor: Colors.green[600],
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              NetworkImage('https://i.pravatar.cc/500?u=$name'),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 4,
                        child: TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  backgroundColor: Colors.amber,
                                  title: Text("Ini tombol edit foto"),
                                );
                              },
                            );
                          },
                          style: TextButton.styleFrom(
                            minimumSize: Size(10, 35),
                            padding: EdgeInsets.all(5),
                            backgroundColor: Colors.lightBlueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: Icon(
                            Icons.edit_note_sharp,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Jhone",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),

                  // status ------------------------------>
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Status : ",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "Stunting",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // biodata -------------------------->
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Tanggal Lahir",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              "12/6/2025",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "Jenis Kelamin",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              "Laki-Laki",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),

            // dropdown ------------------------------------->
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.green[400],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: DropdownButton(
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(Icons.arrow_drop_down_outlined),
                    ),
                    underline: SizedBox.shrink(),
                    iconEnabledColor: Colors.white,
                    elevation: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      letterSpacing: 0.8,
                    ),
                    dropdownColor: Colors.green[400],
                    alignment: Alignment.center,
                    hint: Padding(
                      padding: const EdgeInsets.only(
                        left: 13,
                      ),
                      child: Text(
                        'Pilih Waktu',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ),
                    value: _selectedItem,
                    items: _dropdownItems.map((item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        _selectedItem = value;
                      });
                    },
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),

            // chart grafik ------------------------------------->
            Card(
              elevation: 5,
              child: Container(
                height: 250,
                color: Colors.amber[100],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Card(
              elevation: 5,
              child: Container(
                height: 250,
                color: Colors.blue[200],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Card(
              elevation: 5,
              child: Container(
                height: 250,
                color: Colors.green[100],
              ),
            ),

            SizedBox(
              height: 40,
            ),

            // logout -------------------------->
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    iconColor: Colors.white,
                    iconSize: 20,
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 15,
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.amber,
                          title: Center(
                            child: Text(
                              "Ini tombol keluar",
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.login_outlined),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Keluar",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
