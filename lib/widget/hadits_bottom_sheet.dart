import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:muslim/dzikir/bacaan_hadis.dart';
import 'package:muslim/helper/remove_glow.dart';
import 'package:muslim/screen/page_hadits.dart';
import 'package:muslim/theme/dark_theme_provider.dart';

class HaditsBottomSheet extends StatelessWidget {
  const HaditsBottomSheet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 5,
                width: 50,
                decoration: BoxDecoration(
                  color: ThemeColor.colorAccent(context),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'HADITS',
                style: TextStyle(
                  color: ThemeColor.colorText(context),
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: ScrollConfiguration(
            behavior: RemoveGlow(),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 42,
              itemBuilder: (context, index) {
                final item = BacaHadits().hadits[index].judul;
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageHadits(
                          index: index,
                        ),
                      ),
                    );
                  },
                  child: Neumorphic(
                    margin: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                    style: NeumorphicStyle(
                      color: ThemeColor.colorBackground(context),
                      shadowLightColorEmboss: ThemeColor.shadowLight(context),
                      shadowDarkColorEmboss: ThemeColor.shadowDark(context),
                      boxShape: NeumorphicBoxShape.roundRect(
                        const BorderRadius.all(
                          Radius.circular(18),
                        ),
                      ),
                      depth: -3,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            ThemeColor.colorPrimary(context),
                            ThemeColor.colorAccent(context),
                          ],
                        ),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundColor: ThemeColor.colorBackground(context),
                          child: Text(
                            '${index + 1}',
                            style: TextStyle(
                              color: ThemeColor.colorText(context),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        title: Text(
                          item.toUpperCase(),
                          style: TextStyle(
                            color: ThemeColor.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
