import 'package:apps_stunting_mobile/util/banner_carousel.dart';
import 'package:apps_stunting_mobile/util/card_icon.dart';
import 'package:apps_stunting_mobile/util/card_text.dart';
import 'package:apps_stunting_mobile/util/navbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Expanded(
            child: ListView(
              children: [
                // banner carousel
                BannerCarousel(),

                SizedBox(
                  height: 20,
                ),

                // bahaya stunting ----------------->
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        Text(
                          'Bahaya Stunting',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Center(
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  height: 1.7,
                                ),
                                text:
                                    'Kenalan dengan beberapa bahaya yang diakibatkan oleh Stunting',
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 30,
                        ),

                        // gangguan ------------->
                        CardText(
                          color: Color(0xffFCF4DD),
                          title: 'Gangguan Kognitif',
                          description:
                              'Anak dengan stunting memiliki kemampuan kognitif yang lebih buruk. Tingkat fokus anak juga juga dapat terpengaruh karena mengidap stunting. Pasalnya, anak-anak yang stunting akan mengalami kesulitan berkonsentrasi, yang membuat mereka kesulitan belajar.',
                        ),
                        CardText(
                          color: Color(0xffDAEAF6),
                          title: 'Rentan Mengalami Penyakit',
                          description:
                              'Salah satu dampak stunting terhadap kesehatan anak adalah membuat anak lebih rentan terhadap penyakit tidak menular saat dewasa nanti. Penyakit tidak menular tersebut antara lain obesitas, penyakit jantung, dan hipertensi.',
                        ),
                        CardText(
                          color: Color(0xffE8DFF5),
                          title: 'Imun Lebih Rendah',
                          description:
                              'Kekebalan yang menurun terkait dengan malnutrisi yang terjadi pada stunting Asupan gizi yang kurang dapat menyebabkan gangguan pada sistem kekebalan tubuh secara keseluruhan, sehingga membuat anak lebih rentan terhadap mengidap penyakit berulang yang sama.',
                        ),
                        CardText(
                          color: Color(0xffFCE1E4),
                          title: 'Hilangnya Produktifitas',
                          description:
                              'Orang dewasa dengan riwayat stunting terbukti kurang produktif di tempat kerja, yang pada akhirnya memengaruhi pendapatan mereka. Hal ini tidak terjadi pada sekelompok orang dewasa yang tidak mengidap stunting saat masih anak-anak.',
                        ),
                      ],
                    ),
                  ),
                ),

                // Cegah stunting dari kita ------------->
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 70),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Cegah Stunting dari diri Kita',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.black87,
                              height: 2,
                            ),
                            text:
                                'Cegah stunting dengan tindakan dari dirimu sendiri! Gizi seimbang, pola makan sehat, asupan snutrisi yang cukup, dan perhatian pada pertumbuhan anak adalah langkah awal yang bisa kita lakukan untuk mencegah stunting. Bersama-sama, mari jaga kesehatan generasi masa depan! #StopStunting #CegahStunting Dari Diri Sendiri',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff123C69),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.justify,
                              "``Menurut WHO (2015), stunting adalah gangguan pertumbuhan dan perkembangan anak akibat kekurangan gizi kronis dan infeksi berulang, yang ditandai dengan panjang atau tinggi badannya berada di bawah standar. Selanjutnya menurut WHO (2020) stunting adalah pendek atau sangat pendek berdasarkan panjang / tinggi badan menurut usia yang kurang dari -2 standar deviasi (SD) pada kurva pertumbuhan WHO yang terjadi dikarenakan kondisi irreversibel akibat asupan nutrisi yang tidak adekuat dan/atau infeksi berulang / kronis yang terjadi dalam 1000 HPK. - dr. Desi Fajar Susanti, M.Sc, Sp.A (K) -``",
                              style: TextStyle(
                                color: Colors.white,
                                height: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Bagaiana cegah stunting? ------------->
                SizedBox(
                  height: 20,
                ),

                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Bagaimana cara mencegah Stunting',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black54,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // 4 icons sejajar ------------->
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CardIcon(
                              icon: Icons.health_and_safety,
                              title: "Ayo ke Posyandu",
                              description:
                                  "Memanau perkembangan anak dan membawa ke posyandu secara berkala",
                            ),
                            CardIcon(
                              icon: Icons.favorite_border_outlined,
                              title: "Pola hidup sehat",
                              description:
                                  "Tetap terapkan perilaku hidup bersih dan sehat, serta bersegera untuk melakukan pemeriksaan ke fasilitas kesehatan terdekat apabila mengalami gejala penyakit, agar bisa segera mendapat penanganan sedini mungkin",
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CardIcon(
                              icon: Icons.people_alt_sharp,
                              title: "Asi itu penting",
                              description:
                                  "Memberikan Asi eklusif pada bayi hingga berusia 6 bulan",
                            ),
                            CardIcon(
                              icon: Icons.warning_amber_rounded,
                              title: "Ingat TTD",
                              description:
                                  "Mengkonsumsi secara rutin Tablet Tambah Darah (TTD)",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
