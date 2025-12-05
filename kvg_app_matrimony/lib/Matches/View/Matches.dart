import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/Helper/Colors.dart';
import 'package:kvg_app_matrimony/Matches/View/Jathagam.dart';

class Matches_page extends StatefulWidget {
  const Matches_page({Key? key}) : super(key: key);

  @override
  State<Matches_page> createState() => _Matches_pageState();
}

class _Matches_pageState extends State<Matches_page> {
  int _currentImageIndex = 0;
  final List<String> _images = [
    "assets/images/5.jpeg",
    "assets/images/19.jpeg", // Add your other images
    "assets/images/25.jpeg", // Add your other images
  ];

  @override
  Widget build(BuildContext context) {
    setScreenSize(context);
    return Scaffold(
      backgroundColor: const Color(0xfffbe7ef),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isTablet = constraints.maxWidth > 600;

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Details",
                            style: GoogleFonts.lexend(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                shbox20,
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Center(
                            child: GestureDetector(
                              onHorizontalDragEnd: (details) {
                                if (details.primaryVelocity! > 0) {
                                  setState(() {
                                    _currentImageIndex =
                                        (_currentImageIndex - 1) %
                                        _images.length;
                                  });
                                } else if (details.primaryVelocity! < 0) {
                                  setState(() {
                                    _currentImageIndex =
                                        (_currentImageIndex + 1) %
                                        _images.length;
                                  });
                                }
                              },

                              child: Container(
                                width: isTablet ? 390 : 370,
                                height: isTablet ? 390 : 360,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: AppColors.Black,
                                    width: 2,
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      _images[_currentImageIndex],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 15,
                            top: -15,
                            child: CircleAvatar(
                              radius: isTablet ? 28 : 25,
                              backgroundColor: AppColors.Textcolor.withOpacity(
                                0.77,
                              ),
                              child: Image.asset(
                                "assets/images/Save.png",
                                width: isTablet ? 22 : 35,
                                height: isTablet ? 22 : 35,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    shbox20,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(_images.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentImageIndex = index;
                            });
                          },
                          child: Container(
                            width: index == 0
                                ? 15
                                : index == 1
                                ? 22
                                : 28,
                            height: index == 0
                                ? 15
                                : index == 1
                                ? 22
                                : 28,
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              color: index == _currentImageIndex
                                  ? Colors.amber
                                  : AppColors.custom.withOpacity(0.6),
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),

                    shbox20,

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _sectionCard(
                              title: "Personal Information",
                              child: _infoList([
                                ["Profile ID", "KVG9401491"],
                                ["Name", "Ashmitha S"],

                                ["Education", "B.E computer science"],
                                ["Gender", "Female"],
                                ["Date of birth", "05/08/2002"],
                                ["Time of birth", "05:34 Pm"],
                                ["Age", "23 years"],
                                ["Height", "5.6"],
                                ["Weight", "59 kg"],
                                ["Body type", "Mesomorph"],
                                ["Body Colour", "Light brown"],
                                ["Kongu kulam", "Semban Kulam"],
                                ["District", "Erode"],

                                ["Father name", "Sathasivam R"],
                                ["Mother name", "Nithiya S"],
                                ["Rasi", "Magaram"],
                                ["Natchathiram", "Avittam 1"],
                                ["Property value", "1 Crore"],
                                ["Acres value", "10 acres"],
                                ["Employed", "Yes"],
                                ["Occupation", "Software professional"],
                                ["Annual income", "4 Lakh"],
                                ["Work location", "Bengaluru"],
                              ]),
                            ),

                            // _sectionCard(
                            //   title: "Address",
                            //   child: Container(
                            //     padding: const EdgeInsets.all(12),
                            //     decoration: BoxDecoration(
                            //       border: Border.all(color: Colors.black),
                            //       color: Colors.grey.shade300,
                            //       borderRadius: BorderRadius.circular(8),
                            //     ),
                            //     child: Text(
                            //       "KCT Tech Park, Thudiyalur Road, Saravanampatti, Coimbatore, Tamil Nadu 641049.",
                            //       style: GoogleFonts.lexend(
                            //         fontSize: 15,
                            //         fontWeight: FontWeight.bold,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            _sectionCard(
                              title: "Sibling Information",
                              child: _infoList([
                                ["Brother", "0"],
                                ["Sister", "1"],
                              ]),
                            ),

                            shbox10,

                            _sectionCard(
                              title: "Expectation",
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  // padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "While education and a good career are now highly valued for women, there is often an underlying expectation that these should not 'delay' marriage...",
                                      style: GoogleFonts.lexend(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            shbox10,
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                "Jathagam",
                                style: GoogleFonts.lexend(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.redcolour1,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                // height: 100,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    width: 3,
                                    color: AppColors.Black,
                                  ),
                                ),

                                child: Row(
                                  spacing: 2,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          const SizedBox(height: 10),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      Jathagam(),
                                                ),
                                              );
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                8.0,
                                              ),
                                              child: Image.asset(
                                                "assets/images/30.jpg",
                                                // height: isTablet ? 300 : 200,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                "Once jathagam matches full details and address click on download button .",
                                style: GoogleFonts.lexend(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.redcolour1,
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                height: 50,
                                width: 170, // Fixed width
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.redcolour1,
                                    foregroundColor: AppColors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      side: BorderSide(
                                        width: 2,
                                        color: AppColors.Black,
                                      ),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 15,
                                    ),
                                    elevation: 2,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Download",
                                        style: GoogleFonts.lexend(
                                          color: AppColors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            shbox20,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                shbox30,
              ],
            ),
          );
        },
      ),
    );
  }
}

Widget _sectionCard({required String title, required Widget child}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 16),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      // color: Colors.red,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.lexend(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.redcolour1,
          ),
        ),
        const SizedBox(height: 12),
        child,
      ],
    ),
  );
}

Widget _sectionCard1({required String title, required Widget child}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 16),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black, width: 2),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: GoogleFonts.lexend(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.Textcolor,
          ),
        ),
        const SizedBox(height: 12),
        child,
      ],
    ),
  );
}

Widget _infoList(List<List<String>> items) {
  return Column(
    children: items
        .map(
          (e) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Text(
                    e[0],
                    style: GoogleFonts.lexend(
                      fontWeight: FontWeight.w600,
                      color: AppColors.Textcolor,
                    ),
                  ),
                ),
                const Text(" : "),
                Expanded(
                  flex: 6,
                  child: Text(
                    e[1],
                    style: GoogleFonts.lexend(
                      fontWeight: FontWeight.w600,
                      color: AppColors.Black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
        .toList(),
  );
}
