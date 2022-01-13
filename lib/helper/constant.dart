import 'package:flutter/material.dart';

const kAyatStyle = TextStyle(
  fontFamily: 'Uthmanic',
  height: 2,
  fontWeight: FontWeight.w500,
  fontSize: 26.0,
);

const kShalatStyle = TextStyle(
  fontSize: 14,
  color: Colors.white,
  fontWeight: FontWeight.w500,
);
const kBasmalahStyle = TextStyle(
  fontFamily: 'Basmalah',
  fontSize: 100.0,
);

const kJudulStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 20.0,
);

const kListTitle = TextStyle(
  fontSize: 20.0,
);

const kCounter = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.bold,
);

//ayat quran
const kTaawudz = 'أَعُوْذُ بِٱللّٰهِ مِنَ ٱلشَّيْطٰنِ ٱلرَّجِيْمِ';
const kTaawudzTerjemah =
    '“Aku berlindung kepada Allah dari godaan syaitan yang terkutuk.”';
const kBasmalah = 'بِسْمِ ٱللّٰهِ ٱلرَّحْمٰنِ ٱلرَّحِيْمِ';
const kBasmalah2 = '6';
const kBasmalahTerjemah =
    '"Dengan menyebut nama Allah yang Maha Pengasih lagi Maha Penyayang"';
const kAyatKursi =
    'ٱللّٰهُ لَآ إِلٰهَ إِلَّا هُوَ ٱلْحَيُّ ٱلْقَيُّوْمُۚ ، لَا تَأْخُذُهُۥ سِنَةٌ وَلَا نَوْمٌۚ ، لَّهُۥ مَا فِي ٱلسَّمٰوٰتِ وَمَا فِي ٱلْأَرْضِۗ ، مَنْ ذَا ٱلَّذِيْ يَشْفَعُ عِنْدَهُۥٓ إِلَّا بِإِذْنِهِۦۚ ، يَعْلَمُ مَا بَيْنَ أَيْدِيْهِمْ وَمَا خَلْفَهُمْۖ ، وَلَا يُحِيْطُوْنَ بِشَيْءٍ مِّنْ عِلْمِهِۦٓ إِلَّا بِمَا شَآءَۚ ، وَسِعَ كُرْسِيُّهُ ٱلسَّمٰوٰتِ وَٱلْأَرْضَۚ ، وَلَا يَـُٔوْدُهُۥ حِفْظُهُمَاۚ ، وَهُوَ ٱلْعَلِيُّ ٱلْعَظِيْمُ ٢٥٥';
const kAyatKursiTerjemah =
    '“Allah, tidak ada Tuhan (yang berhak disembah) melainkan Dia Yang Hidup kekal lagi terus menerus mengurus (makhluk-Nya); tidak mengantuk dan tidak tidur. Kepunyaan-Nya apa yang di langit dan di bumi. Tiada yang dapat memberi syafa´at di sisi Allah tanpa izin-Nya? Allah mengetahui apa-apa yang di hadapan mereka dan di belakang mereka, dan mereka tidak mengetahui apa-apa dari ilmu Allah melainkan apa yang dikehendaki-Nya. Kursi Allah meliputi langit dan bumi. Dan Allah tidak merasa berat memelihara keduanya, dan Allah Maha Tinggi lagi Maha Besar.”';
const kAlikhlas =
    ' قُلْ هُوَٱللّٰهُ أَحَدٌ ١ ٱللّٰهُ ٱلصَّمَدُ ٢ لَمْ يَلِدْ وَلَمْ يُوْلَدْ ٣ وَلَمْ يَكُنْ لَّهُۥ كُفُوًا أَحَدُۢ ٤';
const kAlikhlasTerjemah =
    '“Katakanlah: "Dialah Allah, Yang Maha Esa. Allah adalah Tuhan yang bergantung kepada-Nya segala sesuatu. Dia tiada beranak dan tidak pula diperanakkan, dan tidak ada seorangpun yang setara dengan Dia".';
const kAlFalaq =
    'قُلْ أَعُوْذُ بِرَبِّ ٱلْفَلَقِ ١ مِنْ شَرِّ مَا خَلَقِ ٢ وَمِنْ شَرِّ غَاسِقٍ إِذَا وَقَبَ ٣ وَمِنْ شَرِّ ٱلنَّفَّـٰثَـٰتِ فِي ٱلْعُقَدِ ٤ وَمِنْ شَرِّ حَاسِدٍ إِذَا حَسَدَ ٥';
const kAlFalaqTerjemah =
    '“Katakanlah: "Aku berlindung kepada Tuhan Yang Menguasai subuh, dari kejahatan makhluk-Nya, dan dari kejahatan malam apabila telah gelap gulita, dan dari kejahatan wanita-wanita tukang sihir yang menghembus pada buhul-buhul, dan dari kejahatan pendengki bila ia dengki".”';
const kAnNaas =
    'قُلْ أَعُوْذُ بِرَبِّ ٱلنَّاسِ ١ مَلِكِ ٱلنَّاسِ ٢ إِلٰهِ ٱلنَّاسِ ٣ مِنْ شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ ٤ ٱلَّذِيْ يُوَسْوِسُ فِيْ صُدُوْرِ ٱلنَّاسِ ٥ مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ ٦';
const kAnNaasTerjemah =
    '“Katakanlah: "Aku berlindung kepada Tuhan (yang memelihara dan menguasai) manusia., Raja manusia. Sembahan manusia. Dari kejahatan (bisikan) syaitan yang biasa bersembunyi, yang membisikkan (kejahatan) ke dalam dada manusia, dari (golongan) jin dan manusia.”';
const kPagi1 =
    'أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلّٰهِ وَالْحَمْدُ لِلّٰهِ ، لَا إِلٰهَ إِلَّا اللّٰهُ وَحْدَهُ لَا شَرِيْكَلَهُ ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرٌ ، رَبِّ أَسْأَلُكَ خَيْرَ مَا فِي هٰذَا الْيَوْمِ وَخَيْرَ مَا بَعْدَهُ وَأَعُوْذُبِكَ مِنْ شَرِّ مَا فِي هٰذَا الْيَوْمِ وَشَرِّ مَا بَعْدَهُ ، رَبِّ أَعُوْذُبِكَ مِنَ الْكَسَلِ ، وَسُوْءِالْكِبَرِ ، رَبِّ أَعُوْذُبِكَ مِنْ عَذَابٍ فِي النَّارِ وَعَذَابٍ فِي الْقَبْرِ.';
const kPagi1Terjemah =
    '“kami telah memasuki waktu pagi dan kerajaan hanya milik Allah, segala puji hanya milik Allah. Tidak ada Tuhan (yang berhak disembah) kecuali Allah Yang Maha Esa, yang tidak ada sekutu bagi-Nya. Bagi-Nya kerjaan dan bagi-Nya pujian. Dialah yang Mahakuasa atas segala sesuatu. Wahai Tuhanku, sungguh aku berlindung kepada-Mu dari kemalasan dan keburukan di hari tua. Wahai Tuhanku, aku berlindung kepada-Mu dari siksa di neraka dan siksa di kubur.”';
const kPagi2 =
    'اَللّٰهُمَّ بِكَ أَصْبَحْنَا ، وَبِكَ أَمْسَيْنَا ، وَبِكَ نَحْيَا ، وَبِكَ نَمُوْتُ ، وَإِلَيْكَ النُّشُوْرُ.';
const kPagi2Terjemah =
    '“Ya Allah, hanya dengan rahmat dan pertolongan-Mu, kami memasuki waktu pagi, dan dengan rahmat dan pertololongan-Mu, kami memasuki sore. Hanya dengan rahmat dan kehendak-Mu, kami hidup, dan dengan rahmat dan kehendak-Mu, kami mati, dan hanya kepada Engkau (kami) kembali.”';
const kPagi3 =
    'أَصْبَحْنَا عَلَى فِطْرَةِ الْإِسْلَامِ ، وَعَلَى كَلِمَةِ الْإِخْلَاصِ ، وَعَلَى دِيْنِ نَبِيِّنَا مُحَمَّدٍ ﷺ ، وَعَلَى مِلَّةِ أَبِيْنَا إِبْرَاهِيْمَ حَنِيْفًا مُسْلِمًا ، وَمَا كَانَ مِنَ الْمُشْرِكِيْنَ.';
const kPagi3Terjemah =
    '“Pada waktu pagi kami berada di atas fitrah Islam, kalimat ikhlas, dan agama Nabi kami Muhammad  SAW., dan agama ayah kami Ibrahim yang hanif (lurus), Muslim, dan dia tidak tergolong orang-orang yang musyrik.”';
const kPagi4 =
    'سُبْحَانَ اللّٰهِ وَبِحَمْدِهِ ، عَدَدَ خَلْقِهِ ، وَرِضَا نَفْسِهِ ، وَزِنَةَ عَرْشِهِ ، وَمِدَادَ كَلِمَاتِهِ.';
const kPagi4Terjemah =
    '“Mahasuci Allah, dan aku memuji-Nya sebanyak bilangan makhluk-Nya, dan Mahasuci Allah sesuai keridhaan-Nya, dan Mahasuci Allah sebanyak tinta (yang menulis) kalimat-Nya.”';
const kPagi5 =
    'اَللّٰهُمَّ إِنِّيْ أَسْأَلُكَ عِلْمًا نَافِعًا ، وَرِزْقًا طَيِّبًا ، وَعَمَلًا مُتَقَبَّلًا.';
const kPagi5Terjemah =
    '“Ya Allah, sesungguhnya aku meminta kepada-Mu ilmu yang bermanfaat, rezeki yang halal, dan amalan yang diterima.”';
const kPagi6 = 'أَسْتَغْفِرُ اللّٰهَ وَأَتُوْبُ إِلَيْهِ.';
const kPagi6Terjemah =
    '“Aku memohon ampunan kepada Allah dan bertaubat kepadanya.”';

const kPagiPetang1 =
    'اَللّٰهُمَّ أَنْتَ رَبِّيْ ، لَا إِلٰهَ إِلَّا أَنْتَ ، خَلَقْتَنِيْ ، وَأَنَا عَبْدُكَ ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَااسْتَطَعْتُ ، أَعُوْذُبِكَ مِنْ شَرِّ مَا صَنَعْتُ ، أَبُوْءُ لَكَ بِنِعْمَتِكَ عَلَيَّ ، وَأَبُوْءُ لَكَ بِذَنْبِيْ ، فَاغْفِرْلِيْ ، فَإِنَّهُ لَا يَغْفِرُ الذُّنُوْبَ إِلَّا أَنْتَ.';
const kPagiPetang1Terjemah =
    '“Ya Allah, Engkau adalah Rabbku, tidak ada Tuhan (yang berhak disembah) kecuali Engkau, Engkaulah yang menciptakanku. Aku adalah hamba-Mu. Aku (yakin) dengan janji-Mu, dan aku akan setia pada perjanjianku kepada-Mu semampuku. Aku berlindung kepada-Mu dari keburukan yang aku lakukan. Aku mengakui nikmat-Mu (yang diberikan) kepadaku, dan aku mengakui dosaku, maka ampunilah aku. Dan sesungguhnya tidak ada yang dapat mengampuni dosa kecuali Engkau.”';
const kPagiPetang2 =
    'اَللّٰهُمَّ عَافِنِيْ فِيْ بَدَنِيْ ، اَللّٰهُمَّ عَافِنِيْ فِيْ سَمْعِيْ ، اَللّٰهُمَّ عَافِنِيْ فِيْ بَصَرِيْ ، لَاإِلٰهَ إِلَّا أَنْتَ ، اَللّٰهُمَّ إِنِّيْ أَعُوْذُ بِكَ مِنَ الْكُفْرِ وَالْفَقْرِ ، اَللّٰهُمَّ إِنِّيْ أَعُوْذُ بِكَ مِنْ عَذَابِ الْقَبْرِ ، لَا إِلٰهَ إِلَّا أَنْتَ.';
const kPagiPetang2Terjemah =
    '“Ya Allah, selamatkanlah tubuhku ini (dari penyakit dan dari apa yang tidak diinginkan). Ya Allah, selamatkanlah pendengaranku (dari penyakit dan maksiat atau dari apa yang tidak diinginkan). Ya Allah selamatkanlah penglihatanku, tiada Tuhan (yang berhak disembah) kecuali Engkau. Ya Allah, sesungguhnya aku berlindung kepada-Mu dari kekufuran dan kefakiran. Ya Allah, aku berlindung kepada-Mu dari siksa kubur, tiada Tuhan (yang berhak disembah) kecuali Engkau.”';
const kPagiPetang3 =
    'اَللّٰهُمَّ إِنِّيْ أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي الدُّنْيَا وَالْآخِرَةِ ، اَللّٰهُمَّ إِنِّيْ أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِيْ دِيْنِيْ ، وَدُنْيَايَ ، وَأَهْلِيْ ، وَمَالِيْ ، اَللّٰهُمَّ اسْتُرْ عَوْرَاتِيْ ، وَآمِنْ رَوْعَاتِيْ ، اَللّٰهُمَّ احْفَظْنِيْ مِنْ بَيْنِ يَدَيَّ ، وَمِنْ خَلْفِيْ ، وَعَنْ يَمِيْنِيْ ، وَعَنْ شِمَالِيْ ، وَمِنْ فَوْقِيْ ، وَأَعُوْذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِيْ.';
const kPagiPetang3Terjemah =
    '“Ya Allah, sungguh aku memohon ampunan dan keselamatan di dunia dan akhirat. Ya Allah, sungguh aku mohon ampunan dan keselamatan dalam agamaku, dunia, keluargaku, dan hartaku. Ya Allah, tutupilah auratku (aib atau sesuatu yang tidak layak dilihat orang lain) dan tenteramkanlah aku dari rasa takut. Ya Allah, peliharalah aku dari depan, belakang, kanan, kiri, dan dari atasku. Aku berlindung dengan kebesaran-Mu, agar aku tidak disambar dari bawahku (aku berlindung dari dibenamkan ke dalam bumi).”';
const kPagiPetang4 =
    'اَللّٰهُمَّ عَالِمَ الْغَيْبِ وَالشَّهَادَةِ ، فَاطِرَ السَّمٰوَاتِ وَالْأَرْضِ ، رَبَّ كُلِّ شَيْءٍ وَمَلِيْكَهُ ، أَشْهَدُ أَنْ لَا إِلٰهَ إِلَّا أَنْتَ ، أَعُوْذُ بِكَ مِنْ شَرِّ نَفْسِيْ ، وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ ، وَأَنْ أَقْتَرِفَ عَلَى نَفْسِيْ سُوْءًا ، أَوْ أَجُرَّهُ إِلَى مُسْلِمٍ.';
const kPagiPetang4Terjemah =
    '“Ya Allah Yang Maha Mengetahui sesuatu yang ghaib dan yang nyata, wahai Rabb pencipta langit dan bumi, Rabb segala sesuatu dan yang merajainya. Aku bersaksi bahwa tidak ada Tuhan (yang berhak disembah) keciali Engkau. Aku berlindung kepada-Mu dari kejahatan diriku, kejahatan syaitan dan sekutunya, dan (aku berlindung kepada-Mu) dari berbuat keburukan atas diriku atau mendorong seorang muslim padanya (berbuat keburukan).”';
const kPagiPetang5 =
    'بِسْمِ اللّٰهِ الَّذِيْ لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِى الْأَرْضِ وَلَا فِي السَّمَاءِ ، وَهُوَ السَّمِيْعُ الْعَلِيْمُ.';
const kPagiPetang5Terjemah =
    '“Dengan menyebut nama Allah yang dengan nama-Nya tidak ada sesuatu pun yang dapat membahayakan, baik yang di bumi maupun yang di langit. Dialah Yang Maha Mendengar dan Yang Maha Mengetahui.”';
const kPagiPetang6 =
    'رَضِيْتُ بِاللّٰهِ رَبًّا ، وَبِالْإِسْلَامِ دِيْنًا ، وَبِمُحَمَّدٍ ﷺ نَبِيًّا.';
const kPagiPetang6Terjemah =
    '“Aku ridha (rela) Allah adalah Rabbku, Islam agamaku, dan Muhammad SAW nabiku.”';
const kPagiPetang7 =
    'يَا حَيُّ يَا قَيُّوْمُ ، بِرَحْمَتِكَ أَسْتَغِيْثُ ، أَصْلِحْ لِيْ شَأْنِيْ كُلَّهُ ، وَلَا تَكِلْنِيْ إِلَى نَفْسِيْ طَرْفَةَ عَيْنٍ.';
const kPagiPetang7Terjemah =
    '“Wahai (Rabb) Yang Maha Hidup, Yang Maha Berdiri Sendiri, dengan rahmat-Mu aku meminta pertolongan. Perbaikilah segala keadaan dan urusanku, jangan Engkau serahkan aku pada diriku meski sekejap mata sekalipun.”';
const kPagiPetang8 =
    'لَا إِلٰهَ إِلَّا اللّٰهُ وَحْدَهُ لَا شَرِيْكَ لَهُ ، لَهُ الْمُلْكُ ، وَلَهُ الْحَمْدُ ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرٌ.';
const kPagiPetang8Terjemah =
    '“Tidak ada Tuhan (yang berhak disembah) kecuali Allah Yang Maha Esa, tidak ada sekutu bagi-Nya. Bagi-Nya kerajaan dan bagi-Nya segala pujian. Dan dia Maha Kuasa atas segala sesuatu.”';
const kPagiPetang9 = 'سُبْحَانَ اللّٰهِ وَبِحَمْدِهِ.';
const kPagiPetang9Terjemah = '“Mahasuci Allah, dan aku memuji-Nya.”';

const kPetang1 =
    'أَمْسَيْنَا وَأَمْسَى الْمُلْكُ لِلّٰهِ ، وَالْحَمْدُ لِلّٰهِ ، لَا إِلٰهَ إِلَّا اللّٰهُ وَحْدَهُ لَا شَرِيْكَ لَهُ ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرٌ ، رَبِّ أَسْأَلُكَ خَيْرَ مَا فِيْ هٰذِهِ الَّيْلَةِ ، وَخَيْرَ مَا بَعْدَهَا ، وَأَعُوْذُ بِكَ مِنْ شَرِّ مَا فِيْ هٰذِهِ الَّيْلَةِ ، وَشَرِّ مَا بَعْدَهَا ، رَبِّ أَعُوْذُ بِكَ مِنَ الْكَسَلِ ، وَسُوْءِ الْكِبَرِ ، رَبِّ أَعُوْذُ بِكَ مِنْ عَذَابٍ فِي النَّارِ وَعَذَابٍ فِي الْقَبْرِ.';
const kPetang1Terjemah =
    '“kami telah memasuki waktu sore dan kerajaan hanya milik Allah, segala puji hanya milik Allah. Tidak ada Tuhan (yang berhak disembah) kecuali Allah Yang Maha Esa, yang tidak ada sekutu bagi-Nya. Bagi-Nya kerjaan dan bagi-Nya pujian. Dialah yang Mahakuasa atas segala sesuatu. Wahai Tuhanku, sungguh aku berlindung kepada-Mu dari kemalasan dan keburukan di hari tua. Wahai Tuhanku, aku berlindung kepada-Mu dari siksa di neraka dan siksa di kubur.”';
const kPetang2 =
    'اَللّٰهُمَّ بِكَ أَمْسَيْنَا ، وَبِكَ أَصْبَحْنَا ، وَبِكَ نَحْيَا ، وَبِكَ نَمُوْتُ ، وَإِلَيْكَ الْمَصِيْرُ.';
const kPetang2Terjemah =
    '“Ya Allah, hanya dengan rahmat dan pertolongan-Mu, kami memasuki waktu sore, dan dengan rahmat dan pertololongan-Mu, kami memasuki pagi. Hanya dengan rahmat dan kehendak-Mu, kami hidup, dan dengan rahmat dan kehendak-Mu, kami mati, dan hanya kepada Engkau (kami) kembali.”';
const kPetang3 =
    'أَمْسَيْنَا عَلَى فِطْرَةِ الْإِسْلَامِ ، وَعَلَى كَلِمَةِ الْإِخْلَاصِ ، وَعَلَى دِيْنِ نَبِيِّنَا مُحَمَّدٍ ﷺ ، وَعَلَى مِلَّةِ أَبِيْنَا إِبْرَاهِيْمَ حَنِيْفًا مُسْلِمًا ، وَمَا كَانَ مِنَ الْمُشْرِكِيْنَ.';
const kPetang3Terjemah =
    '“Pada waktu sore kami berada di atas fitrah Islam, kalimat ikhlas, dan agama Nabi kami Muhammad  SAW., dan agama ayah kami Ibrahim yang hanif (lurus), Muslim, dan dia tidak tergolong orang-orang yang musyrik.”';
const kPetang4 =
    'أَعُوْذُ بِكَلِمَاتِ اللّٰهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ.';
const kpetang4Terjemah =
    '“Aku berlindung denga kalimat-kalimat Allah yang sempurna dari kejahatan sesuatu yang diciptakan-Nya.”';

const kSholat1 = 'أَسْتَغْفِرُاللّٰهَ.';
const kSholat1Terjemah = '“Aku memohon ampun kepada Allah.”';
const kSholat2 =
    'اَللّٰهُمَّ أَنْتَ السَّلَامُ ، وَمِنْكَ السَّلَامُ ، تَبَارَكْتَ ، يَاذَا الْجَلَالِ وَالْاِكْرَامِ.';
const kSholat2Terjemah =
    '“Ya Allah, Engkau Mahasejahtera, dan hanya dari-Mu kesejahteraan. Mahasuci Engkau, wahai Rabb pemilik keagungan dan kemuliaan.”';
const kSholat3 =
    'لَا إِلٰهَ إِلَّا اللّٰهُ وَحْدَهُ لَا شَرِيْكَ لَهُ ، لَهُ الْمُلْكُ ، وَلَهُ الْحَمْدُ ، وَهُوَ عَلَىٰ كُلِّ شَيْءٍ قَدِيْرٌ ، اَللّٰهُمَّ لَا مَانِعَ لِمَا أَعْطَيْتَ ، وَلَا مُعْطِيَ لِمَا مَنَعْتَ ، وَلَا يَنْفَعُ ذَا الْجَدِّ مِنْكَ الْجَدُّ.';
const kSholat3Terjemah =
    '“Tidak ada Tuhan (yang berhak disembah) kecuali Allah Ynag Maha Esa, tidak ada sekutu bagi-Nya. Bagi-Nya segala kerajaan dan bagi-Nya segala pujian. Dialah Yang Mahakuasa atas segala sesuatu. Ya Allah, tidak ada yang dapat mencegah apa yang Engkau beri dan tidak ada yang dapat memberi apa yang Engkau cegah. Tidak berguna kekayaan dan kemuliaan tersebut bagi pemiliknya dari siksa-Mu.”';
const kSholat4 =
    'لَا إِلٰهَ إلَّا اللّٰهُ وَحْدَهُ لَا شَرِيْكَ لَهُ ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَىٰ كُلِّ شَيْءٍ قَدِيْرٌ ، لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللّٰهِ ، لَا إِلٰهَ إِلَّا اللّٰهُ ، وَلَا نَعْبُدُ إِلَّا إِيَّاهُ ، لَهُ النِّعْمَةُ وَلَهُ الْفَضْلُ وَلَهُ الثَّنَاءُ الْحَسَنُ ، لَا إِلٰهَ إِلَّا اللّٰهُ مُخْلِصِيْنَ لَهُ الدِّيْنَ وَلَوْ كَرِهَ الْكَافِرُوْنَ.';
const kSholat4Terjemah =
    '“Tidak ada Tuhan (yang berhak disembah) kecuali Allah Yang Maha Esa, tidak ada sekutu bagi-Nya. Bagi-Nya segala kerajaan dan bagi-Nya segala pujian. Dialah Yang Mahakuasa atas segala sesuatu. Tidak ada daya dan kekuatan kecuali (dengan pertolongan) Allah. Tiada Tuhan (yang berhak disembah) kecuali Allah. Kami tidak beribadah kecuali kepada-Nya. Hanya bagi-Nya nikmat, anugerah, dan pujian yang baik. Tidak ada Tuhan (yang berhak disembah) kecuali Allah, dengan memurnikan ibadah hanya kepada-Nya, meskipun orang-orang kafir tidak menyukainya.”';
const kSholat5 =
    'لَا إِلٰهَ إِلَّا اللّٰهُ وَحْدَهُ لَا شَرِيْكَ لَهُ ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ يُحْيِيْ وَيُمِيْتُ ، وَهُوَ عَلَىٰ كُلِّ شَيْءٍ قَدِيْرٌ.';
const kSholat5Terjemah =
    '“Tidak ada Tuhan (yang berhak disembah) kecuali Allah Yang Maha Esa, tidak ada sekutu bagi-Nya. Bagi-Nya kerajaan dan bagi-Nya segala pujian. Dialah yang menghidupkan dan yang mematikan. Dialah Yang Mahakuasa atas segala sesuatu.”';
const kSholat6 =
    'اَللّٰهُمَّ أَعِنِّيْ عَلَىٰ ذِكْرِكَ ، وَشُكْرِكَ ، وَحُسْنِ عِبَادَتِكَ.';
const kSholat6Terjemah =
    '“Ya Allah, tolonglah aku untuk berdzikir kepada-Mu, bersyukur kepada-Mu, serta beribadah dengan baik kepada-Mu.”';
const kSholat7 = 'سُبْحَانَ اللّٰهِ.';
const kSholat7Terjemah = '“Mahasuci Allah.”';
const kSholat8 = 'اَلْحَمْدُ لِلّٰهِ.';
const kSholat8Terjemah = '“Segala puji bagi Allah.”';
const kSholat9 = 'اَللّٰهُ أَكْبَرُ.';
const ksholat9Terjemah = '“Allah Mahabesar.”';
const kSholat10 =
    'لَا إِلٰهَ إِلَّا اللّٰهُ وَحْدَهُ لَا شَرِيْكَ لَهُ ، لَهُ الْمُلْكُ ، وَلَهُ الْحَمْدُ ، وَهُوَ عَلَىٰ كُلِّ شَيْءٍ قَدِيْرٌ.';
const kSholat10Terjemah =
    '“Tidak ada Tuhan (yang berhak disembah) kecuali Allah Yang Maha Esa, tiada sekutu bagi-Nya. Bagi-Nya kerajaan dan bagi-Nya pujian. Dialah Yang Mahakuasa atas segala sesuatu.”';
const kSholat11 =
    'اَللّٰهُمَّ إِنِّيْ أَسْأَلُكَ عِلْمًا نَافِعًا ، وَرِزْقًا طَيِّبًا ، وَعَمَلًا مُتَقَبَّلًا.';
const kSholat11Terjemah =
    '“Ya Allah, sesungguhnya aku memohon kepada-Mu ilmu yang bermanfaat, rezeki yang halal, dan amal yang diterima.”';
const kDoa1 =
    'لَا إِلٰهَ إِلَّا اللّٰهُ الْعَلِيْمُ الْحَلِيْمُ ، لَا إِلٰهَ إِلَّا اللّٰهُ رَبُّ الْعَرْشِ الْعَظِيْمِ ، لَا إِلٰهَ إِلَّا اللّٰهُ رَبُّ السَّمٰوَاتِ وَرَبُّ الْأَرْضِ وَرَبُّ الْعَرْشِ الْكَرِيْمِ.';

const kHadits1 =
    'عَنْ عَمِيْرِ الْمُؤْمِنِيْنَ أَبِيْ حَفْصٍ عُمَرَ بْنِ الْخَطَّابِ رَضِيَ اللّٰهُ عَنْهُ ، قَالَ: سَمِعْتُ رَسُوْلَ اللّٰهُ ﷺ يَقُوْلُ: إِنَّمَا الْأَعْمَالُ بِالنِّيَّاتِ ، وَإِنَّمَا لِكُلِّ امْرِىٍٔ مَا نَوَى ، فَمَنْ كَانَتْ هِجْرَتُهُ إِلَى اللّٰهِ وَرَسُوْلِهِ ، فَهِجْرَتُهُ إِلَى اللّٰهِ وَرَسُوْلِهِ ، وَمَنْ كَانَتْ هِجْرَتُهُ لِدُنْيَا يُصِيْبُهَا ، أَوِ امْرَأَةٍ يَنْكِحُهَا ، فَهِجْرَتُهُ إِلَى مَا هَاجَرَ إِلَيْهِ .';
const kHadits1Terjemah =
    'Dari Amirul Mu‘minin Abu Hafs ‘Umar bin Al-Khatthab radhiyallaahu ‘anhu, ia berkata, “Aku mendengar Rasulullah shallallaahu ‘alaihi wasallam bersabda, ‘Sesungguhnya setiap amal itu (tergantung) pada niatnya, dan sesungguhnya seseorang itu hanya mendapatkan sesuai dengan apa yang diniatkannya. Barang siapa yang hijrah karena Allah dan Rasul-Nya, maka hijrahnya (dinilai) karena Allah dan Rasul-Nya, dan barang siapa hijrahnya karena harta dunia yang hendak diraihnya atau karena wanita yang hendak dinikahinya, maka hijrahnya itu hanyalah kepada apa yang menjadi tujuan hijrahnya,’” (Diriwayatkan oleh dua Imam Ahli Hadits: Abu ‘Abdillah Muhammad bin Isma’il bin Ibrahim bin Al-Mughirah bin Bardizbah Al-Bukhari, dan Abul Husain bin Al-Hajjaj bin Muslim Al-Qusyairi An-Naisaburi, dalam kitab Shahiih keduanya yang merupakan kitab hadits yang paling shahih)';
const kHadits2 =
    'عَنْ عُمَرَ رَضِيَ اللّٰهُ عَنْهُ أَيْضًا ، قَالَ: بَيْنَمَا نَحْنُ جُلُوْسٌ عِنْدَ رَسُوْلِ اللّٰهِ ﷺ ذَاتَ يَوْمٍ ، إِذْ طَلَعَ عَلَيْنَا رَجُلٌ شَدِيْدُ بَيَاضِ الثِّيَابِ ، شَدِيْدُ سَوَادِ الشَّعْرِ ، لَا يُرَىٰ عَلَيْهِ أَثَرُ السَّفَرِ ، وَلَا يَعْرِفُهُ مِنَّا أَحَدٌ . حَتَّىٰ جَلَسَ إِلَىٰ النَّبِيِّ ﷺ ، فَأَسْنَدَ رُكْبَتَيْهِ إِلَىٰ رُكْبَتَيْهِ ، وَوَضَعَ كَفَّيْهِ عَلَىٰ فَخِذَيْهِ ، وَقَالَ: يَا مُحَمَّدُ! أَخْبِرْنِيْ عَنِ الْإِسْلَامِ . فَقَالَ رَسُوْلُ اللّٰهِ ﷺ : اَلْإِسْلَامُ أَنْ تَشْهَدُ أَنْ لَا إِلٰهَ إِلَّا اللّٰهُ وَأَنَّ مُحَمَّدًا رَسُوْلُ اللّٰهِ ، وَتُقِيْمَ الصَّلَاةَ ، وَتُؤْتِيَ الزَّكَاةَ ، وَتَصُوْمَ رَمَضَانَ ، وَتَحُجَّ الْبَيْتَ إِنِ اسْتَطَعْتَ إِلَيْهِ سَبِيْلًا . قَالَ: صَدَقْتَ . فَعَجِبْنَا لَهُ يَسْأَلُهُ وَيُصَدِّقُهُ! قَالَ: فَأَخْبِرْنِيْ عَنِ الْإِيْمَانِ . قَالَ: أَنْ تُؤْمِنَ بِاللّٰهِ ، وَمَلَاىِٔكَتِهِ ، وَكُتُبِهِ ، وَرُسُلِهِ ، وَالْيَوْمِ الْآخِرِ ، وَتُؤْمِنَ بِالْقَدَرِ خَيْرِهِ وَشَرِّهِ . قَالَ: صَدَقْتَ . قَالَ: فَأَخْبِرْنِيْ عَنِ الْإِحْسَانِ . قَالَ: أَنْ تَعْبُدَ اللّٰهَ كَأَنَّكَ تَرَاهُ ، فَإِنْ لَمْ تَكُنْ تَرَاهُ فَإِنَّهُ يَرَاكَ . فَأَخْبِرْنِيْ عَنِ السَّاعَةِ . قَالَ: مَا الْمَسْؤُوْلُ عَنْهَا بِأَعْلَمَ مِنَ السَّاىِٔلِ . قَالَ: فَأَخْبِرْنِيْ عَنْ أَمَارَاتِهَا . قَالَ: أَنْ تَلِدَ الْأَمَةُ رَبَّتَهَا ، وَأَنْ تَرَى الْحُفَاةَ الْعُرَاةَ الْعَالَةَ رِعَاءَ الشَّاءِ يَتَطَاوَلُوْنَ فِي الْبُنْيَانِ.ثُمَّ انْطَلَقَ . فَلَبِثْتُ مَلِيًّا ، ثُمَّ قَالَ: يَا عُمَرُ! أَتَدْرِي مَنِ السَّاىِٔلُ؟ قُلْتُ: اَللّٰهُ وَرَسُوْلُهُ أَعْلَمُ. قَالَ: فَإِنَّهُ جِبْرِيْلُ ، أَتَاكُمْ يُعَلِّمُكُمْ دِيْنَكُمْ.';
const kHadits2Terjemah =
    'Juga dari ‘Umar radhiyallaahu ‘anhu, ia berkata, “Pada suatu hari ketika kami duduk di dekat Rasulullah shallallaahu ‘alaihi wasallam, tiba-tiba muncul kepada kami seorang laki-laki yang berpakaian sangat putih dan rambutnya sangat hitam, tidak terlihat padanya bekas perjalanan jauh, dan tidak ada seorangpun dari kami yang mengenalnya, hingga ia duduk di hadapan Nabi shallallaahu ‘alaihi wasallam lalu ia menyandarkan lututnya ke lutut Nabi shallallaahu ‘alaihi wasallam dan meletakkan kedua telapak tangannyadi atas kedua paha Nabi. Lalu laki-laki itu berkata, ‘Wahai Muhammad! Beritahukan kepadaku tentang Islam.’ Rasulullah shallallaahu ‘alaihi wasallam menjawab, ‘Islam adalah engkau bersaksi bahwa tidak ada Tuhan (yang berhak disembah) selain Allah dan bahwasanya Muhammad adalah utusan Allah, mendirikan shalat, menunaikan zakat, berpuasa di bulan Ramadhan, dan menunaikan ibadah haji ke Baitullah jika engkau mampu melakukannya.’ Laki-laki itu berkata, ‘Engkau benar.’ Maka kami merasa heran kepadanya, dia yang bertanya dan dia pula yang membenarkan.’ Kemudian dia bertanya lagi, ‘Beritahukan kepadaku tentang iman.’ Nabi menjawab, ‘Iman adalah engkau beriman kepada Allah, malaikat-malaikat-Nya, kitab-kitab-Nya, rasul-rasul-Nya, Hari Akhir, dan engkau beriman kepada takdir yang baik maupun yang buruk.’ Ia berkata, ‘Engkau benar.’ Dia bertanya lagi, ‘Beritahukan kepadaku tentang ihsan.’ Nabi menjawab, ‘Ihsan adalah engkau beribadah kepada Allah seakan-akan engkau melihat-Nya. Meskipun engkau tidak melihat-Nya, sesungguhnya Dia melihatmu.’ Laki-laki itu bertanya lagi, ‘Beritahukan kepadaku kapan terjadinya hari Kiamat.’ Nabi menjawab, ‘Orang yang ditanya tidak lebih tahu dari orang yang bertanya.’ Ia pun bertanya lagi, ‘Beritahukan kepadaku tentang tanda-tandanya.’ Nabi menjawab, ‘Jika seorang budak wanita telah melahirkan tuannya, dan engkau melihat orang yang telanjang kaki, tidak berpakaian, fakir, dan penggembala kambing saling berlomba-lomba mendirikan bangunan yang tinggi.’ ‘Kemudian laki-laki tersebut segera pergi. Lalu aku (‘Umar) diam beberapa lama, sehingga Nabi bertanya kepadaku, ‘Wahai ‘Umar! Apakah engkau tahu, siapa laki-laki yang tadi bertanya?’ Aku menjawab, ‘Allah dan Rasul-Nya yang lebih tahu.’ Beliau bersabda, “Ia adalah Malaikat Jibril, ia dating kepada kalian untuk mengajarkan agama kalian.’” (HR. Muslim)';
const kHadits3 =
    'عَنْ أَبِيْ عَبْدِ الرَّحْمٰنِ عَبْدِ اللّٰهِ بْنِ عُمَرَ بْنِ الْخَطَّابِ رَضِيَ اللّٰهُ عَنْهُمَا قَالَ: سَمِعْتُ رَسُوْلَ اللّٰهِ ﷺ يَقُوْلُ: بُنِيَ الْإِسْلَامَ عَلَىٰ خَمْسٍ: شَهَادَةِ أَنْ لَا إِلٰهَ إِلَّا اللّٰهُ وَأَنَّ مُحَمَّدًا رَسُوْلُ اللّٰهِ ، وَإِقَامِ الصَّلَاةِ ، وَإِيْتَاءِ الزَّكَاةِ ، وَحَجِّ الْبَيْتِ ، وَصَوْمِ رَمَضَانَ.';
const kHadits3Terjemah =
    'Dari Abu ‘Abdirrahman ‘Abdullah bin ‘Umar bin Al-Khatthab radhiyallaahu ‘anhuma, ia berkata, “Aku mendengar Rasulullah shallallaahu ‘alaihi wasallam bersabda, ‘Islam dibangun di atas lima pondasi: (1) Persaksian bahwa tidak ada Tuhan (yang berhak disembah) kecuali Allah dan bahwasanya Muhammad adalah utusan Allah, (2) mendirikan shalat, (3) menunaikan zakat, (4) haji ke Baitullah, dan (5) berpuasa di Bulan Ramadhan.’” (HR. Al-Bukhari dan Muslim)';
const kHadits4 =
    'عَنْ أَبِيْ عَبْدِ الرَّحْمٰنِ عَبْدِ اللّٰهِ بْنِ مَسْعُوْدٍ رَضِيَ اللّٰهُ عَنْهُ قَالَ: حَدَّثَنَا رَسُوْلُ اللّٰهِ ﷺ وَهُوَ الصَّادِقُ الْمَصْدُوْقُ: إِنَّ أَحَدَكُمْ يُجْمَعُ خَلْقُهُ فِيْ بَطْنِ أُمِّهِ أَرْبَعِيْنَ يَوْمًا نُطْفَةً ، ثُمَّ يَكُوْنُ عَلَقَةً مِثْلَ ذٰلِكَ ، ثُمَّ يَكُوْنُ مُضْغَةً مِثْلَ ذٰلِكَ ، ثُمَّ يُرْسَلُ إِلَيْهِ الْمَلَكُ ، فَيَنْفُخُ فَيْهِ الرُّوْحَ ، وَيُؤْمَرُ بِأَرْبَعِ كَلِمَاتٍ: بِكَتْبِ رِزْقِهِ ، وَأَجَلِهِ ، وَعَمَلِهِ ، وَشَقِيٌّ أَوْ سَعِيْدٌ. فَوَ اللّٰهِ الَّذِيْ لَا إِلٰهَ غَيْرُهُ ، إِنَّ أَحَدَكُمْ لَيَعْمَلُ بِعَمَلِ أَهْلِ الْجَنَّةِ ، حَتَّىٰ مَا يَكُوْنُ بَيْنَهُ وَبَيْنَهَا إِلَّا ذِرَاعٌ ، فَيَسْبِقُ عَلَيْهِ الْكِتَابُ فَيَعْمَلُ بِعَمَلِ أَهْلِ النَّارِ فَيَدْخُلُهَا ، وَإِنَّ أَحَدَكُمْ لَيَعْمَلُ بِعَمَلِ أَهْلِ النَّارِ ، حَتَّىٰ مَا يَكُوْنُ بَيْنَهُ وَبَيْنَهَا إِلَّا ذِرَاعٌ ، فَيَسْبِقُ عَلَيْهِ الْكِتَابُ فَيَعْمَلُ بِعَمَلِ أَهْلِ الْجَنَّةِ فَيَدْخُلُهَا.';
const kHadits4Terjemah =
    'Dari Abu ‘Abdirrahman ‘Abdullah bin Mas’ud radhiyallaahu ‘anhu, ia berkata, “Rasulullah shallallaahu ‘alaihi wasallam telah menuturkan kepada kami dan beliau adalah orang yang benar lagi dibenarkan, ‘Sesungguhnya seorang di antara kalian dikumpulkan penciptannya dalam perut ibunya selama 40 hari berupa air mani, kemudian menjadi segumpal darah (‘alaqah) selama itu (40 hari), kemudian menjadi segumpal daging (mudhghah) selama itu pula. Kemudian diutuslah kepadanya seorang malaikat, lalu meniupkan ruh ke dalamnya dan diperintahkan untuk menuliskan empat hal: menulis rizkinya, ajalnya, amalnya, dan ia sebagai orang celaka atau Bahagia. Demi Allah yang tidak ada Tuhan (yang berhak disembah) selain Dia, sungguh salah seorang di antara kalian beramal dengan amalan ahli surga, hingga jarak antara dia dengan surga hanya tinggal satu hasta lagi, tetapi catatan (takdir) telah mendahuluinya, lalu ia pun beramal dengan amalan ahli neraka, kemudian ia pun memasukinya. Dan sungguh salah seorang di antara kalian beramal dengan amalan ahli neraka, hingga jarak antara dia dan neraka hanya tinggal satu hasta lagi, tetapi catatan (takdir) telah mendahuluinya, lalu ia pun beramal dengan amalan ahli surga, kemudian ia pun memasukinya.” (HR. Al-Bukhari dan Muslim)';
const kHadits5 =
    'عَنْ أُمِّ الْمُؤْمِنِيْنَ أُمِّ عَبْدِ اللّٰهِ عَا ىِٔشَةَ رَضِيَ اللّٰه عَنْهَا قَالَتْ: قَالَ رَسُوْلُ اللّٰهِ ﷺ: مَنْ أَحْدَثَ فِيْ أَمْرِنَا هٰذَا مَا لَيْسَ مِنْهُ فَهُوَ رَدٌّ.';
const kHadits5Terjemah =
    'Dari Ummul Mu’minin, Ummu ‘Abdillah ‘Aisyah radhiyallaahu ‘anha, ia berkata, “Rasulullah shallallaahu ‘alaihi wasallam bersabda, ‘Barang siapa yang mengada-adakan perkara baru dalam urusan (agama) kami ini, yang bukan berasal darinya, maka amalan tersebut tertolak.’” (HR. Al-Bukhari dan Muslim)';
const kHadits6 =
    'عَنْ أَبِيْ عَبْدِ اللّٰهِ النُّعْمَانِ بْنِ بَشِيْرٍ رَضِيَ اللّٰهُ عَنْهُمَا قَالَ: سَمِعْتُ رَسُوْلَ اللّٰهِ ﷺ يَقُوْلُ: إِنَّ الْحَلَالَ بَيِّنٌ ، وَإِنَّ الْحَرَامَ بَيِّنٌ ، وَبَيْنَهُمَا أُمُوْرٌ مُشْتَبِهَاتٌ ، لَا يَعْلَمُهُنَّ كَثِيْرٌ مِنَ النَّاسِ ، فَمَنِ التَّقَى الشُّبُهَاتِ فَقَدِ اسْتَبْرَأَ لِدِيْنِهِ وَعِرْضِهِ ، وَمَنْ وَقَعَ فِى الشُّبُهَاتِ وَقَعَ فِى لْحَرَامِ ، كَالرَّاعِيْ يَرْعَىٰ حَوْلَ الْحِمَىٰ يُوْشِكُ أَنْ يَرْتَعَ فِيْهِ. أَلَا وَإِنَّ لِكُلِّ مَلِكٍ حِمًى ، أَلَا وَإِنَّ حِمَى اللّٰهِ مَحَارِمُهُ ، أَلَا وَإِنَّ فِى الْجَسَدِ مُضْغَةً ، إِذَا صَلَحَتْ صَلَحَ الْجَسَدَ كُلُّهُ ، وَإِذَا فَسَدَتْ فَسَدَ الْجَسَدُ كُلُّهُ ، أَلَا وَهِيَ الْقَلْبُ.';
const kHadits6Terjemah =
    'Dari Abu ‘Abdillah An-Nu’man bin Basyir radhiyallaahu ‘anhuma, dia berkata, “Aku mendengar Rasulullah shallallaahu ‘alaihi wasallam bersabda, ‘Sesungguhnya yang halal itu jelas dan yang haram itu jelas, dan diantara keduanya ada perkara-perkara yang syubhat (samar), yang tidak diketahui (hukumnya) oleh kebanyakan manusia. Barang siapa menjauhi perkara syubhat, maka ia telah membersihkan agama dan kehormatannya. Dan barang siapa terjerumus kepada perkara syubhat, maka sungguh ia telah terjatuh kepada perkara yang haram, seperti penggembala yang menggembala di sekitar tanah larangan, dikhawatirkan ia akan masuk ke dalamnya. Ketahuilah! Bahwa setiap raja itu mempunyai tanah larangan (undang-undang). Ketahuilah! Bahwa larangan Allah adalah hal-hal yang diharamkan-Nya. Ketahuilah! Bahwa di dalam tubuh manusia terdapat segumpal daging; apabila ia baik, maka baik pula seluruh tubuhnya, dan apabila ia rusak, maka rusak pula seluruh tubuhnya. Ketahuilah! Bahwa segumpal daging itu adalah hati.” (HR. Al-Bukhari dan Muslim)';
const kHadits7 =
    'عَنْ أَبِيْ رُقَيَّةَ تَمِيْمِ بْنِ أَوْسٍ الدَّرِيِّ رَضِيَ اللّٰهُ عَنْهُ ، أَنَّ النَّبِيَّ ﷺ قَالَ: اَلدِّيْنُ النَّصِيْحَةُ ، قُلْنَا: لِمَنْ؟ قَالَ: لِلّٰهِ ، وَلِكِتَابِهِ ، وَلِرُسُوْلِهِ ، وَلِأَىِٔمَّةِ الْمُسْلِمِيْنَ ، وَعَامَّتِهِمْ.';
const kHadits7Terjemah =
    'Dari Abu Ruqayyah Tamin bin Aus Ad-Daari radhiyallaahu ‘anhu, bahwa Nabi shallallaahu ‘alaihi wasallam bersabda, “Agama itu adalah nasihat.” Kami (para sahabat) bertanya, “Untuk siapa?” Beliau menjawab, “Untuk Allah, Kitab-Nya, Rasul-Nya, para pemimpin kaum muslimin, dan bagi kaum muslimin pada umumnya.” (HR. Muslim)';
const kHadits8 =
    'عَنِ بْنِ عُمَرَ رَضِيَ اللّٰهُ عَنْهُمَا ، أَنَّ رَسُوْلَ اللّٰهِ ﷺ قَالَ: أُمِرْتُ أَنْ أُقَاتِلَ النَّاسَ حَتَّىٰ يَشْهَدُوْا أَنْ لَا إِلٰهَ إِلَّا اللّٰهُ وَأَنَّ مُحَمَّدًا رَسُوْلُ اللّٰهِ ، وَيُقِيْمُوا الصَّلَاةَ ، وَيُؤْتُوا الزَّكَاةَ ، فَإِذَا فَعَلُوْا ذٰلِكَ عَصَمُوْا مِنِّيْ دِمَاءَهُمْ وَأَمْوَالَهُمْ إِلَّا بِحَقِّ الْإِسْلَامِ ، وَحِسَابُهُمْ عَلَى اللّٰهِ تَعَالَىٰ.';
const kHadits8Terjemah =
    'Dari Ibnu ‘Umar radhiyallaahu ‘anhuma, bahwa Rasulullah shallallaahu ‘alaihi wasallam bersabda, “Aku diperintahkan untuk memerangi manusia hingga mereka bersaksi bahwa tidak ada Tuhan (yang berhak disembah) selain Allah, dan bahwa Muhammad adalah utusan Allah, mendirikan shalat, dan menunaikan zakat. Jika mereka telah melakukan hal itu, maka darah dan harta mereka terlindungi dariku, kecuali dengan hak Islam, sedangkan hisab (perhitungan) mereka diserahkan kepada Allah Ta’ala.” (HR. Al-Bukhari dan Muslim)';
const kHadits9 =
    'عَنْ أَبِيْ هُرَيْرَةَ عَبْدِ الرَّحْمٰنِ بْنِ صَخْرٍ رَضِيَ اللّٰهُ عَنْهُ قَالَ: سَمِعْتُ رَسُوْلَ اللّٰهِ ﷺ يَقُوْلُ: مَا نَهَيْتُكُمْ عَنْهُ فَاجْتَنِبُوْهُ ، وَمَا أَمَرْتُكُمْ بِهِ فَأْتُوْا مِنْهُ مَا اسْتَطَعْتُمْ ، فَإِنَّمَا أَهْلَكَ الَّذِيْنَ مِنْ قَبْلِكُمْ كَثْرَةُ مَسَا ىِٔلِهِمْ وَاخْتِلَافُهُمْ عَلَىٰ أَنْبِيَاىِٔهِمْ.';
const kHadits9Terjemah =
    'Dari Abu Hurairah ‘Abdurrahman bin Shakhr radhiyallaahu ‘anhu, ia berkata, “Aku mendengar Rasulullah shallallaahu ‘alaihi wasallam bersabda, ‘Apa yang aku larang kalian darinya maka jauhilah, dan apa yang aku perintahkan kalian dengannya maka kerjakanlah semampu kalian. Karena sesungguhnya yang membinasakan orang-orang sebelum kalian adalah karena mereka banyak bertanya dan menyelisihi para Nabi mereka.’” (HR. Al-Bukhari dan Muslim)';
const kHadits10 =
    'عَنْ أَبِيْ هُرَيْرَةَ رَضِيَ اللّٰهُ عَنْهُ قَالَ: قَالَ رَسُوْلُ اللّٰهِ ﷺ : إِنَّ اللّٰهَ تَعَالَىٰ طَيِّبٌ لَا يَقْبَلُ إِلَّا طَيِّبًا ، وَإِنَّ اللّٰهَ أَمَرَ الْمُؤْمِنِيْنَ بِمَا أَمَرَ بِهِ الْمُرْسَلِيْنَ ، فَقَالَ تَعَالَىٰ:   ۝ يٰٓأَيُّهَا الرُّسُلُ كُلُوْا مِنَ الطَّيِّبٰتِ وَٱعْمَلُواْ صَىٰلِحًاۖ ..٥١  ۝ وَقَالَ تَعَالَىٰ: ۝ يٰٓأَيُّهَا الَّذِيْنَ ءَامَنُوْا كُلُوْا مِنْ طَيِّبٰتِ مَا رَزَقْنٰكُمْ... ١٧٢ ۝ ثُمَّ ذَكَرَ الرَّجُلَ يُطِيْلُ السَّفَرَ ، أَشْعَثَ أَغْبَرَ يَمُدُّ يَدَيْهِ إِلَى السَّمَاءِ: يَا رَبِّ ، يَا رَبِّ ، وَمَطْعَمُهُ حَرَامٌ ، وَمَشْرَبُهُ حَرَامٌ ، وَمَلْبَسُهُ حَرَامٌ ، وَغُذِيَ بِالْحَرَامِ ، فَأَنَّىٰ يُسْتَجَابُ لَهُ.';
const kHadits10Terjemah =
    'Dari Abu Hurairah radhiyallaahu ‘anhu, ia berkata, “Rasulullah shallallaahu ‘alaihi wasallam bersabda, ‘Sesungguhnya Allah Ta’ala itu baik, tidak menerima kecuali yang baik. Dan sesungguhnya Allah memerintahkan kepada kamu mu’minin seperti apa yang diperintahkan kepada para Rasul. Allah Ta’ala berfirman, ‘Wahai para Rasul! Makanlah dari (makanan) yang baik-baik, dan kerjakanlah amal shalih…’(QS. Al-Mu’minuun: 51). Dan Allah Ta’ala berfirman, ‘Wahai orang-orang yang beriman! Makanlah dari rizki yang baik yang Kami berikan kepadamu…’ (QS. Al-Baqarah: 172) Kemudia Rasulullah menyebutkan seseorang yang lama bepergian; rambutnya kusut, berdebu, dan mengangkat kedua tangannya ke langit, ‘Ya Rabb! Ya Rabb!’ padahal makanannya haram, minumannya haram, pakaiannya haram, dan ia kenyang dengan yang haram, maka bagaimana do’anya akan dikabulkan?’” (HR. Muslim)';
const kHadits11 =
    'عَنْ أَبِيْ مُحَمَّدٍ الْحَسَنِ بْنِ عَلِيِّ بْنِ أَبِيْ طَالِبٍ سِبْطِ رَسُوْلِ اللّٰهِ ﷺ وَرَيْحَانَتِهِ رَضِيَ اللّٰهُ عَنْهُمَا قَالَ: حَفِظْتُ مِنْ رَسُوْلِ اللّٰهِ ﷺ : دَعْ مَا يَرِيْبُكَ إِلَىٰ مَا لَا يَرِيْبُكَ.';
const kHadits11Terjemah =
    'Dari Abu Muhammad Al-Hasan bin ‘Ali bin Abi Thalib, cucu Rasulullah shallallaahu ‘alaihi wasallam dan kesayangannya radhiyallaahu ‘anhuma, ia berkata, “Aku hafal (hadits) dari Rasulullah shallallaahu ‘alaihi wasallam, ‘Tinggalkanlah apa yang meragukanmu kepada apa yang tidak meragukanmu.’” (HR. At-Tirmidzi dan An-Nasai. At-Tirmidzi berkata, “Hadits ini hasan shahih.”)';
const kHadits12 =
    'عَنْ أَبِيْ هُرَيْرَةَ رَضِيَ اللّٰهُ عَنْهُ قَالَ: قَالَ رَسُوْلُ اللّٰهِ ﷺ : مِنْ حُسْنِ إِسْلَامِ الْمَرْءِ تَرْكُهُ مَا لَا يَعْنِيْهِ.';
const kHadits12Terjemah =
    'Dari Abu Hurairah radhiyallaahu ‘anhu, ia berkata, “Rasulullah shallallaahu ‘alaihi wasallam bersabda, ‘Di antara (tanda) baiknya Islam seseorang ialah meninggalkan apa yang tidak bermanfaat baginya.’” (Hadits hasan diriwayatkan At-Tirmidzi dan selainnya)';
const kHadits13 =
    'عَنْ أَبِيْ حَمْزَةَ أَنَسِ بْنِ مَالِكٍ رَضِيَ اللّٰهُ عَنْهُ خَادِمِ رَسُوْلِ اللّٰهِ ﷺ ، عَنِ النَّبِيِّ  ﷺ قَالَ: لَا يُؤْمِنُ أَحَدُكُمْ حَتَّىٰ يُحِبَّ لِأَخِيْهِ مَا يُحِبُّ لِنَفْسِهِ.';
const kHadits13Terjemah =
    'Dari Abu Hamzah Anas bin Malik radhiyallaahu ‘anhu, pelayan Rasulullah shallallaahu ‘alaihi wasallam, dari Nabi shallallaahu ‘alaihi wasallam, beliau bersabda, “Tidak sempurna iman salah seorang di antara kalian hingga dia mencintai untuk saudaranya apa yang dia cintai untuk dirinya sendiri.” (HR. Al-Bukhari dan Muslim)';
const kHadits14 =
    'عَنِ ابْنِ مَسْعُوْدٍ رَضِيَ اللّٰهُ عَنْهُ قَالَ: قَالَ رَسُوْلُ اللّٰهِ ﷺ : لَا يَحِلُّ دَمُ امْرِئٍ مُسْلِمٍ إِلَّا بِإِحْدَى ثَلَاثٍ: اَلثَّيِّبُ الزَّانِيْ ، وَالنَّفْسُ بِالنَّفْسِ ، والتَّارِكُ لِدِيْنِهِ الْمُفَارِقُ لِلْجَمَاعَةِ.';
const kHadits14Terjemah =
    'Dari Ibnu Mas’ud radhiyallaahu ‘anhu, ia berkata, Rasulullah shallallaahu ‘alaihi wasallam bersabda, ‘Tidak halal darah seorang muslim kecuali karena salah satu dari tiga sebab: (1) Orang yang telah menikah yang berzina, (2) jiwa dengan jiwa (membunuh), (3) dan orang yang meninggalkan agamanya (murtad), lagi memisahkan diri dari jama’ah kamu muslimin.” (HR. Al-Bukhari dan Muslim)';
const kHadits15 =
    'عَنْ أَبِيْ هُرَيْرَةَ رَضِيَ اللّٰهُ عَنْهُ ، أَنَّ رَسُوْلَ اللّٰهِ ﷺ قَالَ: مَنْ كَانَ يُؤْمِنُ بِاللّٰهِ وَالْيَوْمِ الْآخِرِ فَلْيَقُلْ خَيْرًا أَوْ لِيَصْمُتْ ، وَمَنْ كَانَ يُؤْمِنُ بِاللّٰهِ وَالْيَوْمِ الْآخِرِ فَلْيُكْرِمْ جَارَهُ ، وَ مَنْ كَانَ يُؤْمِنُ بِاللّٰهِ وَالْيَوْمِ الْآخِرِ فَلْيُكْرِمْ ضَيْفَهُ.';
const kHadits15Terjemah =
    'Dari Abu Hurairah radhiyallaahu ‘anhu, dari Rasulullah shallallaahu ‘alaihi wasallam, beliau bersabda, “Barang siapa yang beriman kepada Allah dan Hari Akhir, hendaklah berkata yang baik atau diam. Barang siapa beriman kepada Allah dan Hari Akhir, hendaklah dia memuliakan tetangganya. Dan barang siapa yang beriman kepada Allah dan hari Akhir, hendaklah dia memuliakan tamunya.” (HR. Al-Bukhari dan Muslim)';
const kHadits16 =
    'عَنْ أَبِيْ هُرَيْرَةَ رَضِيَ اللّٰهُ عَنْهُ ، أَنَّ رَجُلًا قَالَ لِلنَّبِيِّ ﷺ : أَوْصِنِيْ ، قَالَ: لَا تَغْضَبْ. فَرَدَّدَ مِرَارًا ، قَالَ: لَا تَغْضَبْ.';
const kHadits16Terjemah =
    'Dari Abu Hurairah radhiyallaahu ‘anhu bahwa seseorang (laki-laki) berkata kepada Nabi shallallaahu ‘alaihi wasallam, “Berilah aku wasiat!” Nabi menjawab, “Janganlah engkau marah!” Laki-laki itu mengulangi permintaannya hingga beberapa kali, Rasulullah teteap menjawab, “Janganlah engkau marah!” (HR. Al-Bukhari)';
const kHadits17 =
    'عَنْ أَبِيْ يَعْلَىٰ شَدَّادِ بْنِ أَوْسٍ رَضِيَ اللّٰهُ عَنْهُ ، عَنْ رَسُوْلِ اللّٰهِ ﷺ قَالَ: إِنَّ اللّٰهَ كَتَبَ الْإِحْسَانَ عَلَى كُلِّ شَيْءٍ ، فَإِذَا قَتَلْتُمْ فَأَحْسِنُوا الْقِتْلَةَ ، وَإِذَا ذَبَحْتُمْ فَأَحْسِنُ الذِّبْحَةَ ، وَلْيُحِدَّ أَحَدُكُمْ شَفْرَتَهُ ، وَلْيُرِحْ ذَبِيْحَتَهُ.';
const kHadits17Terjemah =
    'Dari Abu Ya’la Syaddad bin Aus radhiyallaahu ‘anhu, dari Rasulullah shallallaahu ‘alaihi wasallam, beliau bersabda, “Sesungguhnya Allah telah mewajibkan berbuat baik kepada segala sesuatu. Apabila kalian membunuh, bunuhlah dengan cara yang baik. Jika kalian menyembelih, sembelihlah dengan cara yang baik. Hendaklah kalian menajamkan pisaunya dan menyenangkan hewan sembelihannya.” (HR. Muslim)';
const kHadits18 =
    'عَنْ أَبِيْ ذَرٍّ جُنْدُبِ بْنِ جُنَادَةَ وَأَبِيْ عَبْدِ الرَّحْمٰنِ مُعَاذِ بْنِ جَبَلٍ رَضِيَ اللّٰهُ عَنْهُمَا ، عَنْ رَسُوْلِ اللّٰهِ ﷺ قَالَ: اِتَّقِ اللّٰهَ حَيْثُمَا كُنْتَ ، وَأَتْبِعِ السَّيِّئَةَ الْحَسَنَةَ تَمْحُهَا ، وَخَالِقِ النَّاسَ بِخُلُقٍ حَسَنٍ.';
const kHadits18Terjemah =
    'Dari Abu Dzar Jundub bin Junadah dan ‘Abdirrahman Mu’adz bin Jabal radhiyallaahu ‘anhuma, dari Rasulullah shallallaahu ‘alaihi wasallam, beliau bersabda, “Bertaqwalah kepada Allah di mana saja engkau berada. Iringilah kesalahan dengan kebaikan, niscaya (kebaikan) itu akan menghapuskan kesalahan. Dan bergaullah Bersama manusia dengan akhlak yang mulia.” (HR. At-Tirmidzi, ia berkata, “Hadits ini hasan.” Dalam sebagian naskah ia berkata, “Hasan shahih.”)';
const kHadits19 =
    'عَنْ أَبِى الْعَبَّاسِ عَبْدِ اللّٰهِ بْنِ عَبَّاسٍ رَضِيَ اللّٰهُ عَنْهُمَا قَالَ: كُنْتُ خَلْفَ النَّبِيِّ ﷺ يَوْمًا فَقَالَ: يَا غُلَامُ! إِنِّيْ أُعَلِّمُكَ كَلِمَاتٍ: اِحْفَظِ اللّٰهَ يَحْفَظْكَ ، اِحْفَظِ اللّٰهَ  تَجِدْهُ تُجَاهَكَ ، إِذَا سَأَلْتَ فَاسْأَلِ اللّٰهَ ، وَإِذَا اسْتَعَنْتَ فَاسْتَعِنْ بِاللّٰهِ ، وَاعْلَمْ أَنَّ الْأُمَّةَ لَوِ اجْتَمَعَتْ عَلَىٰ أَنْ يَنْفَعُوْكَ بِشَيْءٍ لَمْ يَنْفَعُوْكَ إِلَّا بِشَيْءٍ قَدْ كَتَبَهُ اللّٰهُ لَكَ ، وَإِنِ اجْتَمَعُوْا عَلَىٰ أنْ يَضُرُّوْكَ بِشَيْءٍ لَمْ يَضُرُّوْكَ إِلَّا بِشَيْءٍ قَدْ كَتَبَهُ اللّٰهُ عَلَيْكَ ، رُفِعَتِ الْأَقْلَامُ ، وَجَفَّتِ الصُّحُفُ.';
const kHadits19Terjemah =
    'Dari Abul ‘Abbas ‘Abdullah bin ‘Abbas radhiyallaahu ‘anhuma, ia berkata, “Pada suatu hari aku pernah berada di belakang Nabi shallallaahu ‘alaihi wasallam, lalu beliau bersabda, ‘Wahai anak muda! Sesungguhnya aku akan mengajarkan beberapa kalimat kepadamu. Jagalah Allah, niscaya Allah akan menjagamu. Jagalah Allah, niscaya engkau mendapati-Nya ada di hadapanmu. Jika engkau meminta, mintalah kepada Allah. Dan jika engkau memohon pertolongan, mohonlah pertolongan kepada Allah. Ketahuilah apabila semua umat berkumpul untuk mendatangkan manfaat kepadamu dengan sesuatu, maka mereka tidak bias memberikan manfaat kepadamu kecuali dengan sesuatu yang telah Allah tetapkan untukmu. Dan seandainya mereka pun berkumpul untuk menimpakan bahaya kepadamu dengan sesuatu, maka mereka tidak dapat membahayakanmu kecuali dengan sesuatu yang telah Allah tetapkan bagimu. Pena-pena (pencatat takdir) telah diangkat dan lembaran-lembaran (catatan takdir) telah kering.’” (HR. At-Tirmidzi, dan ia berkata, “Hadits ini hasan shahih.”)';
const kHadits20 =
    'عَنْ أَبِيْ مَسْعُوْدٍ عُقْبَةَ بْنِ عَمْرٍ الْأَنْصَارِيِّ الْبَدْرِيِّ رَضِيَ اللّٰهُ عَنْهُ قَالَ: قَالَ رَسُوْلُ اللّٰهِ ﷺ : إِنَّ مِمَّا أَدْرَكَ النَّاسُ مِنْ كَلَامِ النُّبُوَّةِ الْأُوْلَىٰ: إِذَا لَمْ تَسْتَحِ فَاصْنَعْ مَا شِئْتَ.';
const kHadits20Terjemah =
    'Dari Abu Mas’ud ‘Uqbah bin ‘Amr Al-Anshari Al-Badri radhiyallaahu ‘anhu, ia berkata, “Rasulullah shallallaahu ‘alaihi wasallam bersabda, ‘Sesungguhnya di antara perkataan kenabian terdahulu yang diketahui manusia ialah ‘Jika engkau tidak malu, maka berbuatlah sesukamu!’’” (HR. Al-Bukhari)';
const kHadits21 =
    'عَنْ أَبِيْ عَمْرٍ ، وَقِيْلَ أَبِيْ عَمْرَةَ ، سُفْيَانَ بْنِ عَبْدِ اللّٰهِ رَضِيَ اللّٰهُ عَنْهُ قَالَ: قُلْتُ: يَا رَسُوْلَ اللّٰهِ! قُل لِيْ فِي الْإِسْلَامِ قَوْلًا لَا أَسْأَلُ عَنْهُ أَحَدًا غَيْرَكَ. قَالَ: قُلْ آمَنْتُ بِاللّٰهِ ، ثُمَّ اسْتَقِمْ!';
const kHadits21Terjemah =
    'Dari Abu ‘Amr, ada juga yang mengatakan Abu ‘Amrah, Sufyan bin ‘Abdillah radhiyallaahu ‘anhu, ia berkata, “Aku berkata, ‘Wahai Rasulullah! Katakan kepadaku mengenai Islam sebuah perkataan yang tidak aku tanyakan kepada seorang pun selain engkau.’ Beliau menjawab, ‘Katakanlah Aku beriman kepada Allah, kemudian beristiqomahlah!’” (HR. Muslim)';
const kHadits22 =
    'عَنْ أَبِيْ عَبْدِ اللّٰهِ جَابِرِ بْنِ عَبْدِ اللّٰهِ الْأَنْصَارِيِّ رَضِيَ اللّٰهُ عَنْهُمَا ، أَنَّ رَجُلًا سَأَلَ رَسُوْلَ اللّٰهِ ﷺ ، فَقَالَ: أَرَأَيْتَ إِذَا صَلَّيْتُ الْمَكْتُوْبَاتِ ، وَصُمْتُ رَمَضَانَ ، وَأَحْلَلْتُ الْحَلَالَ ، وَحَرَّمْتُ الْحَرَامَ ، وَلَمْ أَزِدْ عَلَىٰ ذٰلِكَ شَيْئًا ، أَأَدْخُلُ الْجَنَّةَ؟ قَالَ: نَعَمْ.';
const kHadits22Terjemah =
    'Dari Abu ‘Abdillah Jabir bin ‘Abdillah Al-Anshari radhiyallaahu ‘anhuma, bahwa seorang laki-laki bertanya kepada Rasulullah shallallaahu ‘alaihi wasallam, ia berkata, “Bagaimana pendapat Anda, apabila aku mengerjakan shalat fardhu, puasa di bulan Ramadhan, menghalalkan yang halal, mengharamkan yang haram, dan aku tidak menambahnya sedikitpun dari itu, apakah aku akan masuk Surga? Nabi menjawab, “Ya.” (HR. Muslim)';
const kHadits23 =
    'عَنْ أَبِيْ مَالِكٍ الْحَارِثِ بْنِ عَاصِمٍ الْأَشْعَرِيِّ رَضِيَ اللّٰهُ عَنْهُ قَالَ: قَالَ رَسُوْلُ اللّٰهِ ﷺ : اَلطَّهُوْرُ شَطْرُ الْإِيْمَانِ ، وَالْحَمْدُ لِلّٰهِ تَمْلَأُ الْمِيْزَانَ ، وَسُبْحَانَ اللّٰهِ وَالْحَمْدُ لِلّٰهِ تَمْلَآنِ أَوْ تَمْلَأُ مَا بَيْنَ السَّمَاءِ وَالْأَرْضِ ، وَالصَّلَاةُ نُوْرٌ ، وَالصَّدَقَةُ بُرْهَانٌ ، وَالصَّبْرُ ضِيَاءٌ ، وَالْقُرْآنُ حُجَّةٌ لَكَ أَوْ عَلَيْكَ ، كُلُّ النَّاسِ يَغْدُوْ فَبَائِعٌ نَفْسَهُ فَمُعْتِقُهَا أَوْ مُوْبِقُهَا.';
const kHadits23Terjemah =
    'Dari Abu Malik Al-Harits bin ‘Ashim Al-Asy’ari radhiyallaahu ‘anhu, ia berkata, “Rasulullah shallallaahu ‘alaihi wasallam bersabda, “Bersuci itu sebagian dari iman, ucapan alhamdulillaah (segala puji bagi Allah) itu memenuhi timbangan, subhaanallaah (Mahasuci Allah) dan alhamdulillaah itu keduanya memenuhi antara langit dan bumi. Shalat adalah cahaya, shadaqah adalah bukti nyata, kesabaran adalah sinar, sedangkan Al-Quran adalah hujjah yang membelamu atau hujjah yang menuntutmu. Setiap manusia berbuat, seakan-akan ia menjual dirinya: ada yang memerdekakan dirinya sendiri, ada juga yang membinasakan dirinya sendiri.” (HR. Muslim)';
const kHadits24 =
    'عَنْ أَبِيْ ذَرٍّ الْغِفَارِيِّ رَضِيَ اللّٰهُ عَنْهُ ، عَنِ النَّبِيِّ ﷺ فِيْمَا يَرْوِيْهِ عَنْ رَبِّهِ عَزَّوَجَلَّ أَنَّهُ قَالَ: يَا عِبَادِيْ! إِنِّيْ حَرَّمْتَ الظُّلْمَ عَلَىٰ نَفْسِيْ وَجَعَلْتُهُ بَيَكُمْ مُحَرَّمًا ، فَلَا تَظَالَمُوْا. يَا عِبَادِيْ! كُلُّكُمْ ضَالٌّ إلَّا مَنْ هَدَيْتُهُ ، فَاسْتَهْدُوْنِيْ أَهْدِكُمْ. يَا عِبَادِيْ! كُلُّكُمْ جَائِعٌ إِلَّا مَا أَطْعَمْتُهُ ، فَاسْتَطْعِمُوْنِيْ أُطْعِمْكُمْ. يَا عِبَادِيْ! كُلُّكُمْ عَارٍ إِلَّا مَنْ كَسَوْتُهُ ، فَاسْتَكْسُوْنِيْ أَكْسُكُمْ. يَا عِبَادِيْ! إِنَّكُمْ تُخْطِئُوْنَ بِاللَّيْلِ وَالنَّهَارِ وَأَنَا أَغْفِرُ الذُّنُوْبَ جَمِيْعًا ، فَاسْتَغْفِرُوْنِيْ أَغْفِرْلَكُمْ. يَا عِبَادِيْ! إِنَّكُمْ لَنْ تَبْلُغُوْا ضَرِّيْ فَتَضُرُّوْنِيْ ، وَلَنْ تَبْلُغُوْا نَفْعِيْ فَتَنْفُعُوْنِيْ. يَا عِبَادِيْ! لَوْ أَنَّ أَوَّلَكُمْ وَآخِرَكُمْ ، وَإِنْسَكُمْ وَجِنَّكُمْ كَانُوْا عَلَىٰ أَتْقَىٰ قَلْبِ رَجُلٍ وَاحِدٍ مِنْكُمْ ، ماَ زَادَ ذٰلِكَ فِيْ مُلْكِيْ شَيْئًا. يَا عِبَادِيْ! لَوْ أَنَّ أَوَّلَكُمْ وَآخِرَكُمْ ، وَإِنْسَكُمْ وَجِنَّكُمْ كَانُوْا عَلَىٰ أفْجَرِ قَلْبِ رَجُلٍ وَاحِدٍ مِنْكُمْ ، مَا نَقَصَ ذٰلِكَ مِنْ مُلْكِيْ شَيْئًا. يَا عِبَادِيْ! لَوْ أَنَّ أَوَّلَكُمْ وَآخِرَكُمْ ، وَإِنْسَكُمْ وَجِنَّكُمْ قَامُوْا فِيْ صَعِيْدٍ وَاحِدٍ ، فَسَأَلُوْنِيْ فَأَعْطَيْتُ كُلَّ وَاحِدٍ مَسْأَلَتَهُ ، مَا نَقَصَ ذٰلِكَ مِمَّا عِنْدِيْ ، إِلَّا كَمَا يَنْقُصُ الْمِخْيَطُ إِذَا أُدْخِلَ الْبَحْرَ. يَا عِبَادِيْ! إِنَّمَا هِيَ أَعْمَلُكُمْ أُحْصِيْهَا لَكُمْ ، ثُمَّ أُوَفِّيْكُمْ إِيَّاهَا ، فَمَنْ وَجَدَ خَيْرًا فَلْيَحْمَدِ اللّٰهَ ، وَمَنْ وَجَدَ غَيْرَ ذٰلِكَ فَلَا يَلُوْمَنَّ إِلَّا نَفْسَهُ.';
const kHadits24Terjemah =
    'Dari Abu Dzar Al-Ghifari radhiyallaahu ‘anhu dari Nabi shallallaahu ‘alaihi wasallam tentang apa yang beliau riwayatkan dari Rabbnya ‘Azza wa Jalla bahwasanya Dia berfirman, “Wahai hamba-hamba-Ku! Sungguh Aku telah mengharamkan kezhaliman atas Diri-Ku dan Aku menjadikannya haram di antara kalian, maka janganlah kalian saling mendzhalimi. Wahai hamba-hamba-Ku! Setiap kalian adalah sesat, kecuali orang yang Aku beri petunjuk, maka mohonlah petunjuk kepada-Ku niscaya Aku akan berikan petunjuk kepada kalian. Wahai hamba-hamba-Ku! Setiap kalian adalah lapar, kecuali orang yang Aku berikan makan, maka mintalah makan kepada-Ku niscaya Aku berikan makan kepada kalian. Wahai hamba-hamba-Ku! Setiap kalian adalah telanjang, kecuali orang yang Aku berikan pakaian, maka mintalah pakaian kepada-Ku niscaya Aku akan beri kalian pakaian. Wahai hamba-hamba-Ku! Sesungguhnya kalian selalu berbuat kesalahan (dosa) di waktu malam dan siang hari, sedangkan Aku mengampuni dosa-dosa seluruhnya, maka mohonlah ampunan kepada-Ku niscaya Aku mengampuni kalian. Wahai hamba-hamba-Ku! Sesungguhnya kalian tidak akan sanggup menimpakan bahaya kepada-Ku, hingga kalian dapat membahayakan-Ku, dan kalian pun tidak akan mampu memberikan manfaat kepada-Ku, hingga kalian dapat memberi manfaat kepada-Ku. Wahai hamba-hamba-Ku! Seandainya sejak orang yang pertama hingga yang terakhir, seluruh manusia dan jin, keadaannya seperti seseorang yang paling bertaqwa di antara kalian, maka hal itu tidak menambah kerajaan-Ku sedikitpun. Wahai hamba-hamba-Ku! Seandainya sejak orang yang pertama hingga yang terakhir, seluruh manusia dan jin keadaannya seperti seseorang yang paling jahat di antara kalian, maka hal itu tidak akan mengurangi kerajaan-Ku sedikitpun. Wahai hamba-hamba-Ku! Seandainya sejak orang yang pertama hingga yang terakhir, seluruh jin dan manusia berdiri di satu tanah lapang, kemudian semuanya meminta kepada-Ku, lalu setiap orang Aku berikan permintaannya, maka apa yang ada di sisi-Ku tidak akan berkurang, kecuali seperti berkurangnya air laut apabila jarum dicelupkan ke dalamnya (kemudian diangkat). Wahai hamba-hamba-Ku! Sesungguhnya semua itu adalah amal-amal kalian yang Aku tulis untuk kalian, kemudian Aku menyempurnakannya. Barang siapa mendapatkan kebaikan, hendaklah ia memuji Allah. Dan barang siapa mendapatkan selain itu, jangan sekali-kali ia mencela (menyalahkan) kecuali kepada dirinya sendiri.” (HR. Muslim)';
const kHadits25 =
    'عَنْ أَبِيْ ذَرٍّ رَضِيَ اللّٰهُ عَنْهُ أَيْضًا ، أَنَّ نَاسًا مِنْ أَصْحَبِ رَسُوْلِ اللّٰهِ ﷺ قَالُوْا لِلنَّبِيِّ ﷺ : يَا رَسُوْلَ اللّٰهِ! ذَهَبَ أَهْلُ الدُّثُوْرِ بِالْأُجُوْرِ ، يُصَلُّوْنَ كَمَا نُصَلِّيْ ، وَيَصُوْمُوْنَ كَمَا نَصُوْمُ وَيَتَصَدَّقُوْنَ بِفُضُوْلِ أَمْوَالِهِمْ. قَالَ: أَوَلَيْسَ قَدْ جَعَلَ اللّٰهُ لَكُمْ ماَ تَصَدَّقُوْنَ؟ إِنَّ بِكُلِّ تَسْبِيْحَةٍ صَدَقَةً ، وَكُلِّ تَكْبِيْرَةٍ صَدَقَةً ، وَكُلِّ تَحْمِيْدَةٍ صَدَقَةً ، وَكُلِّ تَهْلِيْلَةٍ صَدَقَةً ، وَأَمْرٌ بِالْمَعْرُوْفِ صَدَقَةٌ ، وَنَهْيٌ عَنْ مُنْكَرٍ صَدَقَةٌ ، وَفِيْ بُضْعِ أَحَدِكُمْ صَدَقَةٌ. قَالُوْا: يَا رَسُوْلَ اللّٰهِ! أَيَأْتِيْ أَحَدُنَا شَهْوَتَهُ وَيَكُوْنُ لَهُ فِيْهَا أَجْرٌ؟ قَالَ: أَرَأَيْتُمْ لَوْ وَضَعَهَا فِيْ حَرَامٍ أَكَانَ عَلَيْهِ فِيْهَا وِزْرٌ؟ فَكَذٰلِكَ إِذَا وَضَعَهَا فِي الْحَلَالِ كَانَ لَهُ أَجْرًا.';
const kHadits25Terjemah =
    'Dari Abu Dzar radhiyallaahu ‘anhu bahwa beberapa orang dari sahabat Rasulullah shallallaahu ‘alaihi wasallam berkata kepada Nabi shallallaahu ‘alaihi wasallam, “Wahai Rasulullah! Orang-orang yang berharta telah mendapatkan pahala yang banyak, mereka shalat seperti kami shalat, mereka berpuasa seperti kami berpuasa, selain itu mereka pundapat bershadaqah dengan kelebihan harta mereka.” Nabi bersabda, “Bukankah Allah telah menjadikan sesuatu untuk kalian yang dapat kalian shadaqahkan? Sesungguhnya pada setiap tasbih (ucapan subhaanallaah) itu adalah shadaqah, setiap takbir (ucapan Allaahu Akbar) adalah shadaqah, setiap tahmiid (ucapan alhamdulillaah) adalah shadaqah, menyuruh kepada kebaikan adalah shadaqah, mencegah dari yang munkar adalah shadaqah, dan bercampurnya (jima’) seorang dari kalian dengan isterinya adalah shadaqah.” Mereka bertanya, “Wahai Rasulullah! Apakah seorang dari kami ketika mendatangi syahwatnya (bersetubuh dengan isterinya), lalu ia mendapatkan pahala?” Nabi menjawab, “Bagaimana pendapat kalian jika ia menempatkan syahwatnya pada tempat yang haram, bukankah ia mendapatkan dosa? Maka demikianlah, apabila ia menempatkan syahwatnya pada tempat yang hala, makai a mendapatkan pahala karenanya.” (HR. Muslim)';
const kHadits26 =
    'عَنْ أَبِيْ هُرَيْرَةَ رَضِيَ اللّٰهُ عَنْهُ قَالَ: قَالَ رَسُوْلُ اللّٰهِ ﷺ : كُلُّ سُلَامَىٰ مِنَ النَّاسِ عَلَيْهِ صَدَقَةٌ ، كُلَّ يَوْمٍ تَطْلُعُ فِيْهِ الشَّمسُ: تَعْدِلُ بَيْنَ الْإِثْنَيْنِ صَدَقَةٌ ، وَتُعِيْنُ الرَّجُلَ فِيْ دَابَّتِهِ فَتَحْمِلُهُ عَلَيْهَا أَوْ تَرْفَعُ لَهُ عَلَيْهَا مَتَاعَهُ صَدَقَةٌ ، وَالْكَلِمَةُ الطَّيِبَةُ صَدَقَةٌ ، وَتُمِيْطُ الْأَذَى عَنِ الطَّرِيْقِ صَدَقَةٌ.';
const kHadits26Terjemah =
    'Dari Abu Hurairah radhiyallaahu ‘anhu, ia berkata, “Rasulullah shallallaahu ‘alaihi wasallam bersabda, ‘Setiap persendian manusia wajib bershadaqah pada setiap hari di mana matahari terbit pada hari itu: Engkau berlaku adil (mendamaikan) dua orang yang sedang berselisih adalah shadaqah, engkau membantu seseorang pada hewan tunggangannya lalu engkau menaikkannya ke atasnya atau mengangkatkan barang-barangnya ke atas hewan tunggangannya adalah shadaqah, ucapan yang baik adalah shadaqah, setiap langkah yang engkau langkahkan menuju (masjid) untuk shalat adalah shadaqah, dan engkau menyingkirkan gangguan dari jalan pun shadaqah.’” (HR. Al-Bukhari dan Muslim)';
const kHadits27 =
    'عَنِ النَّوَّاسِ بْنِ سَمْعَانَ رَضِيَ اللّٰهُ عَنْهُ ، عَنِ النَّبِيِّ ﷺ قَالَ: اَلْبِرُّ حُسْنُ الْخُلُقِ ، وَالْإِثْمُ مَا حَاكَ فِيْ نَفْسِكَ ، وَكَرِهْتَ أَنْ يَطَّلِعَ عَلَيْهِ النَّاسُ.';
const kHadits27Terjemah =
    'Dari An-Nawwas bin Sam’an radhiyallaahu ‘anhu, dari Nabi shallallaahu ‘alaihi wasallam, beliau bersabda, “Kebajikan itu adalah akhlak yang baik, sedangkan dosa itu adalah sesuatu yang mengganjal di hatimu dan engkau tidak suka jika orang lain mengetahuinya.” (HR. Muslim)';
const kHadits28 =
    'عَنْ أَبِيْ نَجِيْحٍ الْعِرْبَاضِ بْنِ سَارِيَةَ رَضِيَ اللّٰهُ عَنْهُ قَالَ: وَعَظَنَا رَسُوْلُ اللّٰهِ ﷺ مَوْعِظَةً وَجِلَتْ مِنْهَا الْقُلُوْبُ ، وَذَرَفَتْ مِنهَا الْعُيُوْنُ ، فَقُلْنَا: يَا رَسُوْلَ اللّٰهِ! كَأَنَّهَا مَوْعِظَةُ مُوَدِّعٍ فَأَوْصِنَا. قَالَ: أُوْصِيْكُمْ بِتَقْوَى اللّٰهِ عَزَّوَجَلَّ ، وَالسَّمْعِ وَالطَّاعَةِ ، وَإِنْ تَأَمَّرَ عَلَيْكُمْ عَبْدٌ. فَإِنَّهُ مَنْ يَعِشْ مِنْكُمْ بَعْدِيْ فَسَيَرَى اخْتِلَافًا كَثِيْرًا ، فَعَلَيْكُمْ بِسُنَّتِيْ وَسُنَّةِ الْخُلَفَاءِ الرَّاشِدِيْنَ الْمَهْدِيِّيْنَ عَضُّوْا عَلَيْهَا بِالنَّوَاجِدِ ، وَإِيَّاكُمْ وَمُحْدَثَاتِ الْأُمُوْرِ ، فَإِنَّ كُلَّ بِدْعَةٍ ضَلَالَةٌ.';
const kHadits28Terjemah =
    'Dari Abu Najih Al-‘Irbadh bin Sariyah radhiyallaahu ‘anhu, ia berkata, “Rasulullah shallallaahu ‘alaihi wasallam memberikan nasihat kepada kami dengan nasihat yang membuat hati menjadi bergetar dan mata menangis, maka kami berkata, ‘Wahai Rasulullah! Sepertinya ini adalah wasiat dari orang yang akan berpisah, maka berikanlah wasiat kepada kami.’ Rasulullah bersabda, ‘Aku berwasiat kepada kalian agar bertaqwa kepada Allah, mendengar dan taat meskipun kalian diperintah (dipimpin) seorang budak. Sungguh, orang yang hidup di antara kalian sepeninggalku, ia akan melihat perselisihan yang banyak, oleh karena itu wajib atas kalian berpegang teguh pada Sunnahku dan sunnah Khulafaa-ur Rasyidin yang terbimbing, gigitlah ia dengan gigi geraham kalian, serta jauhilah setiap perkara yang diada-adakan, karena setiap bid’ah adalah sesat.’” (HR. Abu Dawud dan At-Tirmidzi. At-Tirmidzi berkata, “Hadits hasan shahih)';
const kHadits29 =
    'عَنْ مُعَاذِ بْنِ جَبَلٍ رَضِيَ اللّٰهُ عَنْهُ قَالَ: قُلتُ: يَا رَسُوْلَ اللّٰهِ! أَخْبِرْنِيْ بِعَمَلٍ يُدْخِلُنِي الْجَنَّةَ وَيُبَاعِدُنِيْ عَنِ النَّارِ ، قَالَ: لَقَدْ سَأَلْتَ عَنْ عَظِيْمٍ ، وَإِنَّهُ لَيَسِيْرٌ عَلَىٰ مَنْ يَسَّرَهُ اللّٰهُ تَعَالَىٰ عَلَيْهِ: تَعْبُدُ اللّٰهَ لَا تُشْرِكُ بِهِ شَيْئًا ، وَتُقِيْمُ الصَّلَاةَ ، وَتُؤْتِي الزَّكَاةَ ، وَتَصُوْمُ رَمَضَانَ ، وَتَحُجُّ الْبَيْتَ. ثُمَّ قَالَ: أَلَا أَدُلُّكَ عَلَىٰ أَبْوَابِ الْخَيْرِ؟ اَلصَّوْمُ جُنَّةٌ ، وَالصَّدَقَةُ تُطْفِئُ الْخَطِيْئَةَ كَمَا يُطْفِئُ الْمَاءُ النَّارَ ، وَصَلَاةُ الرَّجُلِ فِيْ جَوْفِ اللَّيْلِ. ثُمَّ تَلَا: ۝ تَتَجَافَىٰ جُنُوْبُهُمْ عَنِ الْمَضَاجِعِ... ١٦ ۝ حَتَّىٰ إِذَا بَلَغَ: ۝ ...يَعْمَلُوْنَ ١٧ ۝ ثُمَّ قَالَ: أَلَا أُخْبِرُكَ بِرَأْسِ الْأَمْرِ ، وَعَمُوْدِهِ ، وَذِرْوَةِ سَنَامِهِ؟ قُلْتُ: بَلَىٰ يَا رَسُوْلَ اللّٰهِ. قَالَ: رَأْسُ الْأَمْرِ الْإِسْلَامُ ، وَعَمُوْدُهُ الصَّلَاةُ ، وَذِرْوَتُ سَنَامِهِ الْجِهَادُ. ثُمَّ قَالَ: أَلَا أُخْبِرُكَ بِمِلَاكِ ذٰلِكَ كُلِّهِ؟ قُلتُ: بَلَىٰ يَا رَسُوْلَ اللّٰهِ. فَأَخَذَ بِلِسَانِهِ وَقَالَ: كُفَّ عَلَيْكَ هٰذَا! قُلتُ: يَا نَبِيَّ اللّٰهِ ، وَأِنَّا لَمُؤَاخَذُوْنَ بِمَا نَتَكَلَّمُ بِهِ؟ فَقَالَ: ثَكِلَتْكَ أُمُّكَ ، وَهَلْ يَكُبُّ النَّاسِ فِي النَّارِ عَلَىٰ وُجُوْهِهِمْ – أَوْ قَالَ: عَلَىٰ مَنَاخِرِهِمْ – إِلَّا حَصَائِدُ أَلْسِنَتِهِمْ.';
const kHadits29Terjemah =
    'Dari Mu’adz bin Jabal radhiyallaahu ‘anhu, ia berkata, “Aku berkata, ‘Wahai Rasulullah! Beritahukanlah kepadaku amal perbuatan yang dapat memasukkanku ke Surga dan menjauhkanku dari Neraka.’ (Nabi) bersabda, ‘Sungguh engkau bertanya tentang perkara yang besar, tetapi sesungguhnya hal itu adalah mudah bagi orang yang Allah mudahkan atasnya: Engkau beribadah kepada Allah dan jangan mempersekutukan-Nya dengan suatu apa pun, mendirikan shalat, membayaar zakat, berpuasa di Bulan Ramadhan, dan pergi haji ke Baitullah.’ Kemudian (Nabi) bersabda, ‘Maukah engkau aku tunjukkan pintu-pintu kebaikan? Puasa adalah perisai, shadaqah itu memadamkan kesalahan sebagaimana air memadamkan api, dan shalatnya seseorang di pertengahan malam.’ Kemudian (Nabi) membacakan firman Allah, ‘Lambung mereka jauh dari tempat tidurnya…,’ sampai pada firman-Nya, ‘… yang mereka kerjakan.’ (QS. As-Sajdah: 16-17). Kemudian (Nabi) bersabda, ‘Maukah engkau aku jelaskan tentang pokok segala perkara, tiang-tiangnya, dan puncaknya?’ Aku menjawab, ‘Mau, wahai Rasulullah!’ (Nabi) bersabda, ‘Pokok segala perkara adalah Islam, tiang-tiangnya adalah shalat, dan puncaknya adalah jihad,’ kemudian (Nabi) bertanya, ‘Maukah kujelaskan kepadamu tentang hal yang menjaga itu semua?’ Aku menjawab, ‘Mau, wahai Rasulullah!’ Beliau lalu memegang lidahnya dan bersabda, ‘Jagalah ini (lisan)!’ Kutanyakan, ‘Wahai Nabi Allah, apakah kita akan disiksa dengan sebab perkataan kita?, Maka (Nabi) menjawab, ‘Semoga ibumu kehilanganmu! (kalimat ini dimaksudkan agar memperhatikan ucapan selanjutnya). Tidaklah manusia tersungkur di Neraka di atas wajah mereka atau di atas hidung mereka melainkan dengan sebab lisan mereka.’” (HR. At-Tirmidzi, dan beliau berkata, “Hadits ini hasan shahih)';
const kHadits30 =
    'عَنْ أَبِيْ ثَعْلَبَةَ الْخُشَنِيِّ جُرْثُوْمِ بْنِ نَاشِرٍ رَضِيَ اللّٰهُ عَنْهُ ، عَنْ رَسُوْلِ اللّٰهِ ﷺ قَالَ:  إنَّ اللّٰهَ تَعَالَىٰ فَرَضَ فَرَائِضَ فَلَا تُضَيِّعُوْهَا ، وَحَدَّ حُدُوْدًا فَلَا تَعْتَدُوْهَا ، وَحَرَّمَ أَشْيَاءَ فَلَا تَنْتَهِكُوْهَا ، وَسَكَتَ عَنْ أَشْيَاءَ ، رَحْمَةً لَكُمْ غَيْرَ نِسْيَانٍ ، فَلَا تَبْحَثُوْا عَنْهَا.';
const kHadits30Terjemah =
    'Dari Abu tsa’labah Al-Khusyani Jurtsum bin Nasyir radhiyallaahu ‘anhu, dari Rasulullah shallallaahu ‘alaihi wasallam, beliau bersabda, “Sesungguhnya Allah telah menetapkan beberapa kewajiban, maka jangan kalian menyia-nyiakannya! Dan telah menetapkan Batasan-batasan, maka jangan kalian melampauinya! Dan telah mengharamkan beberapa hal, maka jangan kalian melanggarnya! Dan Dia (Allah) telah mendiamkan beberapa hal sebagai rahmat (kasih saying) bagi kalian, bukan karena lupa, maka janganlah kalian membahasnya!” (Hadits hasan, diriwayatkan oleh Ad-Daraquthni dan selainnya).';
const kHadits31 =
    'عَنْ أَبِي الْعَبَّاسِ سَهْلِ بْنِ سَعْدٍ السَّاعِدِيِّ رَضِيَ اللّٰهُ عَنْهُ قَالَ: جَاءَ رَجُلٌ إِلَى النَّبِيِّ ﷺ ، فَقَالَ: يَا رَسُوْلَ اللّٰهِ ، دُلَّنِيْ عَلَىٰ عَمَلٍ إِذَا عَمِلْتُهُ أَحَبَّنِيَ النَّاسُ! فَقَالَ: اِزْهَدْ فِي الدُّنْيَا! يُحِبُّكَ اللّٰهُ. وَازْهَدْ فِيْمَا عِنْدَ النَّاسِ! يُحِبُّكَ النَّاسُ.';
const kHadits31Terjemah =
    'Dari Abul ‘Abbas Sahl bin Sa’ad As-Sa’idi radhiyallaahu ‘anhu, ia berkata, “TelahTelah datang seorang laki-laki kepada Nabi shallallaahu ‘alaihi wasallam lalu berkata, ‘Wahai Rasulullah, tunjukkanlah aku pada suatu amal, yang apabila aku mengamalkannya, maka aku akan dicintai Allah dan dicintai manusia! Maka (Nabi) bersabda, “Zuhudlah di dunia! Maka engkau akan dicintai Allah. Dan zuhudlah terhadap apa yang dimiliki manusia! Maka engkau akan dicintai manusia.’” (Hadits hasan, diriwayatkan oleh Ibnu Majah dan selainnya dengan beberapa sanad yang hasan).';
const kHadits32 =
    'عَنْ أَبِيْ سَعِيْدٍ سَعْدِ بْنِ مَالِكِ بْنِ سِنَانٍ الْخُدْرِيِّ رَضِيَ اللّٰهُ عَنْهُ ، أَنَّ رَسُوْلَ اللّٰهِ ﷺ قَالَ: لَا ضَرَرَ وَلَا ضِرَارَ.';
const kHadits32Terjemah =
    'Dari Abu Sa’id, Sa’ad bin Malik bin Sinan Al-Khudri radhiyallaahu ‘anhu, bahwa Rasulullah shallallaahu ‘alaihi wasallam bersabda, “Tidak boleh membuat kemudharatan dan tidak boleh memudharatkan orang lain.” (Hadits hasan. Diriwayatkan Ibnu Majah, Ad-Daraquthni, dan selainnya secara musnad (bersambung kepada Nabi shallallaahu ‘alaihi wasallam)).';
const kHadits33 =
    'عَنِ ابْنِ عَبَّاسٍ رَضِيَ اللّٰه عَنْهُمَا ، أَنَّ رَسُوْلَ اللّٰهِ ﷺ قَالَ: لَوْ يُعْطَى النَّاسُ بِدَعْوَاهُمْ لَادَّعَىٰ رِجَالٌ أَمْوَالَ قَوْمٍ وَدِمَاءَهُمْ. لَكِنِ الْبَيِّنَةُ عَلَى الْمُدَّعِيْ ، وَالْيَمِيْنُ عَلَىٰ مَنْ أَنْكَرَ.';
const kHadits33Terjemah =
    'Dari Ibnu Abbas radhiyallaahu ‘anhuma, bahwa Rasulullah shallallaahu ‘alaihi wasallam bersabda, “Seandainya (setiap) manusia diberi tuntutan (dakwaan), niscaya orang-orang akan menuntut darah dan harta suatu kaum. Akan tetapi orang yang menuduh (menuntut) wajib mendatangkan bukti, dan bagi orang yang mengingkarinya (terdakwa) wajib untuk bersumpah.” (Hadits hasan. Diriwayatkan Al-Baihaqi dan lainnya seperti (lafazh) ini, dan sebagiannya terdapat dalam ash-shahihain).';
const kHadits34 =
    'عَنْ أَبِيْ سَعِيْدٍ الْخُدْرِيِّ رَضِيَ اللّٰهُ عَنْهُ قَالَ: سَمِعْتُ رَسُوْلَ اللّٰهِ ﷺ يَقُوْلُ: مَنْ رَأَى مِنْكُمْ مُنْكَرًا ، فَلْيُغَيِّرْهُ بِيَدِهِ ، فَإِنْ لَمْ يَسْتَطِعْ ، فَبِلِسَانِهِ. فَإِنْ لَمْ يَسْتَطِعْ ، فَبِقَلْبِهِ. وَذٰلِكَ أَضْعَفُ الْإِيْمَانِ.';
const kHadits34Terjemah =
    'Dari Abu Sa’id Al-Khudri radhiyallaahu ‘anhu, ia berkata, “Aku mendengar Rasulullah shallallaahu ‘alaihi wasallam bersabda, ‘Barang siapa di antara kalian melihat kemungkaran, hendaklah ia mengubahnya dengan tangannya. Jika tidak sanggup, maka dengan lisannya. Jika tidak sanggup, maka dengan hatinya. Dan itulah selemah-lemah iman. (HR. Muslim)';
const kHadits35 =
    'عَنْ أبِيْ هُرَيْرَةَ رَضِيَ اللّٰهُ عَنْهُ قَالَ: قَالَ رَسُوْلُ اللّٰهِ ﷺ : لَا تَحَاسَدُوْا ، وَلَا تَنَاجَسُوْا ، وَلَا تَبَاغَضُوْا ، وَلَا تَدَابَرُوْا ، وَلَا يَبِعْ بَعْضُكُمْ عَلَىٰ بَيْعِ بَعْضٍ ، وَكُوْنُوْا عِبَادَ اللّٰهِ إِخْوَانًا ، اَلْمُسْلِمُ أَخُو الْمُسْلِمِ ، لَا يَظْلِمُهُ ، وَلَا يَخْذُلُهُ ، وَلَا يَكْذِبُهُ ، وَلَا يَحْقِرُهُ. التَّقْوَى هَاهُنَا – وَيُشِيْرُ إِلَىٰ صَدْرِهِ ثَلَاثَ مَرَّاتٍ - . بِحَسْبِ امْرِئٍ مِنَ الشَرِّ أَنْ يَحْقِرَ أَخَاهُ الْمُسْلِمَ. كُلُّ الْمُسْلِمِ عَلَى الْمُسْلِمِ حَرَامٌ: دَمُهُ وَمَالُهُ وَعِرْضُهُ.';
const kHadits35Terjemah =
    'Dari Abu Hurairah radhiyallaahu ‘anhu, ia berkata, “Rasulullah shallallaahu ‘alaihi wasallam bersabda, ‘Janganlah kalian saling mendengki, saling menipu harga dalam jual beli, saling membenci, saling memboikot, dan janganlah sebagian dari kalian saling menjatuhkan harga pada transaksi sebagian yang lain, jadilah kalian sebagai hamba-hamba Allah yang bersaudara. Orang muslim itu saudara bagi orang muslim lainnya, tidak boleh menzhaliminya, tidak boleh menerlantarkannya, tidak boleh mendustainya, dan tidak boleh menghinakannya. Taqwa itu di sini (beliau menunjuk kea rah dadanya tiga kali). Cukuplah kebusukan bagi seseorang jika ia menghina saudaranya semuslim. Darah, harta, dan kehormatan setiap muslim atas orang muslim (lainnya) adalah haram.’” (HR. Muslim)';
const kHadits36 =
    'عَنْ أَبِيْ هُرَيْرَةَ رَضِيَ اللّٰهُ عَنْهُ ، عَنِ النَّبِيِّ ﷺ قَالَ: مَنْ نَفَّسَ عَنْ مُؤْمِنٍ كُرْبَةً مِنْ كُرَبِ الدُّنْيَا ، نَفَّسَ اللّٰهُ عَنْهُ كُرْبَةً مِنْ كُرَبِ يَوْمِ الْقِيَامَةِ. وَمَنْ يَسَّرَ عَلَىٰ مُعْسِرٍ ، يَسَّرَ اللّٰهُ عَلَيْهِ فِي الدُّنْيَا وَالْآخِرَةِ. وَاللّٰهُ فِيْ عَوْنِ الْعَبْدِ ، مَا كَانَ الْعَبْدُ فِيْ عَوْنِ أَخِيْهِ. وَمَنْ سَلَكَ طَرِيْقًا يَلْتَمِسُ فِيْهِ عِلْمًا ، سَهَّلَ اللّٰهُ لَهُ بِهِ طَرِيْقًا إِلَى الْجَنَّةِ. وَمَا اجْتَمَعَ قَوْمٌ فِيْ بَيْتٍ مِنْ بُيُوْتِ اللّٰهِ ، يَتْلُوْنَ كِتَابَ اللّٰهِ ، وَيَتَدَارَسُوْنَهُ بَيْنَهُمْ ، إِلَّا نَزَلَتْ عَلَيْهِمُ السَّكِيْنَةُ ، وَغَشِيَتْهُمُ الرَّحْمَةُ ، وَحَفَّتْهُمُ الْمَلَائِكَةُ ، وَذَكَرَهُمُ اللّٰهُ فِيْمَنْ عِنْدَهُ. وَمَنْ بَطَّأَ بِهِ عَمَلُهُ ، لَمْ يُسْرِعْ بِهِ نَسَبُهُ.';
const kHadits36Terjemah =
    'Dari Abu Hurairah radhiyallaahu ‘anhu, dari Nabi shallallaahu ‘alaihi wasallam, bersabda, “Barang siapa yang melapangkan satu kesusahan dunia dari seorang mu’min, maka Allah akan melapangkan darinya satu kesusahan di Hari Kiamat. Barang siapa memudahkan (urusan) orang yang kesulitan (dalam masalah hutang), maka Allah memudahkan baginya (dari kesulitan) di dunia dan di akhirat. Barang siapa menutupi aib seorang muslim, maka Allah akan menutup aibnya di dunia dan di akhirat. Allah senantiasa menolong hamba-Nya, selama hamba itu menolong saudaranya. Barang siapa menempuh jalan untuk menuntut ilmu, maka Allah memudahkan jalan baginya menuju Surga. Tidaklah suatu kaum berkumpul di salah satu rumah Allah (masjid) untuk membaca Kitabullah dan mempelajarinya di antara mereka, melainkan akan turun kepada mereka ketenteraman, rahmat Allah meliputi mereka, para malaikat mengelilingi mereka, dan Allah menyanjung mereka di tengah para malaikat yang berada di sisi-Nya. Barang siapa yang lambat amalnya, maka tidak dapat dikejar oleh nasabnya.” (HR. Muslim dengan lafazh ini)';
const kHadits37 =
    'عَنِ بْنِ عَبَّاسٍ رَضِيَ اللّٰهُ عَنْهُمَا ، عَنْ رَسُوْلِ اللّٰهِ ﷺ فِيْمَا يَرْوِيْهِ عَنْ رَبِّهِ تَبَارَكَ وَتَعَالَىٰ ، قَالَ: إِنَّ اللّٰهُ كَتَبَ الْحَسَنَاتِ وَالسَّيِّئَاتِ ، ثُمَّ بَيَّنَ ذٰلِكَ ، فَمَنْ هَمَّ بِحَسَنَةٍ فَلَمْ يَعْمَلْهَا ، كَتَبَهَا اللّٰهُ عِنْدَهُ حَسَنَةً كَامِلَةً. وَإِنْ هَمَّ بِهَا فَعَمِلَهَا ، كَتَبَهَا اللّٰهُ عِنْدَهُ عَشْرَ حَسَنَاتٍ ، إِلَىٰ سَبْعِمِائَةِ  ضِعْفٍ ، إِلَىٰ أَضْعَافٍ كَثِيْرَةٍ. وَإِنْ هَمَّ بِسَيِّئَةٍ فَلَمْ يَعْمَلْهَا ، كَتَبَهَا اللّٰهُ عِنْدَهُ حَسَنَةً كَامِلَةً ، وَإِنْ هَمَّ بِهَا فَعَمِلَهَا ، كَتَبَهَا اللّٰهُ سَيِّئَةً وَاحِدَةً.';
const kHadits37Terjemah =
    'Dari Ibnu ‘Abbas radhiyallaahu ‘anhuma, dari Rasulullah shallallaahu ‘alaihi wasallam tentang hadits yang beliau riwayatkan dari Rabbnya Tabaaraka wa Ta’aala, beliau bersabda, “Sesungguhnya Allah menulis berbagai kebaikan dan kesalahan kemudian menjelaskan hal tersebut. Barang siapa berniat berbuat kebaikan lalu dia tidak mengerjakannya, maka Allah menulisnya di sisi-Nya sebagai kebaikan yang sempurna. Jika ia berniat berbuat kebaikan lalu mengerjakannya maka Allah menulisnya di sisi-Nya sebagai sepuluh kebaikan, sampai tujuh ratus kali lipat hingga berlipat-lipat banyaknya. Barang siapa berniat berbuat kesalahan tetapi ia tidak mengerjakannya, maka Allah akan menulisnya di sisi-Nya sebagai kebaikan yang sempurna, dan jika ia berniat berbuat kesalahan lalu ia mengerjakannya, maka Allah akan menulisnya sebagai satu kesalahan.” (HR. Al-Bukhari dan Muslim dalam kitab shahiih keduanya dengan redaksi seperti ini).';
const kHadits38 =
    'عَنْ أَبِيْ هُرَيْرَةَ رَضِيَ اللّٰهُ عَنْهُ قَالَ: قَالَ رَسُوْلُ اللّٰهِ ﷺ : إِنَّ اللّٰهَ تَعَالَىٰ قَالَ: مَنْ عَادَى لِيْ وَلِيًّا فَقَدْ آذَنْتُهُ بِالْحَرْبِ. وَمَا تَقَرَّبَ إِلَيَّ عَبْدِيْ بِشَيْءٍ أَحَبَّ إِلَيَّ مِمَّا افْتَرَضْتُهُ عَلَيْهِ. وَمَا يَزَالُ عَبْدِيْ يَتَقَرَّبُ إِلَيَّ بِالنَّوَافِلِ حَتَّىٰ أُحِبَّهُ. فَإِذَا  أَحبَبْتُهُ كُنْتُ سَمْعَهُ الَّذِيْ يَسْمَعُ بِهِ ، وَبَصَرَهُ الَّذِيْ يُبْصِرُ بِهِ ، وَيَدَهُ الَّتِيْ يَبْطِشُ بِهَا ، وَرِجْلَةُ الَّتِيْ يَمْشِيْ بِهَا. وَلَئِنْ سَأَلَنِيْ لَأُعْطِيَنَّهُ. وَلَئِنِ اسْتَعَاذَنِيْ لَأُعِيْذَنَّهُ.';
const kHadits38Terjemah =
    'Dari Abu Hurairah radhiyallaahu ‘anhu, ia berkata, “Rasulullah shallallaahu ‘alaihi wasallam bersabda, ‘Sesungguhnya Allah Ta’ala berfirman, ‘Barang siapa memusuhi wali-Ku, maka Aku mengumumkan perang kepadanya. Tidaklah hamba-Ku mendekatkan diri kepada-Ku dengan sesuatu yang lebih Aku cintai daripada apa yang Aku wajibkan kepada-Nya. Hamba-Ku senantiasa mendekatkan diri kepada-Ku dengan amalan-amalan sunnah hingga Aku mencintainya. Jika Aku telah mencintainya, maka Aku menjadi pendengarannya, yang ia gunakan untuk mendengar; menjadi penglihatannya, yang ia gunakan untuk melihat; menjadi tangannya, yang ia gunakan untuk berbuat; dan menjadi kakinya, yang ia gunakan untuk berjalan. Jika ia meminta kepada-Ku, pasti Aku memberinya, dan jika ia meminta perlindungan kepada-Ku, Aku pasti melindunginya.” (HR. Al-Bukhari)';
const kHadits39 =
    'عَنِ ابْنِ عَبَّاسٍ رَضِيَ اللّٰهُ عَنْهُمَا ، أَنَّ رَسُوْلَ اللّٰهِ ﷺ قَالَ: إِنَّ اللّٰهَ  تَجَاوَزَلِيْ عَنْ أُمَّتِي الْخَطَأَ ، وَالنِّسْيَانَ ، وَمَا اسْتُكْرِهُوْا عَلَيْهِ.';
const kHadits39Terjemah =
    'Dari Ibnu ‘Abbas radhiyallaahu ‘anhuma, bahwa Rasulullah shallallaahu ‘alaihi wasallam bersabda, “Sesungguhnya Allah memaafkan kesalahan (yang terjadi tanpa disengaja) dan (kesalahan karena) lupa dari umatku, dan apa saja yang dipaksakan terhadapnya.” (Hadits hasan, diriwayatkan pleh Ibnu Majah, Al-Baihaqi, dan selain keduanya).';
const kHadits40 =
    'عَنِ ابْنِ عُمَرَ رَضِيَ اللّٰهُ عَنْهُمَا قَالَ: أَخَذَ رَسُوْلُ اللّٰهِ ﷺ بِمَنْكِبَيَّ ، فَقَالَ: كُنْ فِي الدُّنْيَا كَأَنَّكَ غَرِيْبٌ أَوْ عَابِرُ سَبِيْلٍ. وَكَانَ ابْنُ عُمَرَ رَضِيَ اللّٰهُ عَنْهُمَا يَقُوْلُ: إِذَا أَمْسَيْتَ فَلَا تَنْتَظِرِ الصَّبَاحَ ، وَإِذَا أَصْبَحْتَ فَلَا تَنْتَظِرِ الْمَسَاءَ ، وَخُذْ مِنْ صِحَّتِكَ لِمَرَضِكَ ، وَمِنْ حَيَاتِكَ لِمَوْتِكَ.';
const kHadits40Terjemah =
    'Dari Ibnu ‘Umar radhiyallaahu ‘anhuma, ia berkata, “Rasulullah shallallaahu ‘alaihi wasallam memegang kedua pundakku lalu bersabda, ‘Jadilah engkau di dunia ini seakan-akan orang asing atau seorang musafir.’” Ibnu ‘Umar radhiyallaahu ‘anhuma melanjutkan, “Jika engkau berada di sore hari, maka janganlah engkau menunggu hingga pagi hari, dan jika engkau berada di pagi hari, maka janganlah engkau menunggu hingga sore hari. Pergunakanlah waktu sehatmu sebelum sakitmu dan waktu hidupmu sebelum matimu.” (HR. Al-Bukhari).';
const kHadits41 =
    'عَنْ أَبِيْ مُحَمَّدٍ عَبْدِ اللّٰهِ بْنِ عَمْرِ بْنِ الْعَاصِ رَضِيَ اللّٰهُ عَنْهُمَا قَالَ: قَالَ رَسُوْلُ اللّٰهِ ﷺ : لَا يُؤْمِنُ أَحَدُكُمْ حَتَّىٰ يَكُوْنَ هَوَاهُ تَبَعًا لِمَا جِئْتُ بِهِ.';
const kHadits41Terjemah =
    'Dari Abu Muhammad ‘Abdullah bin ‘Amr bin Al-‘Ash radhiyallaahu ‘anhuma, ia berkata, “Rasulullah shallallaahu ‘alaihi wasallam bersabda, ‘Tidak sempurna iman salah seorang dari kalian hingga hawa nafsunya mengikuti apa yang aku bawa.’” (Hadits hasan shahih, kami meriwayatkannya dalam kitab al-Hujjah dengan sanad yang shahih)';
const kHadits42 =
    'عَنْ أَنَسٍ رَضِيَ اللّٰهُ عَنْهُ قَالَ: سَمِعْتُ رَسُوْلَ اللّٰهِ ﷺ يَقُوْلُ: قَالَ اللّٰهُ تَعَالَىٰ: يَا ابْنَ آدَمَ! إِنَّكَ مَا دَعَوْتَنِيْ وَرَجَوْتَنِيْ غَفَرْتُ لَكَ عَلَىٰ مَا كَانَ مِنْكَ وَلَا أُبَا لِي. يَا ابْنَ آدَمَ! لَوْ بَلَغَتْ ذُنُوْبُكَ عَنَانَ السَّمَاءِ ، ثُمَّ اسْتَغْفَرْتَنِيْ غَفَرْتُ لَكَ. يَا ابْنَ آدَمَ! إِنَّكَ لَوْ أَتَيْتَنِيْ بِقُرَابِ الْأَرضِ خَطَايَا ثُمَّ لَقِيْتَنِيْ لَا تُشْرِكُ بِيْ شَيْئًا ، لَأَتَيْتُكَ بِقُرَابِهَا مَغْفِرَةً.';
const kHadits42Terjemah =
    'Dari Anas radhiyallaahu ‘anhu, ia berkata, “Aku mendengar Rasulullah shallallaahu ‘alaihi wasallam bersabda, ‘Allah Ta’ala berfirman, ‘Wahai anak Adam! Sesungguhnya selama engkau berdo’a dan berharap kepada-Ku, Aku akan mengampuni atas dosamu dan tidak Aku pedulikan lagi. Wahai anak Adam! Seandainya dosa-dosamu setinggi langit, kemudian engkau memohon ampun kepada-Ku, Aku akan mengampunimu. Wahai anak Adam! Sesungguhnya jika engkau datang kepada-ku dengan membawa dosa sepenuh bumi, kemudian engkau bertemu dengan-Ku dalam keadaan tidak mempersekutukan-Ku dengan sesuatupun, sungguh Aku akan datang kepadamu dengan ampunan sepenuh bumi pula.’’” (HR. At-Tirmidzi, dan ia berkata, “Hadits ini hasan shahih.”).';

const kJudulHadits1 = 'setiap amal tergantung dari niat';
const kJudulHadits2 = 'tingkatan agama Islam';
const kJudulHadits3 = 'rukun Islam';
const kJudulHadits4 = 'penciptaan manusia dan ketentuan takdirnya';
const kJudulHadits5 = 'larangan bid‘ah dalam agama';
const kJudulHadits6 = 'menjauhi hal-hal syubhat';
const kJudulHadits7 = 'agama adalah nasihat';
const kJudulHadits8 = 'haramnya darah dan harta seorang muslim';
const kJudulHadits9 = 'larangan bertanya untuk menyelisihi';
const kJudulHadits10 = 'sebab terkabulnya doa';
const kJudulHadits11 = 'tinggalkan hal yang meragukan';
const kJudulHadits12 = 'tinggalkan hal-hal yang tidak bermanfaat';
const kJudulHadits13 = 'mencintai saudara sebagai bentuk kesempurnaan iman';
const kJudulHadits14 = 'sebab halalnya darah seorang muslim';
const kJudulHadits15 = 'akhlak orang-orang beriman';
const kJudulHadits16 = 'larangan marah';
const kJudulHadits17 = 'sayangi binatang';
const kJudulHadits18 = 'bertaqwa kepada Allah dan berakhlak mulia';
const kJudulHadits19 = 'beriman kepada qadha dan qadar';
const kJudulHadits20 = 'pentingnya malu';
const kJudulHadits21 = 'beriman dan beristiqamah';
const kJudulHadits22 = 'jalan menuju surga';
const kJudulHadits23 = 'amalan-amalan kebaikan';
const kJudulHadits24 = 'karunia allah untuk hamba-Nya';
const kJudulHadits25 = 'setiap kebaikan adalah shadaqah';
const kJudulHadits26 = 'banyaknya jalan kebaikan';
const kJudulHadits27 = 'kebaikan dan dosa';
const kJudulHadits28 = 'wasiat rasulullah kepada umatnya';
const kJudulHadits29 = 'pintu-pintu kebaikan';
const kJudulHadits30 = 'menahan diri pada batasan-batasan syari\'at';
const kJudulHadits31 = 'keutamaan zuhud';
const kJudulHadits32 = 'larangan berbuat mudharat';
const kJudulHadits33 = 'penuduh wajib mendatangkan bukti';
const kJudulHadits34 = 'kewajiban mencegah kemunkaran';
const kJudulHadits35 = 'larangan saling dengki';
const kJudulHadits36 = 'memenuhi kebutuhan kaum muslimin';
const kJudulHadits37 = 'motivasi mengerjakan kebaikan';
const kJudulHadits38 = 'balasan bagi orang yang memusuhi wali Allah';
const kJudulHadits39 =
    'Allah memaafkan kesalahan yang tidak disengaja, lupa, dan dipaksa';
const kJudulHadits40 = 'hiduplah seakan orang asing atau musafir';
const kJudulHadits41 = 'kesempurnaan iman dengan mengikuti Nabi';
const kJudulHadits42 = 'luasnya ampunan Allah';
