import 'package:flutter/material.dart';

class MainSectionsCard extends StatelessWidget {
  const MainSectionsCard({super.key});

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
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'الأقسام الرئيسية',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.dashboard,
                color: Color.fromARGB(255, 167, 139, 250),
              ),
            ],
          ),

          const SizedBox(height: 16),

          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.6,
            children: const [
              _SectionItem(
                title: 'الكورسات',
                icon: Icons.menu_book,
              ),
              _SectionItem(
                title: 'الأساتذة',
                icon: Icons.school,
              ),
              _SectionItem(
                title: 'الإعلانات',
                icon: Icons.campaign,
              ),
              _SectionItem(
                title: 'الروابط',
                icon: Icons.link,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SectionItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const _SectionItem({
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(130, 30, 41, 59),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color.fromARGB(80, 167, 139, 250),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: const Color.fromARGB(255, 167, 139, 250),
            size: 30,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}