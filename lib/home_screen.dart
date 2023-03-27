import 'package:flutter/material.dart';

import 'package:task_app/music_list-screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/music.png'), fit: BoxFit.cover),
          ),
          child: Center(
              child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white24, Colors.indigoAccent],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MusicListScreen()),
                );
              },
              child: const Text(
                'Show music list',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18, fontStyle: FontStyle.italic,
                  //decoration: TextDecoration.underline,
                  // decorationColor: Colors.red,
                  // height: 1.5,
                  //decorationStyle: TextDecorationStyle.dashed
                ),
              ),
              color: Colors.transparent,
              elevation: 0,
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 24,
              ),
              minWidth: 200,
              height: 48,
            ),
          )

//         MaterialButton(
//   onPressed: () {
//     // Add your button's onPress event here
//   },
//   child: Text(
//     'Button Text',
//     style: TextStyle(
//       color: Colors.white,
//       fontSize: 16,
//     ),
//   ),
//   color: Colors.blue,
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(8),
//   ),
//   padding: EdgeInsets.symmetric(
//     vertical: 12,
//     horizontal: 24,
//   ),
//   minWidth: 200,
//   height: 48,
// )

//         ElevatedButton(
//   style: ElevatedButton.styleFrom(
//     primary: Colors.black, // background color
//     onPrimary: Colors.white, // foreground color
//     padding: EdgeInsets.symmetric(horizontal: 16), // button padding
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(20), // button border radius
//     ),
//     // button shadow
//   ),
//        onPressed: () {
//         Navigator.push(
//         context,
//        MaterialPageRoute(builder: (context) => const MusicListScreen()),
//   );
// }, child: Text('Show My Music'),
// // button text
// )

              )),
    );
  }
}
