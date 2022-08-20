  import 'package:flutter/services.dart';
  import 'package:flutter/material.dart';
  import 'package:splash_screen_view/SplashScreenView.dart';
  import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:myapp/src/teta_files/theme_cubit.dart';
  import 'package:sizer/sizer.dart';
  
  
  
  
  import 'package:myapp/src/pages/homepage/page.dart';
  import 'package:teta_cms/teta_cms.dart';

  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    TetaCMS.initialize(
      token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InNvbmV1aWszMEBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwicHJvamVjdHMiOlsxNTg5NjksMTM4NDM4LDEzODc4OCwxMzg0MzksMTQzNDMzLDEyMzg1NywxMjgwMDAsMTIwOTc0LDE1NDA2NCwxNTQwNjUsMTU4OTcxLDE1OTAwMCwxNTg0MzBdLCJpbWFnZSI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hL0FJdGJ2bWxaNHBYb3RubnZoZV9LaExkbmswR1B6SlN5ZDRJLVE2Yl9XVEp2PXM5Ni1jIiwibmFtZSI6IuyGkOydtOuLpCIsImVtaXR0ZXIiOiJUZXRhLUF1dGgiLCJpYXQiOjE2NjA4ODAxOTksImV4cCI6NDgxNjY0MDE5OX0.pQ6-mypnDW_XuWMBrW8a-5mRztwnbW4hMJtxtxF52Kg',
      prjId: 158971,
    );
    
    
    
    
    runApp(MyApp());
  }
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Sizer(
        builder: (
          final context,
          final orientation,
          final deviceType,
        ) =>  MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (final context) => ThemeCubit(),
          ),
        ],
        child: MaterialApp(
          title: 'K-pop',
            home: SplashScreenView(
              navigateRoute: PageHomePage(),
              duration: 2200,
              imageSize: 80,
             imageSrc: 'assets/teta-app.png',
             text: '',
             textType: TextType.NormalText,
             textStyle: TextStyle(
               fontSize: 30.0,
             ),
             backgroundColor: Colors.black,
            ),
          ),
        ),
      );
    }
  }
  