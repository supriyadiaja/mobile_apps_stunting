import 'package:apps_stunting_mobile/util/banner_carousel.dart';
import 'package:apps_stunting_mobile/util/card_text.dart';
import 'package:apps_stunting_mobile/util/navbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Navbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Expanded(
          child: ListView(
            children: [
              // banner carousel
              BannerCarousel(),

              SizedBox(height: 30,),

              // bahaya stunting
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Text(
                      'Bahaya Stunting',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black54,
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
                          ),
                          text:
                              'Kenalan dengan beberapa bahaya yang diakibatkan oleh Stunting',
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),

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

              // Cegah stunting dari kita ------------->
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Cegah Stunting dari diri Kita',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
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

                    SizedBox(height: 40,),

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
            ],
          ),
        ),
      ),
    );
  }
}
