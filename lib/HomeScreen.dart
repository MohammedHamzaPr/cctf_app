import 'package:flutter/material.dart';
import 'announcement_card.dart';
import 'community_stats_card.dart';
import 'main_sections_card.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        elevation: 20,
        shadowColor: const Color.fromARGB(255, 5, 0, 75),
        backgroundColor: const Color.fromARGB(0, 2, 18, 73),
        centerTitle: true,

        leading: const Icon(
          Icons.school,
          color: Colors.white,
          size: 35,
        ),

        title: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'مرحباً بك في',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),

            Text(
              'CCTF Community',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),

            Text(
              'تعلم، شارك، وتطور معنا',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/img/bgScreen.png"),
            fit: BoxFit.cover,
          ),
        ),

        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                SizedBox(height: 20),

                AnnouncementCard(),

                SizedBox(height: 16),

                CommunityStatsCard(),

                SizedBox(height: 16),

                MainSectionsCard(),

                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}