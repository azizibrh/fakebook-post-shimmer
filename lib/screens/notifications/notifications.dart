import 'package:t25march/screens/notifications/widgets/notification_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  static const List notifications = [
    {
      'title': 'Vihanga Nivarthana mentioned you in a comment.',
      'image': 'assets/images/vihanga.jpeg',
      'time': '',
    },
    {
      'title': 'Dhanika Perera replied to your comment on his photo.',
      'image': 'assets/images/dhanika.jpeg',
      'time': '',
    },
    {
      'title':
          'Pubudu Arosha Wanigasekara mentioned you in a comment in Software Engineers Sri Lanka - ශ්රී ලංකා මෘදුකාංග ඉන්ජිනේරු එකමුතුව',
      'image': 'assets/images/user1.jpg',
      'time': '',
    }
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.050,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Notifications",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * 0.070,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color(0xff2F3031),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: const Icon(
                            Iconsax.setting_2,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.030,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color(0xff2F3031),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: const Icon(
                            Iconsax.search_normal,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
                Text(
                  "New",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: size.width * 0.040,
                  ),
                ),
                Column(
                  children: List.generate(
                    notifications.length,
                    (index) => NotificationItem(
                      title: notifications[index]['title'],
                      image: notifications[index]['image'],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
