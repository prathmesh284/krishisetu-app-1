import 'package:flutter/material.dart';
import 'disease_detection_page.dart';
import 'community_page.dart';
import 'profile_page.dart';

class CropAdvisoryPage extends StatefulWidget {
  const CropAdvisoryPage({super.key});

  @override
  State<CropAdvisoryPage> createState() => _CropAdvisoryPageState();
}

class _CropAdvisoryPageState extends State<CropAdvisoryPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8F6),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F8F6),
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.black),
        title: const Text('Crop Advisory',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(Icons.notifications, color: Colors.black))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Text('For Your Farm',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            _buildFarmAlerts(),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 24, 16, 8),
              child: Text('Crop Management Guides',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            _buildChipBar(),
            _buildArticleCard(
                'Best Practices for Monsoon Planting',
                'Learn how to maximize your crop yield by choosing the right seeds and techniques for the rainy season.',
                'https://lh3.googleusercontent.com/aida-public/AB6AXuBsaeBGvIwHeyf46oGt1IFM4x38BB2F0rj1jKAgItbhEcafrZPK-R3eTtVxIWSeb7mYlxtIk3Gez3eYdq6b718XVgF2m3cXtjiccgIob5Cc3a3MGd5BH6KQlOskYu1VB7omNx7VQVUNmfSc8Q0mxrIE3RdzhkvzpyHYDF4spBM9-LopgSkbo3jQQ8C8DEUgpue1N55H0m02q_JRqheL6azvBHhn8G_UQxwxzewyRUDaYZMDBSpGYpt6GpJecp_yBiVQKRgVM7m8oRMz'),
            _buildArticleCard(
                'Guide to Organic Pest Control Methods',
                'Discover effective and eco-friendly ways to protect your crops from common pests without using harsh chemicals.',
                'https://lh3.googleusercontent.com/aida-public/AB6AXuDHJ9cGA8krHd6sdbgeZhgoxZGO66YRGe6h3iXWg_Tig88vgquaaMq6hfZtLEZ4foPgvS3X01f5hrxpyaeARkR901EeplPApz4kfHHAWjVKo7BKz3nrukgQdoF2GnlNVpgWz5qStr1vbnZ0YiGI4-ZqitCrdkOk-G8i0hYtNRfUUhcdVIGRauBcDJemLqP6oo_fydKLQ5qKlpQfR40MKJvYdGpT5sTY2b3EUpoRJbY6ZcT14We9_qgX_Q8O6UqpbNFlnDdZ8cDjD-RG'),
            _buildArticleCard(
                'When and How to Harvest Your Wheat Crop',
                'Ensure optimal quality and quantity by learning the key indicators for harvesting wheat at the perfect time.',
                'https://lh3.googleusercontent.com/aida-public/AB6AXuA2CRcwTg308zJw1Z2bvl2FG1fcw0L71aroMg3Tg-WXNPU70ErGPuZCiRN9tCjJvUIm8lRF4rbk6dFfb3r11J67UzMsBlKApmxVrf5wHQXOW3xm-mSqCErqvAfk_K9ezeBKHz6-6nTHIZrBwwLS7BI0I9Ays70zyFXdCDk3wQIzn77aQ3EpHYGUvYlhmxXpaI0GPzozWoPq1loTsMPxYAiSFDjrkjjqml7HEin9J3TU4KbYYqQehClqhUMcRZYmB60cdAY2J4eDpgDp'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF3A5F0B),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() => _selectedIndex = index);
          if (index == 1) {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const DiseaseDetectionPage()));
          } else if (index == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const CommunityPage()));
          } else if (index == 3) {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const ProfilePage()));
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_camera), label: 'Detect'),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Community'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildFarmAlerts() {
    return SizedBox(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          _alertCard(Icons.water_drop, 'Irrigation Alert',
              'Soil moisture is low. Water your tomato crop today.'),
          _alertCard(Icons.bug_report, 'Pest Warning',
              'High risk of aphids reported in your region.'),
          _alertCard(Icons.science, 'Nutrient Advice',
              'Apply nitrogen-rich fertilizer this week.'),
        ],
      ),
    );
  }

  Widget _alertCard(IconData icon, String title, String message) {
    return Container(
      width: 230,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.amber.shade100, shape: BoxShape.circle),
              padding: const EdgeInsets.all(8),
              child: Icon(icon, color: Colors.amber.shade700),
            ),
            const SizedBox(width: 8),
            Expanded(
                child: Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 16)))
          ]),
          const SizedBox(height: 8),
          Text(message,
              style: const TextStyle(fontSize: 13, color: Colors.black54)),
        ],
      ),
    );
  }

  Widget _buildChipBar() {
    final chips = [
      'All',
      'Planting',
      'Irrigation',
      'Pest Control',
      'Harvesting',
      'Soil Health'
    ];
    return SizedBox(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: chips.length,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.only(right: 8),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: index == 0 ? const Color(0xFF3A5F0B) : const Color(0xFFE8F5E9),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              chips[index],
              style: TextStyle(
                color: index == 0 ? Colors.white : Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildArticleCard(String title, String desc, String imgUrl) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 2))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.network(imgUrl, height: 160, width: double.infinity, fit: BoxFit.cover)),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 16)),
                const SizedBox(height: 4),
                Text(desc,
                    style:
                        const TextStyle(fontSize: 13, color: Colors.black54)),
                const SizedBox(height: 6),
                const Text('Read More →',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xFF3A5F0B)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
