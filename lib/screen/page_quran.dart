// ignore_for_file: prefer_typing_uninitialized_variables, unnecessary_null_comparison
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim/baseurl/base_app.dart';
import 'package:muslim/baseurl/base_asset.dart';
import 'package:muslim/baseurl/base_style.dart';
import 'package:muslim/bookmark/bookmark.dart';
import 'package:muslim/bookmark/bookmark_data.dart';
import 'package:muslim/helper/remove_glow.dart';
import 'package:muslim/model/quran/quran.dart';
import 'package:muslim/screen/page_settings.dart';
import 'package:muslim/screen/paget_ayat.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:muslim/widget/appbar.dart';
import 'package:provider/provider.dart';

class PageQuran extends StatelessWidget {
  final surah;
  const PageQuran({Key? key, this.surah}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: ThemeColor.colorBackground(context),
        statusBarBrightness: ThemeColor.brightness(context),
        statusBarIconBrightness: ThemeColor.brightness(context),
        systemNavigationBarColor: ThemeColor.colorBackground(context),
        systemNavigationBarIconBrightness: ThemeColor.brightness(context),
      ),
    );
    var provider = Provider.of<BookMark>(context, listen: true);
    var provider2 = Provider.of<BookMarkData>(context, listen: true);
    return Scaffold(
      backgroundColor: ThemeColor.colorBackground(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        materialTapTargetSize: MaterialTapTargetSize.padded,
        backgroundColor: ThemeColor.colorBackground(context),
        label: provider.indeksAyat == null && provider2.surat == null
            ? Text(
                '${surah[0].namaLatin} : 1',
                style: TextStyle(
                  color: ThemeColor.colorAccent(context),
                  fontSize: 16,
                ),
              )
            : provider2.surat == null
                ? provider.indeksSurat == 0 || provider.indeksSurat == 8
                    ? Text(
                        '${surah[provider.indeksSurat].namaLatin} : ${provider.indeksAyat + 1}',
                        style: TextStyle(
                          color: ThemeColor.colorAccent(context),
                          fontSize: 16,
                        ),
                      )
                    : Text(
                        '${surah[provider.indeksSurat].namaLatin} : ${provider.indeksAyat}',
                        style: TextStyle(
                          color: ThemeColor.colorAccent(context),
                          fontSize: 16,
                        ),
                      )
                : provider2.surat == 0 || provider2.surat == 8
                    ? Text(
                        '${surah[provider2.surat].namaLatin} : ${provider2.ayat + 1}',
                        style: TextStyle(
                          color: ThemeColor.colorAccent(context),
                          fontSize: 16,
                        ),
                      )
                    : Text(
                        '${surah[provider2.surat].namaLatin} : ${provider2.ayat}',
                        style: TextStyle(
                          color: ThemeColor.colorAccent(context),
                          fontSize: 16,
                        ),
                      ),
        icon: Icon(
          FontAwesomeIcons.bookOpen,
          color: ThemeColor.colorText(context),
          size: 18,
        ),
        onPressed: () async {
          var quran = await Quran().bukaQuran(
            index: provider2.surat == null && provider.indeksAyat == null
                ? 0
                : provider2.surat,
          );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  provider.indeksAyat == null && provider2.surat == null
                      ? PageAyat(
                          quran: quran,
                          index: 0,
                          surah: '${surah[0].namaLatin}',
                          lastRead: 0,
                        )
                      : provider2.surat == null
                          ? PageAyat(
                              quran: quran,
                              index: provider.indeksSurat,
                              surah: '${surah[provider.indeksSurat].namaLatin}',
                              lastRead: provider.indeksAyat,
                            )
                          : PageAyat(
                              quran: quran,
                              index: provider2.surat,
                              surah: '${surah[provider2.surat].namaLatin}',
                              lastRead: provider2.ayat,
                            ),
            ),
          );
        },
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top +
                  AppBar().preferredSize.height,
              bottom: MediaQuery.of(context).padding.bottom + 10,
            ),
            child: ScrollConfiguration(
              behavior: RemoveGlow(),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 114,
                itemBuilder: (context, index) => itemSurat(context, index),
              ),
            ),
          ),
          AppBarz(
            onClickLeft: () {
              Navigator.pop(context);
            },
            onClickRight: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PageSettings(),
                ),
              );
            },
            title: 'Al-Qur\'an',
            subTitle: Func.getTime(Format.time_2),
            iconLeft: Icons.arrow_back,
            iconRight: Icons.settings_outlined,
          ),
        ],
      ),
    );
  }

  Widget itemSurat(BuildContext context, int index) {
    final item = surah[index];
    return GestureDetector(
      onTap: () async {
        var quran = await Quran().bukaQuran(index: index);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PageAyat(
              quran: quran,
              index: index,
              surah: '${item.namaLatin}',
              lastRead: 0,
            ),
          ),
        );
      },
      child: Neumorphic(
        style: NeumorphicStyle(
          color: ThemeColor.colorPrimary(context),
          shadowLightColorEmboss: ThemeColor.shadowLight(context),
          shadowDarkColorEmboss: ThemeColor.shadowDark(context),
          boxShape: NeumorphicBoxShape.roundRect(
            const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          depth: -3,
        ),
        margin: const EdgeInsets.fromLTRB(24, 10, 24, 0),
        child: Container(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                ThemeColor.colorPrimary(context),
                ThemeColor.colorAccent(context),
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Neumorphic(
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.only(right: 12),
                style: NeumorphicStyle(
                  color: ThemeColor.colorBackground(context),
                  shadowLightColor: ThemeColor.shadowLight(context),
                  shadowDarkColor: ThemeColor.shadowDark(context),
                  boxShape: NeumorphicBoxShape.roundRect(
                    const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  depth: 3,
                ),
                child: Container(
                  height: 32,
                  width: 32,
                  alignment: Alignment.center,
                  child: Text(
                    (index + 1).toString(),
                    style: TextStyle(
                        color: ThemeColor.colorText(context), fontSize: 14),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    styleText('${item.namaLatin}', Size.size16,
                        ThemeColor.white, FontWeight.normal, 1, null),
                    styleText(
                        '${item.terjemah}' ' | ' '${item.jumlahAyat}' ' ayat',
                        Size.size12,
                        ThemeColor.white,
                        FontWeight.normal,
                        2,
                        null),
                  ],
                ),
              ),
              SizedBox(
                height: Size.size32,
                child: Image.asset(
                  BaseAsset.imagesSurat[index],
                  color: ThemeColor.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
