import 'package:flutter/material.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.90,
      padding: const EdgeInsets.all(18),
      // margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(180, 18, 26, 46),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: const Color.fromARGB(120, 124, 58, 237),
          width: 1,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 18,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'آخر إعلان',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.campaign,
                color: Color.fromARGB(255, 167, 139, 250),
                size: 26,
              ),
            ],
          ),

          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(176, 48, 2, 85),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  Icons.alarm_sharp,
                  color: Color.fromARGB(255, 136, 136, 244),
                  size: 30,
                ),
              ),

              const Text(
                'تم نشر الدرس الخامس في دورة Python',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Color.fromARGB(255, 226, 232, 240),
                  fontSize: 15,
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          Align(
            alignment: Alignment.centerLeft,
            child: TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Color.fromARGB(255, 136, 136, 244),
              ),
              label: const Text(
                'عرض جميع الإعلانات',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}