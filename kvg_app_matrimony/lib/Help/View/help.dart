// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:kvg_app_matrimony/Helper/Colors.dart';

// class Help_page extends StatefulWidget {
//   const Help_page({Key? key}) : super(key: key);

//   @override
//   State<Help_page> createState() => _Help_pageState();
// }

// class _Help_pageState extends State<Help_page> {
//   @override
//   Widget build(BuildContext context) {
//     setScreenSize(context);
//     return Scaffold(
//       backgroundColor: AppColors.fillcolour,
//       body: Column(
//         children: [
//           Container(
//             height: screenHeight * 0.12,
//             decoration: BoxDecoration(
//               color: const Color(0xFFE22B4B),
//               borderRadius: const BorderRadius.only(
//                 bottomLeft: Radius.circular(30),
//                 bottomRight: Radius.circular(30),
//               ),
//             ),
//             child: Stack(
//               children: [
//                 // Big circle (left)
//                 Positioned(
//                   left: -10,
//                   top: -10,
//                   child: Container(
//                     width: 60,
//                     height: 60,
//                     decoration: BoxDecoration(
//                       color: Colors.red.shade700.withOpacity(0.6),
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//                 ),

//                 // Mid circle (center right)
//                 Positioned(
//                   right: 70,
//                   top: 40,
//                   child: Container(
//                     width: 40,
//                     height: 40,
//                     decoration: BoxDecoration(
//                       color: Colors.red.shade300.withOpacity(0.5),
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//                 ),

//                 // Small circle (top right)
//                 Positioned(
//                   right: 20,
//                   top: 25,
//                   child: Container(
//                     width: 18,
//                     height: 18,
//                     decoration: BoxDecoration(
//                       color: Colors.red.shade200.withOpacity(0.6),
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//                 ),

//                 // Top small circle (center)
//                 Positioned(
//                   top: -15,
//                   left: 150,
//                   child: Container(
//                     width: 40,
//                     height: 40,
//                     decoration: BoxDecoration(
//                       color: Colors.red.shade900.withOpacity(0.5),
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//                 ),

//                 Padding(
//                   padding: const EdgeInsets.only(top: 10),
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Text(
//                       "Help",
//                       style: GoogleFonts.lexend(
//                         color: Colors.white,
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           shbox10,
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               // height: 100,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 color: AppColors.white,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   shbox5,
//                   Center(
//                     child: Text(
//                       "Kvg Matrimony",
//                       style: GoogleFonts.lexend(
//                         color: AppColors.Textcolor,
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   shbox10,
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10, right: 10),
//                     child: Container(
//                       height: 250,
//                       width: double.infinity,
//                       color: Color(0xffE9EDEE),
//                       child: Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: Container(
//                           decoration: BoxDecoration(color: AppColors.white),
//                         ),
//                       ),
//                     ),
//                   ),
//                   shbox10,
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10, right: 10),
//                     child: Text(
//                       "Platform for Patients to access medical consultation, specifically follow up care, with availability of hybrid Physical-Online combination",
//                       style: GoogleFonts.lexend(
//                         color: AppColors.Black,
//                         fontSize: 16,
//                         fontWeight: FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                   shbox20,
//                   Padding(
//                     padding: const EdgeInsets.only(right: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Text(
//                           "8 Jan 12:07 Pm",
//                           style: GoogleFonts.lexend(
//                             color: AppColors.Black.withOpacity(0.70),
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   shbox5,
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/Helper/Colors.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class Help_page extends StatefulWidget {
  const Help_page({Key? key}) : super(key: key);

  @override
  State<Help_page> createState() => _Help_pageState();
}

class _Help_pageState extends State<Help_page> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  bool _isVideoInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
  }

  void _initializeVideoPlayer() {
    _videoPlayerController = VideoPlayerController.asset(
      'assets/videos/help_video.mp4', // Replace with your video path
    );

    _videoPlayerController.initialize().then((_) {
      setState(() {
        _isVideoInitialized = true;
      });
    });

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: false,
      looping: false,
      allowMuting: true,
      allowPlaybackSpeedChanging: true,
      showControls: true,
      materialProgressColors: ChewieProgressColors(
        playedColor: AppColors.Logintab, // Use your app color
        handleColor: AppColors.Logintab,
        backgroundColor: Colors.grey,
        bufferedColor: Colors.grey.shade400,
      ),
      placeholder: Container(
        color: AppColors.white,
        child: Center(
          child: CircularProgressIndicator(color: AppColors.Logintab),
        ),
      ),
      errorBuilder: (context, errorMessage) {
        return Container(
          color: AppColors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error_outline, color: Colors.red, size: 50),
                shbox10,
                Text(
                  'Failed to load video',
                  style: GoogleFonts.lexend(
                    color: AppColors.Textcolor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _seekForward() {
    final currentPosition = _videoPlayerController.value.position;
    final newPosition = currentPosition + Duration(minutes: 10);
    final maxPosition = _videoPlayerController.value.duration;

    if (newPosition < maxPosition) {
      _videoPlayerController.seekTo(newPosition);
    } else {
      _videoPlayerController.seekTo(maxPosition);
    }
  }

  void _seekBackward() {
    final currentPosition = _videoPlayerController.value.position;
    final newPosition = currentPosition - Duration(minutes: 10);

    if (newPosition > Duration.zero) {
      _videoPlayerController.seekTo(newPosition);
    } else {
      _videoPlayerController.seekTo(Duration.zero);
    }
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    setScreenSize(context);
    return Scaffold(
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

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Help",
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
          shbox10,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  shbox5,
                  Center(
                    child: Text(
                      "Kvg Matrimony",
                      style: GoogleFonts.lexend(
                        color: AppColors.Textcolor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  shbox10,
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      color: Color(0xffE9EDEE),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              // Video Player
                              Expanded(
                                child: _isVideoInitialized
                                    ? Chewie(controller: _chewieController)
                                    : Container(
                                        color: AppColors.white,
                                        child: Center(
                                          child: CircularProgressIndicator(
                                            color: AppColors.Logintab,
                                          ),
                                        ),
                                      ),
                              ),

                              // Custom Controls
                              Container(
                                height: 50,
                                color: Colors.grey[100],
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // Go Back 10 minutes
                                    IconButton(
                                      onPressed: _isVideoInitialized
                                          ? _seekBackward
                                          : null,
                                      icon: Icon(Icons.replay_10),
                                      tooltip: 'Go back 10 minutes',
                                      color: AppColors.Logintab,
                                    ),

                                    // Play/Pause
                                    IconButton(
                                      onPressed: _isVideoInitialized
                                          ? () {
                                              if (_videoPlayerController
                                                  .value
                                                  .isPlaying) {
                                                _videoPlayerController.pause();
                                              } else {
                                                _videoPlayerController.play();
                                              }
                                              setState(() {});
                                            }
                                          : null,
                                      icon: Icon(
                                        _videoPlayerController.value.isPlaying
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                      ),
                                      color: AppColors.Logintab,
                                    ),

                                    // Go Forward 10 minutes
                                    IconButton(
                                      onPressed: _isVideoInitialized
                                          ? _seekForward
                                          : null,
                                      icon: Icon(Icons.forward_10),
                                      tooltip: 'Go forward 10 minutes',
                                      color: AppColors.Logintab,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  shbox10,
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Platform for Patients to access medical consultation, specifically follow up care, with availability of hybrid Physical-Online combination",
                      style: GoogleFonts.lexend(
                        color: AppColors.Black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  shbox20,
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "8 Jan 12:07 Pm",
                          style: GoogleFonts.lexend(
                            color: AppColors.Black.withOpacity(0.70),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  shbox5,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
