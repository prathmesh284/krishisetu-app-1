import 'package:flutter/material.dart';
import 'package:krishisetu/pages/dashboard_page.dart';
import 'package:krishisetu/pages/disease_detection_page.dart';
import 'package:krishisetu/pages/profile_page.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    if (index == _selectedIndex) return;

    setState(() => _selectedIndex = index);

    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const DashboardPage()),
      );
    } else if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const DiseaseDetectionPage()),
      );
    } else if (index == 3) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const ProfilePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Community',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildPost(
            name: 'Ramesh Kumar',
            time: '2 hours ago',
            content:
                'Just wanted to share a new technique I tried for my tomato crop. Using a balanced NPK fertilizer (10-10-10) every two weeks has resulted in much healthier plants and a better yield. See the results for yourself!',
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuAoG4Uc_6d2BqYWtWUlq_LMqgX61t6TEOB3_PzOQaU_ZAsZJ51nwqHKHjgp1bsLa5JpohAU1VqyADNEnSDmQg-yxAqnI7M8MFtmPwstba2KE0VyIJw9H4w4COk9MEuH_BNp1q9ssjHWQUuc1blbvt1PTxfmCatP0r5Xl4ZC3XXjASe7fM7qOoDVwXaTHjTosNmZgnNbOLxC9WgrzyhEBT6Zkh_OZxHlO8T9H2UAVayriXL4q-pxzurBAJUs4vVFQAtTe9QyPUmzdRrh',
            likes: 125,
            comments: 15,
          ),
          _buildPost(
            name: 'Sita Devi',
            time: '5 hours ago',
            title: 'Advice Needed: Weed Control',
            content:
                'I\'m having trouble with a persistent type of weed in my wheat fields. Has anyone found an effective and organic way to manage it without harming the crop?',
            likes: 42,
            comments: 28,
          ),
          _buildVideoPost(
            name: 'Vijay Singh',
            time: '1 day ago',
            content:
                'My new DIY drip irrigation setup. It\'s saving a lot of water and was very cheap to build. Happy to share the design if anyone is interested!',
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuDSEkvTjR_V6_N_OAkd5e7bXLcCmUJKWQRW6pxpuS1n1fpzfmOH1u4g-FSgtt_b0QClTDWgof1Q4B3XMUpHvTRuss0_APqJ3RsUak96QKh9tV6lNG8jtUSx52Ti3zXAFsGx2PWDMNJM2Tfasug3sJrb9aJA2LCucLSIPtpTRe_YLB2svEIcaDCqikJgs6aI6Tt_9IbO6Y9-BD33tpnxZyhhHvOxp09XCkhPHIPW8NzcOciwIzqBKcm97G4ZqZFJWVwbCYjFWEWe2QJZ',
            likes: 210,
            comments: 56,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFF2C46D),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.black),
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
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildPost({
    required String name,
    required String time,
    String? title,
    required String content,
    String? imageUrl,
    required int likes,
    required int comments,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage('https://lh3.googleusercontent.com/a-/AOh14GjGZDFX'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(time, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_vert, color: Colors.grey),
              ],
            ),
            if (title != null) ...[
              const SizedBox(height: 8),
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ],
            const SizedBox(height: 8),
            Text(content),
            if (imageUrl != null) ...[
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(imageUrl, fit: BoxFit.cover),
              ),
            ],
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.thumb_up, color: Color(0xFF386641)),
                const SizedBox(width: 4),
                Text('$likes'),
                const SizedBox(width: 16),
                const Icon(Icons.chat_bubble_outline, color: Colors.grey),
                const SizedBox(width: 4),
                Text('$comments'),
                const Spacer(),
                const Icon(Icons.share, color: Colors.grey),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildVideoPost({
    required String name,
    required String time,
    required String content,
    required String imageUrl,
    required int likes,
    required int comments,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage('https://lh3.googleusercontent.com/a-/AOh14GjGZDFX'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(time, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_vert, color: Colors.grey),
              ],
            ),
            const SizedBox(height: 8),
            Text(content),
            const SizedBox(height: 8),
            Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(imageUrl, fit: BoxFit.cover),
                ),
                Container(
                  color: Colors.black38,
                  child: IconButton(
                    icon: const Icon(Icons.play_arrow, color: Colors.white, size: 48),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.thumb_up, color: Colors.grey),
                const SizedBox(width: 4),
                Text('$likes'),
                const SizedBox(width: 16),
                const Icon(Icons.chat_bubble_outline, color: Colors.grey),
                const SizedBox(width: 4),
                Text('$comments'),
                const Spacer(),
                const Icon(Icons.share, color: Colors.grey),
              ],
            )
          ],
        ),
      ),
    );
  }
}
