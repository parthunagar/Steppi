import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:steppi/utils/color_util.dart';

T darkModeBase<T>(bool isDark, {T? light, T? dark}) {
  T child;
  if (!isDark || dark == null) {
    child = light!;
  } else {
    child = dark;
  }
  return child;
}

class AppStyle extends StatelessWidget {
  final Widget child;

  const AppStyle({required this.child});

  /*
	 * COLOR SCHEME
	 */

  /*static const Color primaryColor = Color(0xFF494AE9);
	static const Color primaryColorDark = Color(0xFF3D3DC7);
	static const Color primaryColorLight = Color(0xFF6464E2);
	static const Color accentColor = Colors.tealAccent;
	*/

  // static const Color primaryColor = Color(0xFF293148);
  // static const Color accentColor = Color(0xFFFFB412);

  /// A material design text theme with dark glyphs based on Lato.
  ///
  /// This [TextTheme] provides color but not geometry (font size, weight, etc).
  ///
  /// This theme uses the Shy version of the font names.
  static const TextTheme blackLato = TextTheme(
    headline1: TextStyle(
        debugLabel: 'blackLato headline1',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.black54,
        decoration: TextDecoration.none),
    headline2: TextStyle(
        debugLabel: 'blackLato headline2',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.black54,
        decoration: TextDecoration.none),
    headline3: TextStyle(
        debugLabel: 'blackLato headline3',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.black54,
        decoration: TextDecoration.none),
    headline4: TextStyle(
        debugLabel: 'blackLato headline4',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.black54,
        decoration: TextDecoration.none),
    headline5: TextStyle(
        debugLabel: 'blackLato headline5',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.black87,
        decoration: TextDecoration.none),
    headline6: TextStyle(
        debugLabel: 'blackLato headline6',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.black87,
        decoration: TextDecoration.none),
    bodyText1: TextStyle(
        debugLabel: 'blackLato bodyText1',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.black87,
        decoration: TextDecoration.none),
    bodyText2: TextStyle(
        debugLabel: 'blackLato bodyText2',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.black87,
        decoration: TextDecoration.none),
    subtitle1: TextStyle(
        debugLabel: 'blackLato subtitle1',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.black87,
        decoration: TextDecoration.none),
    subtitle2: TextStyle(
        debugLabel: 'blackLato subtitle2',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.black,
        decoration: TextDecoration.none),
    caption: TextStyle(
        debugLabel: 'blackLato caption',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.black54,
        decoration: TextDecoration.none),
    button: TextStyle(
        debugLabel: 'blackLato button',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.black87,
        decoration: TextDecoration.none),
    overline: TextStyle(
        debugLabel: 'blackLato overline',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.black,
        decoration: TextDecoration.none),
  );

  /// A material design text theme with light glyphs based on Lato.
  ///
  /// This [TextTheme] provides color but not geometry (font size, weight, etc).
  ///
  /// This theme uses the Shy version of the font names.
  static const TextTheme whiteLato = TextTheme(
    headline1: TextStyle(
        debugLabel: 'whiteLato headline1',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.white70,
        decoration: TextDecoration.none),
    headline2: TextStyle(
        debugLabel: 'whiteLato headline2',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.white70,
        decoration: TextDecoration.none),
    headline3: TextStyle(
        debugLabel: 'whiteLato headline3',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.white70,
        decoration: TextDecoration.none),
    headline4: TextStyle(
        debugLabel: 'whiteLato headline4',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.white70,
        decoration: TextDecoration.none),
    headline5: TextStyle(
        debugLabel: 'whiteLato headline5',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.white,
        decoration: TextDecoration.none),
    headline6: TextStyle(
        debugLabel: 'whiteLato headline6',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.white,
        decoration: TextDecoration.none),
    subtitle1: TextStyle(
        debugLabel: 'whiteLato subtitle1',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.white,
        decoration: TextDecoration.none),
    bodyText1: TextStyle(
        debugLabel: 'whiteLato bodyText1',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.white,
        decoration: TextDecoration.none),
    bodyText2: TextStyle(
        debugLabel: 'whiteLato bodyText2',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.white,
        decoration: TextDecoration.none),
    caption: TextStyle(
        debugLabel: 'whiteLato caption',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.white70,
        decoration: TextDecoration.none),
    button: TextStyle(
        debugLabel: 'whiteLato button',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.white,
        decoration: TextDecoration.none),
    subtitle2: TextStyle(
        debugLabel: 'whiteLato subtitle2',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.white,
        decoration: TextDecoration.none),
    overline: TextStyle(
        debugLabel: 'whiteLato overline',
        fontFamily: 'Lato',
        inherit: true,
        color: Colors.white,
        decoration: TextDecoration.none),
  );

  /*
	 * FONT STYLE - Light
	 */
  static TextTheme lightText = ThemeData.light().textTheme.copyWith(
        headline1: const TextStyle(
          fontSize: 96.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w800,
        ),
        headline2: const TextStyle(
          fontSize: 60.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w800,
        ),
        headline3: const TextStyle(
          fontSize: 48.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w800,
        ),
        headline4: const TextStyle(
          fontSize: 34.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w800,
        ),
        headline5: const TextStyle(
          fontSize: 24.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w800,
        ),
        headline6: const TextStyle(
          fontSize: 20.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w800,
        ),
        subtitle1: const TextStyle(
          fontSize: 16.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w700,
        ),
        subtitle2: const TextStyle(
          fontSize: 14.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w700,
        ),
        bodyText1: const TextStyle(
          fontSize: 16.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
        bodyText2: const TextStyle(
          fontSize: 14.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
        button: const TextStyle(
          fontSize: 14.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
        caption: const TextStyle(
          fontSize: 12.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
        overline: const TextStyle(
          fontSize: 10.0,
          fontFamily: 'Lato',
          color: AppColor.whiteColor,
          fontWeight: FontWeight.w400,
        ),
      );

  /*
	 * FONT STYLE - Dark
	 */
  static TextTheme darkText = ThemeData.dark().textTheme.copyWith(
        headline1: const TextStyle(
          fontSize: 96.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w800,
        ),
        headline2: const TextStyle(
          fontSize: 60.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w800,
        ),
        headline3: const TextStyle(
          fontSize: 48.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w800,
        ),
        headline4: const TextStyle(
          fontSize: 34.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w800,
        ),
        headline5: const TextStyle(
          fontSize: 24.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w800,
        ),
        headline6: const TextStyle(
          fontSize: 20.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w800,
        ),
        subtitle1: const TextStyle(
          fontSize: 16.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w700,
        ),
        subtitle2: const TextStyle(
          fontSize: 14.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w700,
        ),
        bodyText1: const TextStyle(
          fontSize: 16.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
        bodyText2: const TextStyle(
          fontSize: 14.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
        button: const TextStyle(
          fontSize: 14.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
        caption: const TextStyle(
          fontSize: 12.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
        overline: const TextStyle(
          fontSize: 10.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
      );

  static ThemeData primaryDarkTheme = darkTheme.copyWith(
    appBarTheme: darkTheme.appBarTheme.copyWith(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: AppColor.primaryColor,
      elevation: 0,
      centerTitle: false,
      textTheme: darkText,
    ),
  );

  static ThemeData primaryLightTheme = lightTheme.copyWith(
    appBarTheme: lightTheme.appBarTheme.copyWith(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: AppColor.primaryColor,
      elevation: 0,
      centerTitle: false,
      textTheme: darkText,
    ),
  );

  /*
	 *  LIGHT THEME
	 */
  static ThemeData lightTheme = ThemeData(
    // brightness: Brightness.light,
    fontFamily: 'Lato',
    textTheme: whiteLato,    
    primaryColor: AppColor.primaryColor,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColor.primaryColor,
      primaryContainer: AppColor.primaryColor,
      secondary: AppColor.accentColor,
      secondaryContainer: AppColor.accentColor,
      error: Colors.red,
      surface: Colors.white,
      background: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onError: Colors.white,
      onSurface: Colors.black,
      onBackground: Colors.black,
    ),
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: AppColor.scaffoldBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: ThemeData.light().iconTheme,
    toggleableActiveColor: AppColor.accentColor,
    appBarTheme: ThemeData.light().appBarTheme.copyWith(
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: false,
          textTheme: lightText,
        ),
    bottomNavigationBarTheme:
        ThemeData.light().bottomNavigationBarTheme.copyWith(
              backgroundColor: Colors.white,
              selectedItemColor: AppColor.primaryColor,
            ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      fillColor: Colors.white,
      focusColor: AppColor.primaryColor,
      labelStyle: const TextStyle(color: Colors.black),
      hintStyle: const TextStyle(color: AppColor.greyColor),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: Colors.grey,
          width: 1,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: Colors.grey,
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: AppColor.primaryColor,
          width: 2,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: Colors.red,
          width: 2,
        ),
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      errorStyle: const TextStyle(color: Colors.red),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: Colors.red,
          width: 2,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(
          color: Colors.grey.shade400,
        ),
      ),
    ),
    cardTheme: ThemeData.light().cardTheme,
    cardColor: ThemeData.light().cardColor,
    buttonTheme: ThemeData.light().buttonTheme.copyWith(
          buttonColor: AppColor.primaryColor,
          colorScheme: const ColorScheme(
            primary: AppColor.primaryColor,
            primaryContainer: AppColor.primaryColor,
            secondary: AppColor.accentColor,
            secondaryContainer: AppColor.accentColor,
            surface: AppColor.primaryColor,
            background: AppColor.primaryColor,
            error: Colors.red,
            onPrimary: AppColor.primaryColor,
            onSecondary: AppColor.primaryColor,
            onSurface:AppColor.primaryColor,
            onBackground: AppColor.primaryColor,
            onError: Colors.red,
            brightness: Brightness.light,
          ),
        ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        primary: AppColor.primaryColor,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        primary: AppColor.primaryColor,
      ),
    ),
  );

  /*
	 *  Dark THEME
	 */
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Lato',
    textTheme:  blackLato,
    primaryColor: AppColor.primaryColor,
    scaffoldBackgroundColor: AppColor.scaffoldBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: ThemeData.dark().iconTheme,
    appBarTheme: ThemeData.dark().appBarTheme.copyWith(
          color: Colors.black,
          elevation: 1,
          centerTitle: false,
          textTheme: darkText,
        ),
    bottomNavigationBarTheme:
        ThemeData.dark().bottomNavigationBarTheme.copyWith(
              backgroundColor: Colors.black,
              selectedItemColor: AppColor.primaryColor,
            ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      labelStyle: const TextStyle(color: Colors.black),
      hintStyle: const TextStyle(color: AppColor.greyColor),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: Colors.grey,
          width: 2,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: Colors.grey,
          width: 2,
        ),
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      errorStyle: const TextStyle(color: Colors.red),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: Colors.red,
        ),
      ),
      focusColor: Colors.white,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: const BorderSide(
          color:  AppColor.primaryColor,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: Colors.red,
          width: 2,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Colors.grey.shade400,
        ),
      ),
    ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColor.accentColor),
  );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppStyle.lightTheme,
      child: child,
    );
  }
}
