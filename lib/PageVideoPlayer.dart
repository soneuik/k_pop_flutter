import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PageVideoPlayer extends StatefulWidget {
  const PageVideoPlayer({
    Key? key,
  }) : super(key: key);

  @override
  _StateVideoPlayer createState() => _StateVideoPlayer();
}

class _StateVideoPlayer extends State<PageVideoPlayer> {
  var datasets = <String, dynamic>{};
  int index = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    final _controller = YoutubePlayerController(
      params: YoutubePlayerParams(
        startAt: Duration(seconds: 30),
        autoPlay: true,
      ),
    );

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          SafeArea(
            left: true,
            top: true,
            right: true,
            bottom: false,
            child: Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF).withOpacity(1),
                border: Border(
                  left: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                      color: Color(0xFF000000).withOpacity(1)),
                  top: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                      color: Color(0xFF000000).withOpacity(1)),
                  right: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                      color: Color(0xFF000000).withOpacity(1)),
                  bottom: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                      color: Color(0xFF000000).withOpacity(1)),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.zero,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    YoutubePlayerIFrame(
                      controller: YoutubePlayerController(
                        params: YoutubePlayerParams(
                          startAt: Duration(seconds: 0),
                          showControls: true,
                          showFullscreenButton: true,
                          loop: true,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 10,
                        right: 10,
                        bottom: 10,
                      ),
                      child: SizedBox(
                        width: 80,
                        height: 10,
                        child: Text(
                          r'''BTS (방탄소년단) 'FAKE LOVE' Official MV''',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFF000000).withOpacity(1),
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            r'''1,138,496,271 views''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFF000000).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                          ),
                          Text(
                            r'''2018-05-18''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFF000000).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      width: double.maxFinite,
                      height: 3,
                      decoration: BoxDecoration(
                        color: Color(0xFFE663D3).withOpacity(1),
                        border: Border(
                          left: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                              color: Color(0xFF000000).withOpacity(1)),
                          top: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                              color: Color(0xFF000000).withOpacity(1)),
                          right: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                              color: Color(0xFF000000).withOpacity(1)),
                          bottom: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                              color: Color(0xFF000000).withOpacity(1)),
                        ),
                      ),
                      child: const SizedBox(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Icon(
                                MdiIcons.fromString('repeat-variant'),
                                size: 24,
                                color: Color(0xFF000000).withOpacity(1),
                              ),
                              Text(
                                r'''Repeat''',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Color(0xFF000000).withOpacity(1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                MdiIcons.fromString('share-variant'),
                                size: 24,
                                color: Color(0xFF000000).withOpacity(1),
                              ),
                              Text(
                                r'''Share''',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Color(0xFF000000).withOpacity(1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                MdiIcons.fromString('cards-heart'),
                                size: 24,
                                color: Color(0xFF000000).withOpacity(1),
                              ),
                              Text(
                                r'''Favorite''',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Color(0xFF000000).withOpacity(1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 10,
                        right: 10,
                        bottom: 10,
                      ),
                      child: SizedBox(
                        width: 150,
                        height: 50,
                        child: NotificationListener<ScrollEndNotification>(
                          onNotification: (final scrollEnd) {
                            final metrics = scrollEnd.metrics;
                            if (metrics.atEdge) {
                              final isTop = metrics.pixels == 0;
                              if (isTop) {
                              } else {}
                            }
                            return true;
                          },
                          child: ListView(
                            reverse: false,
                            primary: true,
                            physics: const AlwaysScrollableScrollPhysics(),
                            children: [
                              Text(
                                r'''BTS (방탄소년단) 'FAKE LOVE' Official MV\\n\\n\\nDirector : YongSeok Choi (Lumpens)\\nAssistant Director : WonJu Lee, Guzza, HyeJeong Park, MinJe Jeong (Lumpens)\\nDirector of Photography : HyunWoo Nam(GDW)\\nGaffer : HyunSuk Song (Real Lighting)\\nArt Director : JinSil Park Bona Kim (MU:E)\\nConstruction Manager : SukKi Song \\nSpecial Effect : Demolition\\n\\n\\nBigHit Entertainment. Rights are reserved selectively in the video.\\nUnauthorized reproduction is a violation of applicable laws. \\nManufactured by BigHit Entertainment, Seoul, Korea\\n\\n\\nConnect with BTS:\\nhttp://www.ibighit.com \\nhttp://twitter.com/BTS_bighit \\nhttp://twitter.com/BTS_twt \\nhttps://www.facebook.com/ibighit/\\nhttp://www.facebook.com/bangtan.official\\nhttp://instagram.com/BTS.bighitofficial\\nhttp://weibo.com/BTSbighit\\n\\nBU content certified by Big Hit Entertainment''',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Color(0xFF000000).withOpacity(1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
