// import 'package:flutter/material.dart';
// import 'package:kvg_app_matrimony/Helper/Colors.dart';

// class Jathagam extends StatefulWidget {
//   @override
// void initState() {
//   super.initState();
//   // Lock orientation to landscape
//   SystemChrome.setPreferredOrientations([
//     DeviceOrientation.landscapeLeft,
//     DeviceOrientation.landscapeRight,
//   ]);
// }

//   const Jathagam({Key? key}) : super(key: key);

//   @override
//   State<Jathagam> createState() => _JathagamState();
// }

// class _JathagamState extends State<Jathagam> {
//   @override
//   Widget build(BuildContext context) {
//     setScreenSize(context);
//     return Scaffold(
//       backgroundColor: AppColors.fillcolour,
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Container(
//           height: double.infinity,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(30)),
//             border: Border.all(width: 3, color: AppColors.Black),
//           ),
//           // child: Image.asset("assets/images/30.jpg"),
//           clipBehavior: Clip.hardEdge,
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Image.asset("assets/images/30.jpg", fit: BoxFit.cover),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kvg_app_matrimony/Helper/Colors.dart';

class Jathagam extends StatefulWidget {
  const Jathagam({Key? key}) : super(key: key);

  @override
  State<Jathagam> createState() => _JathagamState();
}

class _JathagamState extends State<Jathagam> {
  // @override
  // void initState() {
  //   super.initState();
  //   // Lock orientation to landscape only
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.landscapeLeft,
  //     DeviceOrientation.landscapeRight,
  //   ]);
  // }

  // @override
  // void dispose() {
  //   // Reset orientation back to default when leaving this page
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.portraitUp,
  //     DeviceOrientation.portraitDown,
  //   ]);
  //   super.dispose();
  // }

  @override
  void initState() {
    super.initState();
    // Lock orientation to portrait only
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    // Optional: reset back to allow all orientation or keep portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fillcolour,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 3, color: AppColors.Black),
          ),
          clipBehavior: Clip.hardEdge,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/images/30.jpg",
              fit: BoxFit.cover, // fullscreen image
            ),
          ),
        ),
      ),
    );
  }
}
