// // ignore_for_file: sort_child_properties_last, use_key_in_widget_constructors, use_build_context_synchronously, file_names, unused_import, non_constant_identifier_names, must_be_immutable, unused_element, avoid_print

// import 'package:flutter/material.dart';

// import 'package:google_fonts/google_fonts.dart';

// import 'package:kvg_app_matrimony/Helper/Colors.dart';

// class NavDrawer extends StatefulWidget {
//   @override
//   State<NavDrawer> createState() => _NavDrawerState();
// }

// class _NavDrawerState extends State<NavDrawer> {
//   TextEditingController deletetextcontroller = TextEditingController();

//   @override
//   @override
//   Widget build(BuildContext context) {
//     void showDeleteID() {
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           Future.delayed(const Duration(milliseconds: 2500), () {
//             Navigator.pop(context);

//           });

//           return AlertDialog(
//             backgroundColor: AppColors.Logintab,
//             content: Container(
//               width: MediaQuery.of(context).size.width * 0.9,
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     "assets/images/AnimationDelete.gif",
//                     width: 100,
//                     height: 100,
//                   ),
//                   const SizedBox(height: 16),
//                   Text(
//                     "Your Jimble account is deleted.",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontFamily: 'InterBold',
//                       color: AppColors.Textcolor,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     "Thank You",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontFamily: 'InterBold',
//                       color: AppColors.Textcolor,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(16),
//             ),
//           );
//         },
//       );
//     }
// void Logout(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         backgroundColor: AppColors.Logintab,
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               children: [
//                 Image.asset("assets/images/Logout.png"),
//                 shbox5,
//                 Text(
//                   "Logout",
//                   style: GoogleFonts.inter(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: AppColors.Textcolor,
//                   ),
//                 ),
//               ],
//             ),
//             Align(
//               alignment: Alignment.center,
//               child: Text(
//                 "Are you sure you want to",
//                 overflow: TextOverflow.ellipsis,
//                 maxLines: 1,
//                 style: GoogleFonts.inter(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: AppColors.Textcolor,
//                 ),
//               ),
//             ),
//             Text(
//               "Exit?",
//               style: GoogleFonts.inter(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: AppColors.Textcolor,
//               ),
//             ),
//             shbox5,
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     Navigator.of(context).pop(); // Close dialog
//                     print("No button tapped!");
//                   },
//                   child: Container(
//                     width: MediaQuery.of(context).size.width * 0.2,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(15)),
//                     ),
//                     alignment: Alignment.center,
//                     child: Text(
//                       "No",
//                       style: GoogleFonts.inter(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.of(context).pop(); // Close dialog

//                     print("Yes button tapped!");
//                   },
//                   child: Container(
//                     width: MediaQuery.of(context).size.width * 0.2,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(15)),
//                     ),
//                     alignment: Alignment.center,
//                     child: Text(
//                       "Yes",
//                       style: GoogleFonts.inter(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }

// void DeleteAccount3(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         backgroundColor: AppColors.Logintab,
//         content: SizedBox(
//           width: MediaQuery.of(context).size.width * 0.8,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset("assets/images/DeleteClose.png"),
//               shbox10,
//               Text(
//                 "Confirm to delete your",
//                 overflow: TextOverflow.ellipsis,
//                 maxLines: 1,
//                 style: GoogleFonts.inter(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: AppColors.Textcolor,
//                 ),
//               ),
//               shbox10,
//               Text(
//                 "account?",
//                 overflow: TextOverflow.ellipsis,
//                 maxLines: 1,
//                 style: GoogleFonts.inter(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: AppColors.Textcolor,
//                 ),
//               ),
//               shbox10,
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       // Add your delete account logic here
//                       print("Yes button tapped - Delete account!");
//                       // Then close the dialog
//                       Navigator.of(context).pop();
//                     },
//                     child: Container(
//                       width: MediaQuery.of(context).size.width * 0.2,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: AppColors.Black,
//                         borderRadius: BorderRadius.all(Radius.circular(15)),
//                       ),
//                       alignment: Alignment.center,
//                       child: Text(
//                         "Yes",
//                         style: GoogleFonts.inter(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       Navigator.of(context).pop(); // Close dialog
//                       print("No button tapped!");
//                     },
//                     child: Container(
//                       width: MediaQuery.of(context).size.width * 0.2,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: AppColors.Black,
//                         borderRadius: BorderRadius.all(Radius.circular(15)),
//                       ),
//                       alignment: Alignment.center,
//                       child: Text(
//                         "No",
//                         style: GoogleFonts.inter(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }
//    void DeleteAccount2(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         backgroundColor: AppColors.Logintab,
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Delete Account",
//                   style: GoogleFonts.inter(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: AppColors.Textcolor,
//                   ),
//                 ),
//               ],
//             ),
//             shbox5,
//             Text(
//               "Please give reason for deleting your account",
//               overflow: TextOverflow.ellipsis,
//               maxLines: 3,
//               style: GoogleFonts.inter(
//                 fontSize: 16,
//                 fontWeight: FontWeight.normal,
//                 color: AppColors.Textcolor,
//               ),
//             ),
//             shbox10,
//             TextField(
//               controller: deletetextcontroller,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                 fillColor: AppColors.bottombar,
//                 filled: true,
//                 hintText: "Enter Your Reason",
//                 hintStyle: GoogleFonts.inter(
//                   color: AppColors.bottombar,
//                   fontSize: 14,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 enabledBorder: InputBorder.none,
//                 focusedBorder: InputBorder.none,
//               ),
//             ),
//             shbox20,
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     Navigator.of(context).pop(); // Close current dialog
//                     DeleteAccount3(context); // Open next dialog
//                   },
//                   child: Container(
//                     width: MediaQuery.of(context).size.width * 0.3,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       color: AppColors.Black,
//                       borderRadius: BorderRadius.all(Radius.circular(15)),
//                     ),
//                     alignment: Alignment.center,
//                     child: Text(
//                       "Submit",
//                       style: GoogleFonts.inter(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }

// void DeleteAccount1(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         backgroundColor: AppColors.Logintab,
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Delete Account",
//                   style: GoogleFonts.inter(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: AppColors.Textcolor,
//                   ),
//                 ),
//                 swbox5,
//                 Image.asset("assets/images/Delete1.png"),
//               ],
//             ),
//             Text(
//               "Please note that all your details given will be deleted and no information can be retrieved",
//               overflow: TextOverflow.ellipsis,
//               maxLines: 3,
//               style: GoogleFonts.inter(
//                 fontSize: 16,
//                 fontWeight: FontWeight.normal,
//                 color: AppColors.Textcolor,
//               ),
//             ),
//             shbox5,
//             Text(
//               "Do you still wish to continue deleting your account?",
//               overflow: TextOverflow.ellipsis,
//               maxLines: 3,
//               style: GoogleFonts.inter(
//                 fontSize: 16,
//                 fontWeight: FontWeight.normal,
//                 color: AppColors.Textcolor,
//               ),
//             ),
//             shbox10,
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     Navigator.of(context).pop(); // Close current dialog
//                     DeleteAccount2(context); // Open next dialog
//                     print("HARI suni");
//                   },
//                   child: Container(
//                     width: MediaQuery.of(context).size.width * 0.2,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(15)),
//                     ),
//                     alignment: Alignment.center,
//                     child: Text(
//                       "Yes",
//                       style: GoogleFonts.inter(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.of(context).pop(); // Close dialog
//                   },
//                   child: Container(
//                     width: MediaQuery.of(context).size.width * 0.2,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       color: AppColors.Black,
//                       borderRadius: BorderRadius.all(Radius.circular(15)),
//                     ),
//                     alignment: Alignment.center,
//                     child: Text(
//                       "No",
//                       style: GoogleFonts.inter(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }
//     setScreenSize(context);
//     return Drawer(
//       backgroundColor: AppColors.redcolour1,
//       width: screenWidth * 0.8,
//       child: ListView(
//         // padding: EdgeInsets.zero,
//         children: <Widget>[
//           shbox10,
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Column(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Colors.white, width: 3.0),
//                     ),

//                     child: Image.asset(
//                       'assets/images/Profile.png',
//                       height: 100,
//                       width: 100,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Colors.white, width: 3.0),
//                     ),
//                     child: ClipOval(
//                       child: Image.asset(
//                         'assets/images/Profile.png',
//                         height: 100,
//                         width: 100,
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 30),
//                 child: Column(
//                   children: [
//                     Text(
//                    ""
//                     ),
//                     shbox3,
//                     Text(
//                      "",
//                       style: GoogleFonts.inter(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,

//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           shbox15,
//           ListTile(
//             leading: Image.asset(
//               "assets/images/Profilepic.png",
//               width: 60,
//               height: 60,
//             ),
//             title: Text(
//               "Profile",
//               style: GoogleFonts.inter(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 14,

//               ),
//             ),
//             trailing: Icon(Icons.arrow_forward_ios,),
//             onTap: () => {},
//           ),
//           shbox3,
//           Divider(thickness: 1, indent: 20, endIndent: 20, color: Colors.white),
//           shbox3,

//             ListTile(
//               leading: Image.asset(
//                 "assets/images/Edit1.png",
//                 width: 60,
//                 height: 60,
//               ),
//               title: Text(
//                 'Edit Profile',
//                 style: GoogleFonts.inter(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 14,

//                 ),
//               ),
//               trailing: Icon(Icons.arrow_forward_ios, ),
//               onTap: () => {},
//             ),
//           shbox3,

//             Divider(
//               thickness: 1,
//               indent: 20,
//               endIndent: 20,
//               color: Colors.white,
//             ),
//           shbox3,
//           ListTile(
//             leading: Image.asset(
//               "assets/images/ChangePassword1.png",
//               width: 60,
//               height: 60,
//             ),
//             title: Text(
//               'Change Pin',
//               style: GoogleFonts.inter(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 14,

//               ),
//             ),
//             trailing: Icon(Icons.arrow_forward_ios, ),
//             onTap: () => {

//             },
//           ),
//           shbox3,
//           Divider(thickness: 1, indent: 20, endIndent: 20, color: Colors.white),
//           shbox3,
//           ListTile(
//             leading: Image.asset(
//               "assets/images/SpecialRequest.png",
//               width: 60,
//               height: 60,
//             ),
//             title: Text(
//               "Special Request",
//               style: GoogleFonts.inter(
//                 fontWeight: FontWeight.bold,
//                 fontSize:  14,

//               ),
//             ),
//             trailing: Icon(Icons.arrow_forward_ios,),
//             onTap: () {
//               Navigator.of(context).pop(); // Close the drawer first
//               Future.delayed(Duration(milliseconds: 200), () {
//                 // Navigator.of(context).push(
//                 //   MaterialPageRoute(builder: (context) => SpecialRequest()),
//                 // );
//               });
//             },
//           ),
//           shbox3,
//           Divider(thickness: 1, indent: 20, endIndent: 20, color: Colors.white),
//           shbox3,
//           ListTile(
//             leading: Image.asset(
//               "assets/images/Feedback.png",
//               width: 60,
//               height: 60,
//             ),
//             title: Text(
//               'Feedback',
//               style: GoogleFonts.inter(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 14,

//               ),
//             ),
//             trailing: Icon(Icons.arrow_forward_ios,),
//             onTap: () {
//               Navigator.of(context).pop(); // Close the drawer first
//               Future.delayed(Duration(milliseconds: 200), () {
//                 // Navigator.of(
//                 //   context,
//                 // ).push(MaterialPageRoute(builder: (context) => FeedBack()));
//               });
//             },
//           ),
//           shbox3,
//           Divider(thickness: 1, indent: 20, endIndent: 20, color: Colors.white),
//           shbox3,
//           ListTile(
//             leading: Image.asset(
//               "assets/images/Help.png",
//               width: 60,
//               height: 60,
//             ),
//             title: Text(
//               "Help",
//               style: GoogleFonts.inter(
//                 fontWeight: FontWeight.bold,
//                 fontSize:  14,

//               ),
//             ),
//             trailing: Icon(Icons.arrow_forward_ios, ),
//             onTap: () {
//               Navigator.of(context).pop(); // Close the drawer first
//               Future.delayed(Duration(milliseconds: 200), () {
//                 // Navigator.of(
//                 //   context,
//                 // ).push(MaterialPageRoute(builder: (context) => Helpview()));
//               });
//             },
//           ),
//           shbox3,
//           Divider(thickness: 1, indent: 20, endIndent: 20, color: Colors.white),
//           shbox3,
//           ListTile(
//             leading: Image.asset(
//               "assets/images/About.png",
//               width: 60,
//               height: 60,
//             ),
//             title: Text(
//               "About Jimble",
//               style: GoogleFonts.inter(
//                 fontWeight: FontWeight.bold,
//                 fontSize:  14,

//               ),
//             ),
//             trailing: Icon(Icons.arrow_forward_ios, ),
//             onTap: () {
//               Navigator.of(context).pop(); // Close the drawer first
//               Future.delayed(Duration(milliseconds: 200), () {
//                 // Navigator.of(
//                 //   context,
//                 // ).push(MaterialPageRoute(builder: (context) => About()));
//               });
//             },
//           ),
//           shbox3,
//           Divider(thickness: 1, indent: 20, endIndent: 20, color: Colors.white),
//           shbox3,
//           ListTile(
//             leading: Image.asset(
//               "assets/images/Privacy1.png",
//               width: 60,
//               height: 60,
//             ),
//             title: Text(
//               "Privacy Policy",
//               style: GoogleFonts.inter(
//                 fontWeight: FontWeight.bold,
//                 fontSize:  14,

//               ),
//             ),
//             trailing: Icon(Icons.arrow_forward_ios,),
//             onTap: () {
//               Navigator.of(context).pop(); // Close the drawer first
//               Future.delayed(Duration(milliseconds: 200), () {
//                 // Navigator.of(context).push(
//                 //   MaterialPageRoute(builder: (context) => PrivacyPolicy()),
//                 // );
//               });
//             },
//           ),
//           shbox3,
//           Divider(thickness: 1, indent: 20, endIndent: 20, color: Colors.white),
//           shbox3,
//           ListTile(
//             leading: Image.asset(
//               "assets/images/TermsandConditions.png",
//               width: 60,
//               height: 60,
//             ),
//             title: Text(
//               "Terms & conditions",
//               style: GoogleFonts.inter(
//                 fontWeight: FontWeight.bold,
//                 fontSize:  14,

//               ),
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//             trailing: Icon(Icons.arrow_forward_ios, ),
//             onTap: () {
//               Navigator.of(context).pop(); // Close the drawer first
//               Future.delayed(Duration(milliseconds: 200), () {
//                 // Navigator.of(context).push(
//                 //   MaterialPageRoute(builder: (context) => TermsandConditions()),
//                 // );
//               });
//             },
//           ),
//           shbox3,
//           Divider(thickness: 1, indent: 20, endIndent: 20, color: Colors.white),
//           shbox3,
//           ListTile(
//             leading: Image.asset(
//               "assets/images/Contact.png",
//               width: 60,
//               height: 60,
//             ),
//             title: Text(
//               "Contact Us",
//               style: GoogleFonts.inter(
//                 fontWeight: FontWeight.bold,
//                 fontSize:  14,

//               ),
//             ),
//             trailing: Icon(Icons.arrow_forward_ios, ),
//             onTap: () {
//               Navigator.of(context).pop(); // Close the drawer first
//               Future.delayed(Duration(milliseconds: 200), () {
//                 // Navigator.of(
//                 //   context,
//                 // ).push(MaterialPageRoute(builder: (context) => ContactUs()));
//               });
//             },
//           ),
//           shbox3,
//           Divider(thickness: 1, indent: 20, endIndent: 20, color: Colors.white),
//           shbox3,
//           ListTile(
//             leading: Image.asset(
//               "assets/images/Privacy1.png",
//               width: 60,
//               height: 60,
//             ),
//             title: Text(
//               "Delete Account",
//               style: GoogleFonts.inter(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 14,

//               ),
//             ),
//             trailing: Icon(Icons.arrow_forward_ios, ),
//             onTap: () {
//               // DeleteAccount1();
//             },
//           ),
//           shbox3,
//           Divider(thickness: 1, indent: 20, endIndent: 20, color: Colors.white),
//           shbox3,
//           ListTile(
//             leading: Image.asset(
//               "assets/images/Logout.png",
//               width: 60,
//               height: 60,
//             ),
//             title: Text(
//               "Logout",
//               style: GoogleFonts.inter(
//                 fontWeight: FontWeight.bold,
//                 fontSize:  14,

//               ),
//             ),
//             trailing: Icon(Icons.arrow_forward_ios,),
//             onTap: () {

//             },
//           ),
//           shbox10,
//         ],
//       ),
//     );
//   }
// }

// ignore_for_file: sort_child_properties_last, use_key_in_widget_constructors, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/Feedback/View/Feedback.dart';
import 'package:kvg_app_matrimony/Help/View/help.dart';
import 'package:kvg_app_matrimony/Policies_terms/View/Policies_terms.dart';

import '../helper/colors.dart';

class NavDrawer extends StatelessWidget {
  // void Logout() {
  //   Get.dialog(
  //     Dialog(
  //       shape: RoundedRectangleBorder(
  //         side: const BorderSide(color: Colors.red, width: 2),
  //         borderRadius: BorderRadius.circular(15),
  //       ),
  //       backgroundColor: AppColors.redcolour,
  //       child: Padding(
  //         padding: const EdgeInsets.all(25),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             const SizedBox(height: 20),
  //             Text(
  //               "Are you sure you want to exit ?",
  //               textAlign: TextAlign.center,
  //               style: GoogleFonts.kadwa(
  //                 fontSize: 16,
  //                 color: Colors.white,
  //               ),
  //             ),
  //             const SizedBox(height: 50),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               children: [
  //                 ElevatedButton(
  //                   style: ElevatedButton.styleFrom(
  //                     backgroundColor: AppColors.redcolour,
  //                     shape: RoundedRectangleBorder(
  //                       side: BorderSide(color: AppColors.red, width: 1.5),
  //                       borderRadius: BorderRadius.circular(10),
  //                     ),
  //                     padding: const EdgeInsets.symmetric(
  //                         horizontal: 30, vertical: 15),
  //                   ),
  //                   onPressed: () async {
  //                     // await CacheHelper().removeSaveData("empId");
  //                     // await CacheHelper().removeSaveData("employeeName");

  //                     // Get.back();
  //                     // Future.delayed(Duration(milliseconds: 100), () {
  //                     //   Get.offAll(() => Login());
  //                     // });
  //                   },
  //                   child: Text(
  //                     "Yes",
  //                     style:
  //                         GoogleFonts.kadwa(color: Colors.white, fontSize: 16),
  //                   ),
  //                 ),
  //                 ElevatedButton(
  //                   style: ElevatedButton.styleFrom(
  //                     backgroundColor: AppColors.redcolour,
  //                     shape: RoundedRectangleBorder(
  //                       side: BorderSide(color: AppColors.redcolour, width: 1.5),
  //                       borderRadius: BorderRadius.circular(10),
  //                     ),
  //                     padding: const EdgeInsets.symmetric(
  //                         horizontal: 20, vertical: 15),
  //                   ),
  //                   onPressed: () {
  //                     // Get.back();
  //                     // Future.delayed(Duration(milliseconds: 100), () {
  //                     //   Get.to(() => NavScreen(initialIndex: 0));
  //                     // });
  //                   },
  //                   child: Text(
  //                     "Cancel",
  //                     style:
  //                         GoogleFonts.kadwa(color: Colors.white, fontSize: 16),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //     barrierDismissible: false,
  //   );
  // }

  void Logout(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/Logout.png"),
                  shbox5,
                  Text(
                    "Logout",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.Textcolor,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Are you sure you want to",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.Textcolor,
                  ),
                ),
              ),
              Text(
                "Exit?",
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.Textcolor,
                ),
              ),
              shbox5,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop(); // Close dialog
                      print("No button tapped!");
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "No",
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop(); // Close dialog

                      print("Yes button tapped!");
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Yes",
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void DeleteAccount3(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/DeleteClose.png"),
                shbox10,
                Text(
                  "Confirm to delete your",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.Textcolor,
                  ),
                ),
                shbox10,
                Text(
                  "account?",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.Textcolor,
                  ),
                ),
                shbox10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        // Add your delete account logic here
                        print("Yes button tapped - Delete account!");
                        // Then close the dialog
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Yes",
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop(); // Close dialog
                        print("No button tapped!");
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "No",
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void DeleteAccount2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Delete Account",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.Textcolor,
                    ),
                  ),
                ],
              ),
              shbox5,
              Text(
                "Please give reason for deleting your account",
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: AppColors.Textcolor,
                ),
              ),
              shbox10,
              TextField(
                // controller: deletetextcontroller,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: AppColors.white,
                  filled: true,
                  hintText: "Enter Your Reason",
                  hintStyle: GoogleFonts.inter(
                    color: AppColors.Black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
              shbox20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop(); // Close current dialog
                      DeleteAccount3(context); // Open next dialog
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Submit",
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void DeleteAccount1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Delete Account",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.Textcolor,
                    ),
                  ),
                  swbox5,
                  Image.asset("assets/images/Delete1.png"),
                ],
              ),
              Text(
                "Please note that all your details given will be deleted and no information can be retrieved",
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: AppColors.Textcolor,
                ),
              ),
              shbox5,
              Text(
                "Do you still wish to continue deleting your account?",
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: AppColors.Textcolor,
                ),
              ),
              shbox10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop(); // Close current dialog
                      DeleteAccount2(context); // Open next dialog
                      print("HARI suni");
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Yes",
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop(); // Close dialog
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "No",
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    setScreenSize(context);
    return Drawer(
      backgroundColor: AppColors.redcolour1,
      width: screenWidth * 0.8,
      child: ListView(
        children: <Widget>[
          shbox5,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.white, size: 40),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white, // Border color
                          width: 3.0, // Border width
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/25.jpeg',
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // profileController.profileData.value?.employeeName ??
                          "KVG9401491",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          // profileController.profileData.value?.empId ??
                          "Dhileep kumar",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          shbox10,
          Divider(
            color: AppColors.white,
            thickness: 2,
            // indent: 40,
            // endIndent: 20,
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/Feedback.png",
              width: 60,
              height: 60,
            ),

            title: Text(
              "Feedback",
              style: GoogleFonts.inder(
                color: AppColors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FeedBack()),
              );
            },
          ),
          Divider(color: AppColors.white, thickness: 2),

          ListTile(
            leading: Image.asset(
              "assets/images/Help.png",
              width: 60,
              height: 60,
            ),
            title: Text(
              "Help",
              style: GoogleFonts.inder(
                color: AppColors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Help_page()),
              ),
            },
          ),
          Divider(color: AppColors.white, thickness: 2),
          ListTile(
            leading: Image.asset(
              "assets/images/Privacy-policy.png",
              width: 60,
              height: 60,
            ),
            title: Text(
              "Privacy Policy",
              style: GoogleFonts.inder(
                color: AppColors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PoliciesTerms_page()),
              ),
            },
          ),
          Divider(color: AppColors.white, thickness: 2),
          ListTile(
            leading: Image.asset(
              "assets/images/Contact-us.png",
              width: 60,
              height: 60,
            ),
            title: Text(
              "Contact Us",
              style: GoogleFonts.inder(
                color: AppColors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () => {
              // Get.to(ResetPassword()),
            },
          ),
          Divider(color: AppColors.white, thickness: 2),
          ListTile(
            leading: Image.asset(
              "assets/images/Delete_Account.png",
              width: 60,
              height: 60,
            ),
            title: Text(
              "Delete Account",
              style: GoogleFonts.inder(
                color: AppColors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () => DeleteAccount1(context),
          ),
          Divider(color: AppColors.white, thickness: 2),
          ListTile(
            leading: Image.asset(
              "assets/images/Logout1.png",
              width: 60,
              height: 60,
            ),
            title: Text(
              'Logout',
              style: GoogleFonts.inder(
                color: AppColors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              Logout(context);
            },
          ),
          Divider(color: AppColors.white, thickness: 2),
        ],
      ),
    );
  }
}
