import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/data/repositories/auth_repo.dart';
import 'package:newsapp/data/repositories/post_repo.dart';
import 'package:newsapp/data/repositories/repository.dart';
import 'package:newsapp/data/repositories/tag_repo.dart';
import 'core/constants/my_strings.dart';
import 'core/themes/app_themes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'presentation/screens/splash/splash_imports.dart';

void main() {
  runApp(RepositoryProvider(
    create: (context) => Repository(
        authRepo: AuthRepo(), tagsRepo: TagsRepo(), postRepo: PostRepo()),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return DissmissKeyboard(
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: MyStrings.appName,
              theme: AppThemes.lightTheme,
              darkTheme: AppThemes.darkTheme,
              themeMode: ThemeMode.system,
              home: const SplashScreen(),
            ),
          );
        });
  }
}

class DissmissKeyboard extends StatelessWidget {
  final Widget child;
  const DissmissKeyboard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: child,
    );
  }
}


//login validation to continue time 23:00