import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:muslim/baseurl/base_app.dart';
import 'package:muslim/baseurl/base_asset.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class DialogProfil extends StatelessWidget {
  const DialogProfil({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          Center(
            child: Container(
              width: double.infinity,
              color: ThemeColor.colorBackground(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(BaseAsset.ppProfil),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(BaseAsset.ppProfil),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 16,
                              ),
                              child: Center(
                                child: Text(
                                  Profil.nama,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: Size.size16,
                                    color: ThemeColor.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: Size.size16,
                      top: Size.size16,
                      right: Size.size16,
                      bottom: Size.size16,
                    ),
                    child: Text(
                      Profil.desc,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: Size.size14,
                        color: ThemeColor.colorText(context),
                      ),
                    ),
                  ),
                  _itemSosmed(BaseAsset.instagram, Profil.instagram,
                      Profil.urlInstagram, context),
                  _itemSosmed(BaseAsset.whatsapp, Profil.whatsapp,
                      Profil.urlWhatsapp, context),
                  _itemSosmed(BaseAsset.facebook, Profil.facebook,
                      Profil.urlFacebook, context),
                  _itemSosmed(BaseAsset.github, Profil.github, Profil.urlGithub,
                      context),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: Size.size12,
                      horizontal: Size.size16,
                    ),
                    width: double.infinity,
                    child: MaterialButton(
                      color: ThemeColor.colorPrimary(context),
                      onPressed: () =>
                          Navigator.of(context, rootNavigator: true).pop(),
                      child: Text(
                        'Tutup',
                        style: TextStyle(
                          fontSize: Size.size16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _itemSosmed(var icon, var sosmed, var url, BuildContext context) {
    return InkWell(
      onTap: () => launch(url),
      child: Container(
          margin: EdgeInsets.symmetric(
              vertical: Size.size12, horizontal: Size.size16),
          child: Row(
            children: [
              Container(
                width: Size.size16,
                height: Size.size16,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(icon))),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: Size.size12),
                child: Text(
                  sosmed,
                  style: TextStyle(
                      fontSize: Size.size14,
                      color: ThemeColor.colorText(context)),
                ),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: ThemeColor.colorText(context),
                size: Size.size12,
              )
            ],
          )),
    );
  }
}
