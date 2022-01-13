import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim/baseurl/base_app.dart';
import 'package:muslim/bookmark/bookmark.dart';
import 'package:muslim/bookmark/bookmark_data.dart';
import 'package:muslim/helper/remove_glow.dart';
import 'package:muslim/model/quran/quran.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:muslim/widget/appbar.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';
import 'package:vibration/vibration.dart';

class PageAyat extends StatefulWidget {
  final List<Quran> quran;
  final int index;
  final String surah;
  final int lastRead;
  const PageAyat({
    Key? key,
    required this.quran,
    required this.index,
    required this.surah,
    required this.lastRead,
  }) : super(key: key);
  @override
  _PageAyatState createState() => _PageAyatState();
}

class _PageAyatState extends State<PageAyat> {
  bool firsBuild = true;
  bool bookmarked = false;
  Color bgColor = ThemeColor.cyan;
  int selectedIndex = 0;
  get kBasmalah2 => null;
  @override
  void initState() {
    super.initState();
    firsBuild = true;
    bookmarked = false;
  }

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  void isBookMarked(int index1) {
    setState(() {
      if (!bookmarked) {
        bookmarked = true;
      } else {
        bookmarked = false;
      }
    });
  }

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
    List<Quran> bacaQuran = widget.quran;
    if ((widget.index != 0 && widget.index != 8) && firsBuild) {
      bacaQuran.insert(0, Quran(teks: kBasmalah2));
    }
    firsBuild = false;
    return Scaffold(
      backgroundColor: ThemeColor.colorBackground(context),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: MediaQuery.of(context).padding.top +
                  AppBar().preferredSize.height +
                  20,
              bottom: MediaQuery.of(context).padding.bottom + 10,
            ),
            child: ScrollConfiguration(
              behavior: RemoveGlow(),
              child: ScrollablePositionedList.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: bacaQuran.length,
                itemBuilder: (context, index) {
                  return StickyHeaderBuilder(
                    overlapHeaders: true,
                    builder: (BuildContext context, double stuckAmount) {
                      stuckAmount = 1.0 - stuckAmount.clamp(0.0, 1.0);
                      return Neumorphic(
                        style: NeumorphicStyle(
                          color: (widget.index == 0 || widget.index == 8)
                              ? ThemeColor.colorPrimary(context)
                              : index == 0
                                  ? ThemeColor.colorBackground(context)
                                  : ThemeColor.colorPrimary(context),
                          shadowLightColorEmboss:
                              ThemeColor.shadowLight(context),
                          shadowDarkColorEmboss: ThemeColor.shadowDark(context),
                          boxShape: NeumorphicBoxShape.roundRect(
                            const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(0),
                            ),
                          ),
                          depth: (widget.index == 0 || widget.index == 8)
                              ? -3
                              : index == 0
                                  ? 0
                                  : -3,
                        ),
                        margin: const EdgeInsets.all(8),
                        child: SizedBox(
                          width: 38,
                          height: 38,
                          child: Center(
                            child: (widget.index == 0 || widget.index == 8)
                                ? Text(
                                    '${index + 1}',
                                    style: TextStyle(
                                      color: ThemeColor.white,
                                      fontSize: 14,
                                    ),
                                  )
                                : index == 0
                                    ? null
                                    : Text(
                                        '$index',
                                        style: TextStyle(
                                          color: ThemeColor.white,
                                          fontSize: 14,
                                        ),
                                      ),
                          ),
                        ),
                      );
                    },
                    content: itemAyat(index),
                  );
                },
                itemScrollController: itemScrollController,
                itemPositionsListener: itemPositionsListener,
                initialScrollIndex: widget.lastRead,
              ),
            ),
          ),
          AppBarz(
            onClickLeft: () {
              Navigator.pop(context);
            },
            onClickRight: () {
              showInfoDialog(context: context);
            },
            title: widget.surah,
            subTitle: Func.getTime(Format.time_2),
            iconLeft: Icons.arrow_back,
            iconRight: Icons.info_outline,
          ),
        ],
      ),
    );
  }

  Widget itemAyat(int index) {
    return GestureDetector(
      onLongPress: () async {
        bool? vibrator = await Vibration.hasVibrator();
        if (vibrator!) {
          Vibration.vibrate(duration: 100, amplitude: 64);
        }
        Provider.of<BookMarkData>(
          context,
          listen: false,
        ).setBookMark(
          BookMark(
            indeksSurat: widget.index,
            indeksAyat: index,
          ),
        );
        setState(() {
          selectedIndex = index;
          isBookMarked(selectedIndex);
        });
        Alert(
            context: context,
            title: 'Bookmark Tersimpan',
            style: AlertStyle(
              backgroundColor: ThemeColor.colorBackground(context),
              titleStyle: TextStyle(
                color: ThemeColor.colorText(context),
                fontSize: 18,
              ),
            ),
            content: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    FontAwesomeIcons.bookOpen,
                    size: 50,
                    color: ThemeColor.colorPrimary(context),
                  ),
                ),
                widget.index == 0 || widget.index == 8
                    ? Text('${widget.surah} : ${index + 1}')
                    : Text('${widget.surah} : $index'),
              ],
            ),
            buttons: [
              DialogButton(
                color: ThemeColor.colorPrimary(context),
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'OK',
                  style: TextStyle(
                    color: ThemeColor.white,
                    fontSize: 18,
                  ),
                ),
              )
            ]).show();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 56),
        child: Neumorphic(
          style: NeumorphicStyle(
            color: ThemeColor.colorBackground(context),
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
            depth: (widget.index == 0 || widget.index == 8)
                ? -3
                : index == 0
                    ? 0
                    : -3,
          ),
          margin: const EdgeInsets.only(bottom: 10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(Size.size16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: (widget.index == 0 || widget.index == 8)
                          ? Text(
                              '${widget.quran[index].teks}',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                color: ThemeColor.colorText(context),
                                fontFamily: 'Indonesia',
                                height: 2.2,
                                fontSize: 18,
                              ),
                            )
                          : index == 0
                              ? Text(
                                  '[',
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ThemeColor.colorText(context),
                                    fontFamily: 'Basmalah',
                                    fontSize: 100.0,
                                  ),
                                )
                              : Text(
                                  '${widget.quran[index].teks}',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: ThemeColor.colorText(context),
                                    fontFamily: 'Indonesia',
                                    height: 2.2,
                                    fontSize: 18,
                                  ),
                                ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: Size.size8),
                      child: (widget.index == 0 || widget.index == 8)
                          ? Text(
                              '${widget.quran[index].terjemahan}',
                              style: TextStyle(
                                color: ThemeColor.colorText(context),
                                fontFamily: 'Indonesia',
                                height: 1.2,
                                fontSize: 16,
                              ),
                            )
                          : index == 0
                              ? null
                              : Text(
                                  '${widget.quran[index].terjemahan}',
                                  style: TextStyle(
                                    color: ThemeColor.colorText(context),
                                    fontFamily: 'Indonesia',
                                    height: 1.2,
                                    fontSize: 16,
                                  ),
                                ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showInfoDialog({
    required BuildContext context,
  }) {
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: ThemeColor.colorBackground(context),
        shape: Border(
          bottom: BorderSide(
            width: 5,
            color: ThemeColor.colorAccent(context),
          ),
        ),
        title: Text(
          'INFO',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ThemeColor.colorPrimary(context),
            fontSize: 24,
          ),
        ),
        content: SizedBox(
          height: 70,
          child: Center(
            child: Text(
              'Untuk mengubah bookmark, Klik dan tahan pada ayat yang mau anda pilih.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Fixed',
                fontSize: 18,
                color: ThemeColor.colorText(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
