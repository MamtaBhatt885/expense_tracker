import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
    seedColor: Color.fromARGB(255, 96, 59, 181));

var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: Color.fromARGB(255, 5, 99 ,125));

void main() {
  runApp(
   MaterialApp(
     darkTheme: ThemeData.dark().copyWith(
          // dark() no longer takes any arguments
                      colorScheme: kDarkColorScheme,

        cardTheme: CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8)
        ),
       elevatedButtonTheme: ElevatedButtonThemeData(
         style: ElevatedButton.styleFrom(
             backgroundColor: kDarkColorScheme.primaryContainer,
           foregroundColor: kDarkColorScheme.onPrimaryContainer
         ),),
     ),
     theme: ThemeData().copyWith(
       colorScheme:kColorScheme,
       appBarTheme: AppBarTheme().copyWith(
           backgroundColor: kColorScheme.onPrimaryContainer,
           foregroundColor: kColorScheme.onPrimary
       ),

        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer
            ),),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(fontWeight: FontWeight.bold,
              color: kColorScheme.onSecondaryContainer,
          fontSize: 16),
        ),
          ),
    //  themeMode: ThemeMode.system, //default
      debugShowCheckedModeBanner: false,
      home: Expenses(),
    ),
  );
}