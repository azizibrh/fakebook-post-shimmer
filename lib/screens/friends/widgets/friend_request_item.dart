import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerList extends StatefulWidget {
  const ShimmerList({super.key});

  @override
  State<ShimmerList> createState() => _ShimmerListState();
}

class _ShimmerListState extends State<ShimmerList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Shimmer.fromColors(
              child: ShimmerLayout(),
              baseColor: Colors.grey.withOpacity(0.5),
              highlightColor: Colors.white),
        );
      },
    ));
  }
}

class ShimmerLayout extends StatefulWidget {
  const ShimmerLayout({super.key});

  @override
  State<ShimmerLayout> createState() => _ShimmerLayoutState();
}

class _ShimmerLayoutState extends State<ShimmerLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // here
                height: 15,
                width: MediaQuery.of(context).size.width - 150,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 6,
              ),

              Container(
                // here
                height: 15,
                width: MediaQuery.of(context).size.width - 150,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 6,
              ),
              // here
              Container(
                // here
                height: 15,
                width: MediaQuery.of(context).size.width - 250,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 6,
              ),
            ],
          )
        ],
      ),
    );
  }
}

































// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class FriendRequestItem extends StatelessWidget {
//   final String name;
//   final String image;

//   const FriendRequestItem({
//     super.key,
//     required this.name,
//     required this.image,
//   });

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       width: size.width,
//       padding: EdgeInsets.symmetric(
//         vertical: size.height * 0.006,
//       ),
//       child: Row(
//         children: [
//           ClipRRect(
//             borderRadius: const BorderRadius.all(Radius.circular(50)),
//             child: Image.asset(
//               image,
//               fit: BoxFit.cover,
//               width: size.width * 0.16,
//             ),
//           ),
//           SizedBox(
//             width: size.width * 0.020,
//           ),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       name,
//                       style: GoogleFonts.roboto(
//                         color: Colors.white,
//                         fontWeight: FontWeight.w600,
//                         fontSize: size.width * 0.040,
//                       ),
//                     ),
//                     Text(
//                       "1 h",
//                       style: GoogleFonts.roboto(
//                         color: Colors.white,
//                       ),
//                     )
//                   ],
//                 ),
//                 Text(
//                   "1 mutual friend",
//                   style: GoogleFonts.roboto(
//                     color: Colors.grey[400],
//                     fontSize: size.width * 0.035,
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       width: size.width * 0.30,
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: const Color(0xff2C64F6),
//                             shape: const RoundedRectangleBorder(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(8)))),
//                         child: Text(
//                           'Confirm',
//                           style: GoogleFonts.roboto(
//                             color: Colors.white,
//                             fontSize: size.width * 0.040,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: size.width * 0.020,
//                     ),
//                     SizedBox(
//                       width: size.width * 0.30,
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: const Color(0xff2F3031),
//                             shape: const RoundedRectangleBorder(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(8)))),
//                         child: Text(
//                           'Delete',
//                           style: GoogleFonts.roboto(
//                             color: Colors.white,
//                             fontSize: size.width * 0.040,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
