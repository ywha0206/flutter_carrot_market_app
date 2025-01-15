import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// 텍스트 테마
TextTheme textTheme() {
  return TextTheme(
    // 가장 큰 제목 스타일
    displayLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    // 중간 크기의 제목 스타일
    displayMedium: GoogleFonts.openSans(
        fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
    // 본문 텍스트 스타일(기사, 설명)
    bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    // 부제목, 작은 본문 텍스트 스타일
    bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    // 중간 크기의 제목 스타일
    titleMedium: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
  );
}

// 앱바 테마
AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    elevation: 0.0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: GoogleFonts.openSans(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Colors.black), // 앱바 제목 텍스트 색상
  );
}

// 바텀 네비게이션 바 테마
BottomNavigationBarThemeData bottomNavigationBarTheme() {
  return BottomNavigationBarThemeData(
    selectedItemColor: Colors.deepOrangeAccent, // 선택된 아이콘 색상
    unselectedItemColor: Colors.black54, // 선택되지 않은 아이콘 색상
    showUnselectedLabels: true, // 선택되지 않은 아이콘의 라벨 표시 여부 설정
  );
}

// 전체 ThemeData 설정
ThemeData mTheme() {
  return ThemeData(
    // 머터리얼 3부터 변경됨
    // 설정한 색에 어울리는 색 자동으로 뿌려줌
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.orange,
    ),
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    bottomNavigationBarTheme: bottomNavigationBarTheme(),
  );
}
