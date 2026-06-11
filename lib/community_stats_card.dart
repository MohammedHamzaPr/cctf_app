import 'package:flutter/material.dart';

class CommunityStatsCard extends StatelessWidget {
  const CommunityStatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.90,
      padding: const EdgeInsets.all(18),
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
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "إحصائيات المجتمع",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.bar_chart,
                color: Color.fromARGB(255, 167, 139, 250),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildItem(
                icon: Icons.menu_book,
                title: "الكورسات",
                value: "12",
              ),

              _buildItem(
                icon: Icons.school,
                title: "الأساتذة",
                value: "5",
              ),

              _buildItem(
                icon: Icons.groups,
                title: "الأعضاء",
                value: "1500+",
              ),
            ],
          ),
        ],
      ),
    );
  }

  static Widget _buildItem({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Column(
      children: [
        Icon(
          icon,
          color: const Color.fromARGB(255, 167, 139, 250),
          size: 32,
        ),

        const SizedBox(height: 8),

        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 4),

        Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}