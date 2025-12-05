import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/Helper/Colors.dart';
import 'package:kvg_app_matrimony/Matches/View/Matches.dart';
import 'package:kvg_app_matrimony/Notifications/View/Notifications.dart';
import 'package:kvg_app_matrimony/Sidemenu/Side_drawer.dart';

class MatchesPage extends StatefulWidget {
  const MatchesPage({super.key});

  @override
  State<MatchesPage> createState() => _MatchesPageState();
}

class _MatchesPageState extends State<MatchesPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    setScreenSize(context);
    return Scaffold(
      drawer: NavDrawer(),
      key: _scaffoldKey,

      backgroundColor: AppColors.fillcolour,

      body: Column(
        children: [
          Container(
            height: screenHeight * 0.12,
            decoration: BoxDecoration(
              color: const Color(0xFFE22B4B),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Stack(
              children: [
                // Big circle (left)
                Positioned(
                  left: -10,
                  top: -10,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.red.shade700.withOpacity(0.6),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

                // Mid circle (center right)
                Positioned(
                  right: 70,
                  top: 40,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.red.shade300.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

                // Small circle (top right)
                Positioned(
                  right: 20,
                  top: 25,
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: Colors.red.shade200.withOpacity(0.6),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

                // Top small circle (center)
                Positioned(
                  top: -15,
                  left: 150,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.red.shade900.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

                // Left side menu icon - Centered
                Positioned(
                  left: 15,
                  top: 0,
                  bottom: 0,
                  child: IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    icon: Icon(Icons.menu, color: Colors.white, size: 38),
                  ),
                ),

                // Right side notifications icon - Centered
                Positioned(
                  right: 15,
                  top: 20,
                  bottom: 0,
                  child:
                      // IconButton(
                      //   onPressed: () {
                      //     // Add notifications functionality here
                      //   },
                      //   icon: Icon(
                      //     Icons.notifications,
                      //     color: Colors.white,
                      //     size: 28,
                      //   ),
                      // ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          IconButton(
                            icon: Image.asset("assets/images/bell.png"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Notifications_page(),
                                ),
                              );
                            },
                          ),
                          Positioned(
                            right: 5,
                            top: -6,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: AppColors.Textcolor.withOpacity(0.77),
                                shape: BoxShape.circle,
                              ),

                              // child: Center(
                              //   child: Text(
                              //     "21",
                              //     style: GoogleFonts.jaldi(
                              //         fontSize: 12,
                              //         fontWeight: FontWeight.bold,
                              //         color: belltext),
                              //   ),
                              // ),
                              child: Center(
                                child: Text(
                                  "12",
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                ),

                // Center title
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Home",
                    style: GoogleFonts.lexend(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                bool isTablet = constraints.maxWidth > 600;

                return Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: demoList.length,
                    itemBuilder: (context, index) {
                      final item = demoList[index];
                      return Column(
                        spacing: 5,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: isTablet ? 185 : 145,
                                        height: isTablet ? 185 : 150,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 2,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          child: Image.asset(
                                            item.image,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),

                                    const SizedBox(width: 12),

                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          shbox5,
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              right: 20,
                                            ),
                                            child: Text(
                                              item.id,
                                              style: GoogleFonts.lexend(
                                                color: AppColors.redcolour1,
                                                fontSize: isTablet ? 22 : 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 6),
                                          Text(
                                            item.description,
                                            style: GoogleFonts.lexend(
                                              fontSize: isTablet ? 18 : 16,
                                              height: 1.4,
                                              color: AppColors.Textcolor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 12),

                                IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: _actionButton(
                                          Icons.share,
                                          "Share",
                                        ),
                                      ),
                                      VerticalDivider(
                                        color: Colors.black,
                                        thickness: 2,
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Matches_page(),
                                              ),
                                            );
                                          },
                                          child: _actionButton(
                                            Icons.remove_red_eye_outlined,
                                            "View",
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _actionButton(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Colors.black, width: 2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 20, color: Colors.grey),
          SizedBox(width: 5),
          Text(
            label,
            style: GoogleFonts.lexend(
              color: AppColors.Textcolor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

class DemoUser {
  final String id;
  final String image;
  final String description;

  DemoUser({required this.id, required this.image, required this.description});
}

List<DemoUser> demoList = [
  DemoUser(
    id: "M9401491",
    image: "assets/images/5.jpeg",
    description:
        "Yazhalini 27 yrs, 5’0”, Never married Tamil, Hindu, Kongu Vellala Gounder, BE, Software Professional, Coimbatore, Tamil Nadu",
  ),
  DemoUser(
    id: "M9401491",
    image: "assets/images/Married.jpeg",
    description:
        "Yazhalini 27 yrs, 5’0”, Never married Tamil, Hindu, Kongu Vellala Gounder, BE, Software Professional, Coimbatore, Tamil Nadu",
  ),
  DemoUser(
    id: "M9401491",
    image: "assets/images/Married.jpeg",
    description:
        "Yazhalini 27 yrs, 5’0”, Never married Tamil, Hindu, Kongu Vellala Gounder, BE, Software Professional, Coimbatore, Tamil Nadu",
  ),
  DemoUser(
    id: "M9401491",
    image: "assets/images/Married.jpeg",
    description:
        "Yazhalini 27 yrs, 5’0”, Never married Tamil, Hindu, Kongu Vellala Gounder, BE, Software Professional, Coimbatore, Tamil Nadu",
  ),
  DemoUser(
    id: "M9401491",
    image: "assets/images/Married.jpeg",
    description:
        "Yazhalini 27 yrs, 5’0”, Never married Tamil, Hindu, Kongu Vellala Gounder, BE, Software Professional, Coimbatore, Tamil Nadu",
  ),
];
