import 'package:flutter/material.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:myapp/src/teta_files/teta_theme.dart';
import 'package:myapp/src/teta_files/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';
import 'package:myapp/src/components/index.dart';
import 'package:myapp/auth/auth_state.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:teta_cms/teta_cms.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PageHomePage extends StatefulWidget {
  const PageHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _StateHomePage createState() => _StateHomePage();
}

class _StateHomePage extends State<PageHomePage> {
  var datasets = <String, dynamic>{};
  int index = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();


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
            left: false,
            top: true,
            right: false,
            bottom: false,
            child: Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              width: double.maxFinite,
              height: 150.h,
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
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 2,
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  childAspectRatio: 1,
                ),
                shrinkWrap: false,
                primary: true,
                children: [
                  GestureDetector(
                    onTap: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageVideoPlayer(),
                        ),
                      );
                    },
                    onDoubleTap: () async {},
                    onLongPress: () async {},
                    child: Padding(
                      padding: EdgeInsets.zero,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            r'''https://i.ytimg.com/vi/7C2z4GqqS5E/sddefault.jpg''',
                            width: double.maxFinite,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: EdgeInsets.zero,
                            child: Text(
                              r'''BTS (방탄소년단) 'FAKE LOVE' Official MV''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFF000000).withOpacity(1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageVideoPlayer(),
                        ),
                      );
                    },
                    onDoubleTap: () async {},
                    onLongPress: () async {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          r'''https://i.ytimg.com/vi/p4RIhcY7V3c/sddefault.jpg''',
                          width: double.maxFinite,
                          height: 140,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          r'''(여자)아이들((G)I-DLE) - 'LATATA' Official Music Video''',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFF000000).withOpacity(1),
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        r'''https://i.ytimg.com/vi/Oyf5o1zWMd0/sddefault.jpg''',
                        width: double.maxFinite,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        r'''여자친구 GFRIEND - 밤 (Time For The Moon Night) M/V''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF000000).withOpacity(1),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        r'''https://i.ytimg.com/vi/i0p1bmr0EmE/sddefault.jpg''',
                        width: double.maxFinite,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        r'''TWICE \\"What is Love?\\" M/V''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF000000).withOpacity(1),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        r'''https://i.ytimg.com/vi/gZItyr1SNjU/sddefault.jpg''',
                        width: double.maxFinite,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        r'''[M/V] SEVENTEEN(세븐틴) - 고맙다(THANKS)''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF000000).withOpacity(1),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        r'''https://i.ytimg.com/vi/Lznx5A7fNto/sddefault.jpg''',
                        width: double.maxFinite,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        r'''(MV)오마이걸(OH MY GIRL)_비밀정원(Secret Garden)''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF000000).withOpacity(1),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        r'''https://i.ytimg.com/vi/z4dH6hEMuwk/sddefault.jpg''',
                        width: double.maxFinite,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        r'''PENTAGON(펜타곤) - '빛나리(Shine)' Official Music Video''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF000000).withOpacity(1),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        r'''https://i.ytimg.com/vi/LjUXm0Zy_dk/sddefault.jpg''',
                        width: double.maxFinite,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        r'''[MV] 마마무(MAMAMOO) - 별이 빛나는 밤(Starry night)''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF000000).withOpacity(1),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
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
          ),
        ],
      ),
    );
  }
}
