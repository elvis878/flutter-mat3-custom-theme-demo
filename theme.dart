import 'package:flutter/material.dart';

class AppTheme {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  AppTheme._();

  // Fonts
  static const String fontFamily = 'Montserrat';

  // General colors which can be used across the app
  static const Color primaryColor = Color(0xff164068);
  static const Color primaryContrastColor = Color(0xffffffff);
  static const Color secondaryColor = Color(0xff4a545e);
  static const Color secondaryConstrastColor = Color(0xffffffff);
  static const Color tertiaryColor = Color(0xff20798d);
  static const Color tertiaryConstrastColor = Color(0xffffffff);
  static const Color errorColor = Color(0xfff34141);
  static const Color errorConstrastColor = Color(0xffffffff);
  static const Color warningColor = Color(0xfff6ba48);
  static const Color warningContrastColor = Color(0xff000000);
  static const Color successColor = Color(0xff45e371);
  static const Color successContrastColor = Color(0xff000000);
  static const Color linkColor = Color(0xff3587d4);
  static const Color linkContrastColor = Color(0xffffffff);

  // Widget specific colors
  static const Color chipBackgroundColor = Color(0xff444444);
  static const Color chipTextColor = Color(0xffffffff);

  // Light theme related colors
  static const Color lightBackgroundColor = Color(0xffeeeeee);
  static const Color lightTextColor = Color(0xff111111);
  static const Color lightAppBarBackgroundColor = Color(0xffffffff);
  static const Color lightAppBarTextColor = Color(0xff000000);
  static const Color lightAppBarIconColor = Color(0xff000000);
  static const Color lightAppBarIconInactiveColor = Color(0xff707070);
  static const Color lightCardBackgroundColor = Color(0xffffffff);

  // Dark theme related colors
  static const Color darkBackgroundColor = Color(0xff1e1f21);
  static const Color darkTextColor = Color(0xffdddddd);
  static const Color darkPrimaryColor = Color(0xff0096d6);
  static const Color darkPrimaryContrastColor = Color(0xffffffff);
  static const Color darkAppBarBackgroundColor = Color(0xff111212);
  static const Color darkAppBarTextColor = Color(0xffffffff);
  static const Color darkAppBarIconColor = Color(0xffffffff);
  static const Color darkAppBarIconInactiveColor = Color(0xff7d7e80);
  static const Color darkCardBackgroundColor = Color(0xff111212);

  // Color schemes
  // Ussage: Theme.of(context).colorScheme.primary
  static final ColorScheme _lightColorScheme = ColorScheme(
    primary: primaryColor,
    secondary: secondaryColor,
    tertiary: tertiaryColor,
    error: errorColor,
    onPrimary: primaryContrastColor,
    onSecondary: secondaryConstrastColor,
    onTertiary: tertiaryConstrastColor,
    onError: errorConstrastColor,
    surface: lightBackgroundColor,
    background: lightBackgroundColor,
    onSurface: lightTextColor.withOpacity(0.7),
    onBackground: lightTextColor.withOpacity(0.2),
    brightness: Brightness.light,
  );
  static final ColorScheme _darkColorScheme = ColorScheme(
    primary: darkPrimaryColor,
    secondary: secondaryColor,
    tertiary: tertiaryColor,
    error: errorColor,
    onPrimary: darkPrimaryContrastColor,
    onSecondary: secondaryConstrastColor,
    onTertiary: tertiaryConstrastColor,
    onError: errorConstrastColor,
    surface: darkBackgroundColor,
    background: darkBackgroundColor,
    onSurface: darkTextColor.withOpacity(0.7),
    onBackground: darkTextColor.withOpacity(0.2),
    brightness: Brightness.dark,
  );

  // Custom text styles
  static const TextStyle textStyleTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: -1.5,
  );
  static const TextStyle textStyleSubHeading = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.5,
  );
  static const TextStyle textStyleParagraph = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.25,
    letterSpacing: 0,
  );
  static const TextStyle textStyleCaption = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.072,
    letterSpacing: 0,
  );
  static const TextStyle textStyleNotification = TextStyle(
    fontFamily: fontFamily,
    fontSize: 8,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  );
  static const TextStyle textStyleHyperlink = TextStyle(
    color: linkColor,
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );

  static const TextStyle _bottomNavBarLabel = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 1.6,
  );

  // Button themes
  static final ElevatedButtonThemeData _lightElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      foregroundColor: primaryContrastColor,
    ),
  );
  static final ElevatedButtonThemeData _darkElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: darkPrimaryColor,
      foregroundColor: darkPrimaryContrastColor,
    ),
  );
  static final OutlinedButtonThemeData _lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: primaryColor,
      side: const BorderSide(
        color: primaryColor,
      ),
    ),
  );
  static final OutlinedButtonThemeData _darkOutlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: darkPrimaryColor,
      side: const BorderSide(
        color: darkPrimaryColor,
      ),
    ),
  );

  // Card theme
  static final CardTheme _cardTheme = CardTheme(
    color: lightCardBackgroundColor,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  );

  // Chip theme
  static final ChipThemeData _chipTheme = ChipThemeData(
    backgroundColor: chipBackgroundColor,
    disabledColor: chipBackgroundColor.withOpacity(0.5),
    selectedColor: primaryColor,
    secondarySelectedColor: primaryColor,
    padding: const EdgeInsets.symmetric(
      horizontal: 6,
      vertical: 5,
    ),
    side: const BorderSide(
      color: Colors.transparent,
    ),
    labelStyle: textStyleCaption.copyWith(
      color: chipTextColor,
    ),
    iconTheme: const IconThemeData(
      color: chipTextColor,
      size: 18,
    ),
  );

  // Input fields theme
  static final InputDecorationTheme _lightInputDecorationTheme =
      InputDecorationTheme(
    filled: true,
    fillColor: MaterialStateColor.resolveWith(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.white24;
        } else {
          return Colors.white54;
        }
      },
    ),
    labelStyle: MaterialStateTextStyle.resolveWith(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return TextStyle(
            color: lightTextColor.withOpacity(0.4),
          );
        } else {
          return TextStyle(
            color: lightTextColor.withOpacity(0.8),
          );
        }
      },
    ),
    hintStyle: TextStyle(
      color: lightTextColor.withOpacity(0.8),
      fontSize: 14,
    ),
    helperStyle: TextStyle(
      color: lightTextColor.withOpacity(0.8),
      fontSize: 13,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: lightTextColor.withOpacity(0.2),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: lightTextColor.withOpacity(0.2),
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: lightTextColor.withOpacity(0.15),
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: primaryColor,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: errorColor.withOpacity(0.6),
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: errorColor.withOpacity(0.8),
      ),
    ),
  );
  static final InputDecorationTheme _darkInputDecorationTheme =
      InputDecorationTheme(
    filled: true,
    fillColor: MaterialStateColor.resolveWith(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.black12;
        } else {
          return Colors.black38;
        }
      },
    ),
    labelStyle: MaterialStateTextStyle.resolveWith(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return TextStyle(
            color: darkTextColor.withOpacity(0.4),
          );
        } else {
          return TextStyle(
            color: darkTextColor.withOpacity(0.8),
          );
        }
      },
    ),
    hintStyle: TextStyle(
      color: darkTextColor.withOpacity(0.8),
      fontSize: 14,
    ),
    helperStyle: TextStyle(
      color: darkTextColor.withOpacity(0.8),
      fontSize: 13,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: darkTextColor.withOpacity(0.2),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: darkTextColor.withOpacity(0.2),
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: darkTextColor.withOpacity(0.1),
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: darkPrimaryColor,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: errorColor.withOpacity(0.6),
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: errorColor.withOpacity(0.8),
      ),
    ),
  );

  // Light theme data
  static final ThemeData defaultLightThemeData = ThemeData.light();
  static final ThemeData lightTheme = defaultLightThemeData.copyWith(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: lightBackgroundColor,
    colorScheme: _lightColorScheme,
    textTheme: defaultLightThemeData.textTheme.apply(
      bodyColor: lightTextColor,
      displayColor: lightTextColor,
      fontFamily: fontFamily,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: lightAppBarBackgroundColor,
      titleTextStyle: textStyleSubHeading.copyWith(
        color: lightAppBarTextColor,
      ),
      iconTheme: const IconThemeData(
        color: lightAppBarIconColor,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: lightAppBarBackgroundColor,
      selectedItemColor: lightAppBarIconColor,
      unselectedItemColor: lightAppBarIconInactiveColor,
      selectedLabelStyle: _bottomNavBarLabel,
      unselectedLabelStyle: _bottomNavBarLabel,
    ),
    elevatedButtonTheme: _lightElevatedButtonTheme,
    outlinedButtonTheme: _lightOutlinedButtonTheme,
    cardTheme: _cardTheme,
    chipTheme: _chipTheme,
    inputDecorationTheme: _lightInputDecorationTheme,
  );

  // Dark theme data
  static final ThemeData defaultDarkThemeData = ThemeData.dark();
  static final ThemeData darkTheme = defaultDarkThemeData.copyWith(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: darkPrimaryColor,
    scaffoldBackgroundColor: darkBackgroundColor,
    colorScheme: _darkColorScheme,
    textTheme: defaultDarkThemeData.textTheme.apply(
      bodyColor: darkTextColor,
      displayColor: darkTextColor,
      fontFamily: fontFamily,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: darkAppBarBackgroundColor,
      titleTextStyle: textStyleSubHeading.copyWith(
        color: darkAppBarTextColor,
      ),
      iconTheme: const IconThemeData(
        color: darkAppBarIconColor,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: darkAppBarBackgroundColor,
      selectedItemColor: darkAppBarIconColor,
      unselectedItemColor: darkAppBarIconInactiveColor,
      selectedLabelStyle: _bottomNavBarLabel,
      unselectedLabelStyle: _bottomNavBarLabel,
    ),
    elevatedButtonTheme: _darkElevatedButtonTheme,
    outlinedButtonTheme: _darkOutlinedButtonTheme,
    cardTheme: _cardTheme.copyWith(
      color: darkCardBackgroundColor,
    ),
    chipTheme: _chipTheme.copyWith(
      selectedColor: darkPrimaryColor,
      secondarySelectedColor: darkPrimaryColor,
    ),
    inputDecorationTheme: _darkInputDecorationTheme,
  );
}
