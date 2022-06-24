import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:prosthesis/theme.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(const ProsthesisInfo());
}

class ProsthesisInfo extends StatefulWidget {
  const ProsthesisInfo({Key? key}) : super(key: key);

  @override
  State<ProsthesisInfo> createState() => _ProsthesisInfoState();
}

class _ProsthesisInfoState extends State<ProsthesisInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getHeight(20)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: getWidth(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SizedBox(
                        width: getWidth(25),
                        height: getHeight(25),
                        child: SvgPicture.asset(
                          'assets/icon/providers/left.svg',
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Prosthesic Information',
                      style: TextStyle(
                        color: const Color(0xff363C3C),
                        fontSize: getWidth(20),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      child: SvgPicture.asset(
                        'assets/icon/providers/filter.svg',
                        width: getWidth(25),
                        height: getHeight(25),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getHeight(25),
              ),
              const GFAccordion(
                title: 'History of Phrosthesis',
                content:
                    'Dikenal sejak era kerajaan Mesir, bidang Prostetik telah berubah menjadi contoh bagaimana determinasi manusia untuk menjadi lebih baik. Sejarah evolusi dari prostetik merupakan sangatlah panjang, dari bentuk awal yang primitif hingga bentuk masa kini yang canggih.'
                    '\n\nTeknologi Prostesis tertua di dunia ditenukan di kota Thebes, Mesir pada tahun 2000. Jari jempol palsu ditemukan di mummy yang diduga dibuat pada tahun 1069 hingga 664 SM. Kaki palsu bersejarah lainnya yang diduga dibuar pada sekitar 300 SM ditemukan di Capua, Itali, pada tahun 1858. Kaki palsu ini dibuat menggunakan besi dan perunggu dengan inti dari kayu, diduga untuk pasien amputasi bawah lutut.',
              ),
              const GFAccordion(
                title: 'Ambrosius Paré Book About Prosthesis',
                content:
                    'Ambroise Paré dianggap sebagai bapak operasi amputasi dan prosthesis modern di pertengahan hingga akhir tahun 1500. Beliau adalah seorang dokter bedah tentara Perancis yang juga merupakan seorang potong rambut. Ambroise memperkenalkan prosedur amputasi modern pada tahun 1529 dan membuat prosthesis untuk ekstremitas atas dan bawah di tahun 1536. Beliau juga menemukan prosthesis diatas lutut berupa tungkai yang bisa ditekuk dan prosthesis kaki yang posisinya terfiksasi, tali pengekekang yang bisa diatur dan fitur-fitur mekanik yang digunakan pada peralatan modern saat ini. Semua karyanya mencerminkan bagaimana cara kerja prosthesis yang sesungguhnya.',
              ),
              const GFAccordion(
                title: 'Modern Prosthesis',
                content:
                    'Beralih ke era modern seiring berlangsungnya perang saudara Amerika Serikat, jumlah kasus amputasi meningkat drastis. James Hanger, salah satu korban amputasi pertama pada perang saudara mengembangkan apa yang kemudian dinamakan "Hanger Limb". Orang-orang seperti Hanger, Selpho, Palmer, dan A. A. Marks membantu mengembangankan dan memajukan bidang prosthesis dalam hal mekanisme dan bahan.',
              ),
              const GFAccordion(
                title: 'Prosthesis In Indonesia',
                content:
                    'Pada Tahun 1946 bersama Suroto Reksopranoto pertama kali membuat alat bantu Ortotik dan Prostetik yang sangat sederhana (dari bambu) yang merupakan cikal bakal / perintisan bengkel Protese di Indonesia yang kemudian berkembang menjadi training center.'
                    '\n\nProf.DR.R.Soeharso merintis dari tahun Th 1946 s/d 1971. Sejarah berdirinya LOP tidak lepas dari sejarah perjalanan Rehabilitasi Centrum (RC) karena merupakan bagian dari pelayanan RC yang dimotori oleh Prof.DR.R.Soeharso. Perkembangan berikutnya LOP berubah nama menjadi RS Orthopaedi dan Prothese dan berubah lagi menjadi RS Ortopedi Prof.DR.R.Soeharso Surakarta.'
                    '\n\nRC saat itu hanya Lembaga Pusat Rehabilitasi Penderita cacat Tubuh (LPRPCT) kemudian baru dibuka Lembaga Orthopaedi dan Prothese (LOP) dan berikutnya dikuti dengan Akademi maupun lembaga / yayasan dibawah naungan nama Prof.Dr.R. Soeharso yang akhirnya tergabung dalam “Paguyuban Lembaga Rehabilitasi Prof.DR.R.Soeharso Surakarta” yang berjumlah 10 sbb :'
                    '\n1. BBRSBD melaksanakan fungsi Rehabilitasi Sosial bagi penyandang cacat dari seluruh Indonesia yang sepenuhnya dibiayai Pemerintah.'
                    '\n2. RS. Ortopedi Prof.DR.R.Soeharso Surakarta melaksanakan fungsi pelayanan kesehatan di bidang Ortopedi dan Rehabilitasi Medik secara paripurna sesuai konsep beliau yang berpedoman dari WHO.'
                    '\n3. YPAC mengkhususnya untuk penderita cacat tubuh untuk anak & pendidikannya.'
                    '\n4. Yayasan Sheltered Workshop Solo untuk pelatihan ketrampilan untuk persiapan kerja.'
                    '\n5. Pusrehabcat (Dorehabcat) yang memberikan pelayanan bagi penderita cacat tubuh akibat perang saat itu.'
                    '\n6. Sekolah perawat Fisioterapi yang akhirnya berubah menjadi Akademi Fisioterapi, menyiapkan kader-kader pelatih fisik pasien Ortopedi yang merupakan kesatuan dan pendukung dari Rehabilitasi Medik Paripurna.'
                    '\n7. Yayasan Paraplegia diperuntukkan bagi pasien dan keluarga yang menderita paraplegia yang tempat tinggalkan tidak memungkinkan dilalui kursi roda ( misal di pegunungan ).'
                    '\n8. Yayasan Koperasi penderita cacat “Harapan” untuk paguyuban & usaha untuk meningkatkan kesejahteraan penderita cacat yang telah mengikuti pelatihan dari Lembaga Pusat Rehabilitasi Penderita cacat Tubuh (LPRPCT) yang sekarang berubah nama Balai Besar Rehabilitasi Sosial Bina Daksa (BBRSBD) yang berlokasi di Jebres.'
                    '\n9. Yayasan Pembinaan Olah Raga Penderita cacat diperuntukkan bagi pelatihan dan pembinaan mental lewat pembinaan olah raga , yang dulu pernah mendunia dengan banyaknya penderita cacat mengikuti turnamen OR dunia.'
                    '\n10. Pusat Rehabilitasi Sosial Bina masyarakat ( PRSBM) berpusat di Colomadu difokuskan untuk pelatihan dengan memberikan kesadaran masyarakat masalah kecacatannya baik di daerah  setempat lewat lembaga Kesehatan daerah ataupun di PRSBM.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
