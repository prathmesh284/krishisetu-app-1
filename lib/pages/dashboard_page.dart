import 'package:flutter/material.dart';
import 'package:krishisetu/pages/disease_detection_page.dart';
import 'package:krishisetu/pages/disease_lib_page.dart';
import 'package:krishisetu/pages/market_price_page.dart';
import 'community_page.dart';
import 'profile_page.dart';
import 'crop_advisory_page.dart';

class DashboardPage extends StatelessWidget {
  final int _selectedIndex = 0;
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8F6),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F8F6),
        elevation: 0,
        centerTitle: true,
        title: const Row(
          children: [
            SizedBox(width: 30),
            Icon(Icons.agriculture, color: Color.fromARGB(255, 13, 19, 9), size: 30),
            SizedBox(width: 10),
            Text(
              'KrishiSetu',
              style: TextStyle(
                color: Color(0xFF182210),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications, color: Color(0xFF182210)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Good Morning, Pratham',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF182210),
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "Today's Weather: Sunny, 28°C",
              style: TextStyle(color: Color(0xFF42483D)),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: const Color(0x3362D411),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Icon(Icons.photo_camera, size: 40, color: Color(0xFF62D411)),
                  const SizedBox(height: 10),
                  const Text(
                    'Detect Plant Disease',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Take a picture of a leaf to identify issues.',
                    style: TextStyle(fontSize: 14, color: Color(0xFF42483D)),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF62D411),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.add_a_photo, color: Colors.white),
                    label: const Text('Scan Now', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Explore Features',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF182210),
              ),
            ),
            const SizedBox(height: 10),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildFeatureCard(
                  context,
                  icon: Icons.groups,
                  title: 'Farmer Community',
                  subtitle: 'Connect with others',
                  page: const CommunityPage(),
                ),
                _buildFeatureCard(
                  context,
                  icon: Icons.trending_up,
                  title: 'Market Prices',
                  subtitle: 'Check latest rates',
                  page: const MarketPricesPage(),
                ),
                _buildFeatureCard(
                  context,
                  icon: Icons.menu_book,
                  title: 'Disease Library',
                  subtitle: 'Learn about diseases',
                  page: const DiseaseLibraryPage(),
                ),
                _buildFeatureCard(
                  context,
                  icon: Icons.biotech,
                  title: 'Crop Advisory',
                  subtitle: 'Expert farming tips',
                  page: const CropAdvisoryPage(),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF62D411),
        unselectedItemColor: const Color(0xFF42483D),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.photo_camera), label: 'Detect'),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Community'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const DiseaseDetectionPage()));
          } else if (index == 2) {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const CommunityPage()));
          } else if(index == 3){
            Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfilePage()));
          }
        },
      ),
    );
  }

  Widget _buildFeatureCard(BuildContext context,
      {required IconData icon,
      required String title,
      required String subtitle,
      required Widget page}) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFFDCE0D7)),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: const Color(0xFF62D411), size: 28),
            const SizedBox(height: 8),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(subtitle, style: const TextStyle(color: Color(0xFF42483D), fontSize: 12)),
          ],
        ),
      ),
    );
  }
}