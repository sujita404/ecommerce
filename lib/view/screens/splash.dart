import 'package:ecomerce/view/screens/login.dart';
import 'package:flutter/material.dart';

import '../utils/medias.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LogInScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          // child:CircularProgressIndicator.adaptive(),

          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
              child: Image.asset(
                logoUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
       
         
          SizedBox(
            height: 16,
            
           
          ),
          Text(
            'My Baby',
            style: TextStyle(color: Colors.redAccent),
          ),
           SizedBox(height: 16),
            CircularProgressIndicator(),
        ],
      )),
    );
  }
}

// import 'package:ecomerce/view/screens/login.dart';
// import 'package:flutter/material.dart';

// import '../utils/medias.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration(seconds: 5), () {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (context) => LogInScreen()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(50),
//               child: Image.network(
//                 'https://cdn.i-scmp.com/sites/default/files/d8/images/methode/2020/05/05/93e3ef18-8dd9-11ea-a674-527cfdef49ee_image_hires_105518.JPG',
//                 width: 100,
//                 height: 100,
//                 fit: BoxFit.cover,
//                 // loadingBuilder: (BuildContext context, Widget child,
//                 //     ImageChunkEvent? loadingProgress) {
//                 //   if (loadingProgress == null) return child;
//                 //   return Center(
//                 //     child: CircularProgressIndicator(
//                 //       value: loadingProgress.expectedTotalBytes != null
//                 //           ? loadingProgress.cumulativeBytesLoaded /
//                 //               loadingProgress.expectedTotalBytes!
//                 //           : null,
//                 //     ),
//                 //   );
//                 // },
//               ),
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             Text(
//               'Welcome To Baekhyun Era',
//               style: TextStyle(color: Colors.redAccent),
//             ),

//             SizedBox(height: 16),
//             CircularProgressIndicator(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:ecomerce/view/screens/login.dart';
// import 'package:flutter/material.dart';

// class SplashScreen extends StatefulWidget {
//  const SplashScreen({super.key});

//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration(seconds: 5), () {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (context) => LogInScreen()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 50,
//               backgroundImage: NetworkImage(
//                 'https://cdn.i-scmp.com/sites/default/files/d8/images/methode/2020/05/05/93e3ef18-8dd9-11ea-a674-527cfdef49ee_image_hires_105518.JPG',
//               ),
//             ),
//             SizedBox(height: 16),
//             Text(
//               'My Baby',
//               style: TextStyle(color: Colors.redAccent),
//             ),

//               SizedBox(height: 16),
//           //   CircularProgressIndicator(),
//           ],
//         ),
//       ),
//     );
//   }
// }
