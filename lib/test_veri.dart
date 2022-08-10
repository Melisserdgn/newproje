import 'soru.dart';

class TestVeri {
  int _sorularIndex = 0;
  List<Soru> _SoruBankasi = [
    Soru(soruMetni: 'Titanik gelmiş geçiş en büyük gemidir', soruYaniti: false),
    Soru(
        soruMetni: 'Dünyadaki tavuk sayısı insan sayısından fazladır',
        soruYaniti: true),
    Soru(soruMetni: 'Kelebeklerin ömrü bir gündür.', soruYaniti: false),
    Soru(soruMetni: 'Dünya düzdür.', soruYaniti: true),
    Soru(
        soruMetni: 'Kaju fıstığı aslında bir meyvenin sapıdır',
        soruYaniti: true),
    Soru(
        soruMetni: 'Fatih Sutlan Mehmet hiç patates yememiştir.',
        soruYaniti: true),
    Soru(
        soruMetni:
            'Gece gündüz eşitliği(ekinoks) bir yılda iki kez gerçekleşir.',
        soruYaniti: true),
    Soru(
        soruMetni: 'Nobel ödülleri Amerikada verilmektedir', soruYaniti: false),
    Soru(
        soruMetni: 'Tarihte Türk adıyla kurulan ilk devlet Göktürk devletidir.',
        soruYaniti: true),
    Soru(
        soruMetni:
            ' Türkiye’nin uluslararası otomatik telefon kod numarası +90dır.',
        soruYaniti: true),
    Soru(
        soruMetni:
            'Dünyanın ilk haritasını çizen ünlü Türk denizcisi Piri Reistir.',
        soruYaniti: true),
    Soru(
        soruMetni: 'UEFA Kupasını alan ilk Türk takımı Galatasaray^dır.',
        soruYaniti: true),
    Soru(
        soruMetni:
            'Kadınlara seçme ve seçilme hakkı tanıyan ilk ülke Türkiyedir.',
        soruYaniti: true),
    Soru(soruMetni: 'Avrupa Birliğinin başkenti Berlindir', soruYaniti: false),
    Soru(
        soruMetni: 'İstiklal Marşımızın bestecisi Mehmet Akif Ersoydur.',
        soruYaniti: false),
    Soru(
        soruMetni: 'Türkiye’nin en yüksek dağı  Everesttir.', soruYaniti: true),
    Soru(
        soruMetni:
            'Bugün bile adına tıp yemini edilen İspanyol tıp bilgini Hipokrattır.',
        soruYaniti: true),
    Soru(
        soruMetni: 'Ege’nin incisi İzmir’imizin eski adı Smyra(Simirna)dır.',
        soruYaniti: true),
    Soru(
        soruMetni: 'Yaprak Dökümü adlı romanın yazarı Yaşar Kemaldir.',
        soruYaniti: false),
    Soru(
        soruMetni:
            'Nobel edebiyat ödülünü kazanan ilk Türk yazarımız  Orhan Pamuktur',
        soruYaniti: true),
    Soru(
        soruMetni: '10.Portakal Çiçeği karnavalı Adanada düzenlenmiştir. ',
        soruYaniti: true),
    Soru(soruMetni: 'Adanada deniz vardır.', soruYaniti: true),
    Soru(
        soruMetni:
            'Futbolda büyük başarı göstererek 2000 yılında UEFA ve Süper Kupayı alan futbol takımımızın adı Galatasaraydır.',
        soruYaniti: true),
    Soru(soruMetni: 'Hollanda’nın başkenti Rotterdamdır. ', soruYaniti: false),
    Soru(
        soruMetni: 'Aya ilk defa 1969 yılında ayak basılmıştır.',
        soruYaniti: true),
    Soru(
        soruMetni:
            'Türkiye ile Yunanistan’ı birbirine bağlayan sınır kapısının adı Nahçıvandır',
        soruYaniti: false),
    Soru(soruMetni: 'Güneşe en yakın gezegen Dünyadır', soruYaniti: false),
  ];
  String getsoruMetni() {
    return _SoruBankasi[_sorularIndex].soruMetni;
  }

  bool getsoruYaniti() {
    return _SoruBankasi[_sorularIndex].soruYaniti;
  }

  void sonrakiSoru() {
    if (_sorularIndex + 1 < _SoruBankasi.length) {
      _sorularIndex++;
    }
  }

  bool testBittiMi() {
    if (_sorularIndex + 1 >= _SoruBankasi.length) {
      return true;
    } else {
      return false;
    }
  }

  void testiSifirla() {
    _sorularIndex = 0;
  }
}
