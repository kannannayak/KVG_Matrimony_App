import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/Galley/View/Galley.dart';
import 'package:kvg_app_matrimony/Helper/Colors.dart';
import 'package:kvg_app_matrimony/Home/View/Home_Cardpage.dart';
import 'package:kvg_app_matrimony/Profile/View/Profile_page.dart';

class Bottombar extends StatefulWidget {
  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    MatchesPage(),
    Galley_page(),
    MatchesPage(),
    ProfileDetailsPage(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fillcolour,
      body: Center(child: tabItems[_selectedIndex]),
      bottomNavigationBar: FlashyTabBar(
        backgroundColor: AppColors.fillcolour,
        animationCurve: Curves.linear,
        selectedIndex: _selectedIndex,
        iconSize: 20,
        showElevation: false, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Image.asset(
              "assets/images/home.png",

              // color: Color(0xff9496c1),
              width: 26,
            ),
            title: Text(
              'Home',
              style: GoogleFonts.lexend(color: AppColors.bottombar),
            ),
          ),
          FlashyTabBarItem(
            icon: Image.asset(
              "assets/images/Gallery1.png",
              // color: Color(0xff9496c1),
              width: 26,
            ),
            title: Text(
              'Galley',
              style: GoogleFonts.lexend(color: AppColors.bottombar),
            ),
          ),

          FlashyTabBarItem(
            icon: Image.asset(
              "assets/images/Heart.png",
              // color: Color(0xff9496c1),
              width: 26,
            ),
            title: Text(
              'Save',
              style: GoogleFonts.lexend(color: AppColors.bottombar),
            ),
          ),

          FlashyTabBarItem(
            icon: Image.asset(
              "assets/images/Profile1.png",
              // color: Color(0xff9496c1),
              width: 26,
            ),
            title: Text(
              'Profile',
              style: GoogleFonts.lexend(color: AppColors.bottombar),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:kvg_app_matrimony/Helper/Colors.dart';
// import 'package:kvg_app_matrimony/Home/View/Home_Cardpage.dart';
// import 'package:kvg_app_matrimony/Profile/View/Profile_page.dart';

// class Bottombar extends StatefulWidget {
//   @override
//   _BottombarState createState() => _BottombarState();
// }

// class _BottombarState extends State<Bottombar> {
//   int _selectedIndex = 0;

//   // Temporary replacement until you import MatchesPage
//   List<Widget> tabItems = [
//     MatchesPage(), // Using available import
//     ProfileDetailsPage(),
//     MatchesPage(), // Replace with actual pages
//     ProfileDetailsPage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: tabItems[_selectedIndex]),
//       bottomNavigationBar: Container(
//         // Control height here
//         height: 100, // Adjust this value as needed
//         child: FlashyTabBar(
//           animationCurve: Curves.linear,
//           selectedIndex: _selectedIndex,
//           iconSize: 20,
//           showElevation: false,
//           onItemSelected: (index) => setState(() {
//             _selectedIndex = index;
//           }),
//           items: [
//             FlashyTabBarItem(
//               icon: Image.asset("assets/images/home.png", width: 33),
//               title: Text(
//                 'Home',
//                 style: GoogleFonts.lexend(color: AppColors.bottombar),
//               ),
//             ),
//             FlashyTabBarItem(
//               icon: Image.asset("assets/images/Gallery1.png", width: 33),
//               title: Text(
//                 'Gallery', // Fixed typo
//                 style: GoogleFonts.lexend(color: AppColors.bottombar),
//               ),
//             ),
//             FlashyTabBarItem(
//               icon: Image.asset("assets/images/Heart.png", width: 33),
//               title: Text(
//                 'Save',
//                 style: GoogleFonts.lexend(color: AppColors.bottombar),
//               ),
//             ),
//             FlashyTabBarItem(
//               icon: Image.asset("assets/images/Profile1.png", width: 33),
//               title: Text(
//                 'Profile',
//                 style: GoogleFonts.lexend(color: AppColors.bottombar),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
