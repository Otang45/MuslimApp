// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:just_audio/just_audio.dart';
import 'package:muslim/baseurl/base_asset.dart';
import 'package:muslim/baseurl/base_style.dart';
import 'package:muslim/helper/remove_glow.dart';
import 'package:muslim/model/audio/audio.dart';
import 'package:muslim/screen/page_settings.dart';
import 'package:muslim/theme/dark_theme_provider.dart';
import 'package:muslim/baseurl/base_app.dart';
import 'package:muslim/widget/appbar.dart';

class PageAudio extends StatefulWidget {
  final audio;
  const PageAudio({Key? key, required this.audio}) : super(key: key);
  @override
  State<PageAudio> createState() => _PageAudioState();
}

class _PageAudioState extends State<PageAudio> {
  Audio? _activeAudio;
  int _audioIndex = -1;
  late AudioPlayer mediaPlayer;
  var _current = Duration.zero;
  var _buffer = Duration.zero;
  var _total = Duration.zero;
  @override
  void initState() {
    super.initState();
    mediaPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    super.dispose();
    mediaPlayer.dispose();
  }

  void startPlayAudio(int audioIndex) {
    setState(() {
      _audioIndex = audioIndex;
    });
    if (_audioIndex != -1 && _audioIndex < 144) {
      _activeAudio = widget.audio[_audioIndex];
    }
    initMediaPlayer();
  }

  void initMediaPlayer() async {
    try {
      await mediaPlayer.setAudioSource(
        AudioSource.uri(
          Uri.parse(
            _activeAudio!.url ??
                'https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3',
          ),
        ),
      );
      // ignore: empty_catches
    } catch (e) {}
  }

  void loadDuration() {
    mediaPlayer.positionStream.listen((current) {
      setState(() {
        _current = current;
      });
    });
    mediaPlayer.bufferedPositionStream.listen((buffer) {
      setState(() {
        _buffer = buffer;
      });
    });
    mediaPlayer.durationStream.listen((total) {
      setState(() {
        _total = total ?? Duration.zero;
      });
    });
    mediaPlayer.processingStateStream.listen((event) {
      if (event == ProcessingState.completed) {
        setState(() {
          _current = Duration.zero;
          _buffer = Duration.zero;
          _total = Duration.zero;
        });
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
    return Scaffold(
      backgroundColor: ThemeColor.colorBackground(context),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top +
                  AppBar().preferredSize.height,
              bottom: MediaQuery.of(context).padding.bottom + 10,
            ),
            child: Column(
              children: [
                Expanded(
                  child: ScrollConfiguration(
                    behavior: RemoveGlow(),
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 114,
                      itemBuilder: (context, index) =>
                          itemSurat(context, index),
                    ),
                  ),
                ),
                musicProgressBar(context),
                musicController(context),
              ],
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
            title: 'Murottal',
            subTitle: Func.getTime(Format.time_2),
            iconLeft: Icons.arrow_back,
            iconRight: Icons.settings_outlined,
          ),
        ],
      ),
    );
  }

  Widget itemSurat(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        startPlayAudio(index);
        loadDuration();
        mediaPlayer.play();
      },
      child: Neumorphic(
        style: NeumorphicStyle(
          color: index == _audioIndex
              ? ThemeColor.colorPrimary(context)
              : ThemeColor.colorBackground(context),
          shadowLightColorEmboss: ThemeColor.shadowLight(context),
          shadowDarkColorEmboss: ThemeColor.shadowDark(context),
          shadowLightColor: ThemeColor.shadowLight(context),
          shadowDarkColor: ThemeColor.shadowDark(context),
          boxShape: NeumorphicBoxShape.roundRect(
            const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          depth: index == _audioIndex ? -3 : 3,
        ),
        margin: const EdgeInsets.fromLTRB(24, 0, 24, 10),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                index == _audioIndex
                    ? ThemeColor.colorPrimary(context)
                    : ThemeColor.colorBackground(context),
                index == _audioIndex
                    ? ThemeColor.colorAccent(context)
                    : ThemeColor.colorBackground(context),
              ],
            ),
          ),
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Neumorphic(
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.only(right: 12),
                style: NeumorphicStyle(
                  color: index == _audioIndex
                      ? ThemeColor.colorBackground(context)
                      : ThemeColor.colorPrimary(context),
                  shadowLightColor: ThemeColor.shadowLight(context),
                  shadowDarkColor: ThemeColor.shadowDark(context),
                  shadowLightColorEmboss: ThemeColor.shadowLight(context),
                  shadowDarkColorEmboss: ThemeColor.shadowDark(context),
                  boxShape: NeumorphicBoxShape.roundRect(
                    const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  depth: index == _audioIndex ? 3 : -3,
                ),
                child: Container(
                  height: 32,
                  width: 32,
                  alignment: Alignment.center,
                  child: Text(
                    (index + 1).toString(),
                    style: TextStyle(
                        color: index == _audioIndex
                            ? ThemeColor.colorText(context)
                            : ThemeColor.white,
                        fontSize: 14),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    styleText(
                        '${widget.audio[index].namaLatin}',
                        Size.size16,
                        index == _audioIndex
                            ? ThemeColor.white
                            : ThemeColor.colorPrimary(context),
                        FontWeight.normal,
                        1,
                        null),
                    styleText(
                        '${widget.audio[index].terjemah}'
                        ' | '
                        '${widget.audio[index].jumlahAyat}'
                        ' ayat',
                        Size.size12,
                        index == _audioIndex
                            ? ThemeColor.white
                            : ThemeColor.colorText(context),
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
                  color: index == _audioIndex
                      ? ThemeColor.white
                      : ThemeColor.colorPrimary(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget musicController(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StreamBuilder<double>(
              stream: mediaPlayer.speedStream,
              builder: (context, snapshot) {
                return NeumorphicButton(
                  onPressed: () {
                    showSliderDialog(
                      context: context,
                      title: "Adjust Speed",
                      divisions: 10,
                      min: 0.5,
                      max: 1.5,
                      value: mediaPlayer.speed,
                      stream: mediaPlayer.speedStream,
                      onChanged: mediaPlayer.setSpeed,
                    );
                  },
                  style: NeumorphicStyle(
                    color: ThemeColor.colorBackground(context),
                    shape: NeumorphicShape.convex,
                    boxShape: const NeumorphicBoxShape.circle(),
                    shadowLightColor: ThemeColor.shadowLight(context),
                    shadowDarkColor: ThemeColor.shadowDark(context),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(
                    Icons.timelapse_rounded,
                    color: ThemeColor.colorText(context),
                    size: 24,
                  ),
                );
              }),
          NeumorphicButton(
            onPressed: () {
              if (_audioIndex == 0 || _audioIndex == -1) {
                mediaPlayer.stop();
              } else {
                setState(() {
                  _activeAudio = widget.audio[--_audioIndex];
                });
                initMediaPlayer();
                loadDuration();
                mediaPlayer.play();
              }
            },
            style: NeumorphicStyle(
              color: ThemeColor.colorBackground(context),
              shape: NeumorphicShape.convex,
              boxShape: const NeumorphicBoxShape.circle(),
              shadowLightColor: ThemeColor.shadowLight(context),
              shadowDarkColor: ThemeColor.shadowDark(context),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              Icons.skip_previous_rounded,
              color: ThemeColor.colorText(context),
              size: 28,
            ),
          ),
          playPause(),
          NeumorphicButton(
            onPressed: () {
              if (_audioIndex == 114 - 1) {
                mediaPlayer.stop();
              } else {
                setState(() {
                  _activeAudio = widget.audio[++_audioIndex];
                });
                initMediaPlayer();
                loadDuration();
                mediaPlayer.play();
              }
            },
            style: NeumorphicStyle(
              color: ThemeColor.colorBackground(context),
              shape: NeumorphicShape.convex,
              boxShape: const NeumorphicBoxShape.circle(),
              shadowLightColor: ThemeColor.shadowLight(context),
              shadowDarkColor: ThemeColor.shadowDark(context),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              Icons.skip_next_rounded,
              color: ThemeColor.colorText(context),
              size: 28,
            ),
          ),
          NeumorphicButton(
            onPressed: () {
              showSliderDialog(
                context: context,
                title: "Adjust Volume",
                divisions: 10,
                min: 0.0,
                max: 1.0,
                value: mediaPlayer.volume,
                stream: mediaPlayer.volumeStream,
                onChanged: mediaPlayer.setVolume,
              );
            },
            style: NeumorphicStyle(
              color: ThemeColor.colorBackground(context),
              shape: NeumorphicShape.convex,
              boxShape: const NeumorphicBoxShape.circle(),
              shadowLightColor: ThemeColor.shadowLight(context),
              shadowDarkColor: ThemeColor.shadowDark(context),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              Icons.volume_up_rounded,
              color: ThemeColor.colorText(context),
              size: 24,
            ),
          ),
        ],
      ),
    );
  }

  musicProgressBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
      child: ProgressBar(
        progress: _current,
        total: _total,
        buffered: _buffer,
        barHeight: 10,
        thumbColor: ThemeColor.colorAccent(context),
        progressBarColor: ThemeColor.colorPrimary(context),
        bufferedBarColor: ThemeColor.colorPrimary(context).withOpacity(0.2),
        timeLabelLocation: TimeLabelLocation.sides,
        timeLabelTextStyle: TextStyle(
          color: ThemeColor.colorText(context),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        onSeek: (value) {
          mediaPlayer.seek(value);
        },
      ),
    );
  }

  Widget playPause() {
    return StreamBuilder<PlayerState>(
      stream: mediaPlayer.playerStateStream,
      builder: (context, snapshot) {
        final playerState = snapshot.data;
        final processingState = playerState?.processingState;
        final playing = playerState?.playing;
        if (processingState == ProcessingState.loading ||
            processingState == ProcessingState.buffering) {
          return NeumorphicButton(
            onPressed: () {},
            style: NeumorphicStyle(
              color: ThemeColor.colorBackground(context),
              shape: NeumorphicShape.convex,
              boxShape: const NeumorphicBoxShape.circle(),
              shadowLightColor: ThemeColor.shadowLight(context),
              shadowDarkColor: ThemeColor.shadowDark(context),
              depth: -3,
            ),
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: 42,
              height: 42,
              child: CircularProgressIndicator(
                color: ThemeColor.colorPrimary(context),
              ),
            ),
          );
        } else if (playing != true) {
          return NeumorphicButton(
            onPressed: () {
              if (_audioIndex != -1) {
                mediaPlayer.play();
              }
            },
            style: NeumorphicStyle(
              color: ThemeColor.colorBackground(context),
              shape: NeumorphicShape.convex,
              boxShape: const NeumorphicBoxShape.circle(),
              shadowLightColor: ThemeColor.shadowLight(context),
              shadowDarkColor: ThemeColor.shadowDark(context),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              Icons.play_arrow_rounded,
              color: ThemeColor.colorText(context),
              size: 42,
            ),
          );
        } else if (processingState != ProcessingState.completed) {
          return NeumorphicButton(
            onPressed: () {
              mediaPlayer.pause();
            },
            style: NeumorphicStyle(
              color: ThemeColor.colorPrimary(context),
              shape: NeumorphicShape.convex,
              boxShape: const NeumorphicBoxShape.circle(),
              shadowLightColor: ThemeColor.shadowLight(context),
              shadowDarkColor: ThemeColor.shadowDark(context),
              depth: -3,
            ),
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              Icons.pause_rounded,
              color: ThemeColor.white,
              size: 42,
            ),
          );
        } else {
          loadDuration();
          return NeumorphicButton(
            onPressed: () {
              mediaPlayer.seek(Duration.zero);
              loadDuration();
            },
            style: NeumorphicStyle(
              color: ThemeColor.colorBackground(context),
              shape: NeumorphicShape.convex,
              boxShape: const NeumorphicBoxShape.circle(),
              shadowLightColor: ThemeColor.shadowLight(context),
              shadowDarkColor: ThemeColor.shadowDark(context),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              Icons.replay_rounded,
              color: ThemeColor.colorText(context),
              size: 42,
            ),
          );
        }
      },
    );
  }

  void showSliderDialog({
    required BuildContext context,
    required String title,
    required int divisions,
    required double min,
    required double max,
    String valueSuffix = '',
    required double value,
    required Stream<double> stream,
    required ValueChanged<double> onChanged,
  }) {
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: ThemeColor.colorBackground(context),
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ThemeColor.colorText(context),
            fontSize: 20,
          ),
        ),
        content: StreamBuilder<double>(
          stream: stream,
          builder: (context, snapshot) => SizedBox(
            height: 100.0,
            child: Column(
              children: [
                Text(
                  '${snapshot.data?.toStringAsFixed(1)}$valueSuffix',
                  style: TextStyle(
                    fontFamily: 'Fixed',
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: ThemeColor.colorText(context),
                  ),
                ),
                Slider(
                  divisions: divisions,
                  min: min,
                  max: max,
                  value: snapshot.data ?? value,
                  onChanged: onChanged,
                  activeColor: ThemeColor.colorPrimary(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
