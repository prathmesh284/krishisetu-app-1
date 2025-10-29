import 'package:flutter/material.dart';
import 'package:krishisetu/pages/dashboard_page.dart';
import 'package:krishisetu/pages/disease_detection_page.dart';
import 'community_page.dart';

class ProfilePage extends StatelessWidget {
  final int _selectedIndex = 3;
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://lh3.googleusercontent.com/aida-public/AB6AXuBliYnZYLntHQ_3KolS1udL6FjrmvL4aY53OByTO8-i3lYxZSgU1EsGHorEFi4MbEQ8j3aVYYyH6jvRHYFjX3spE-Hs4PAF0Q5pgFDa0MxmMoPAAb_MT0NTnlfNRUtmX8dbqA8K_rdwZxJrCNfA2P_4TUWLiTlhDPxPlhOnndg-a5c2Z00ctFH3wuIpE9KR9-VUmkgM5yQukW-iqVYYw5y7zTe1wIe6-Y-ZTexZgTYfCoC4Y5_zANnLnjuUI3yRAwfs10q1A9BpHjpF'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: IconButton(
                        icon: const Icon(Icons.edit, size: 15, color: Colors.white),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text('Sangam Patil', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Text('Satara, Maharastra', style: TextStyle(color: Colors.green)),
              const Divider(height: 30),
              _buildSectionTitle('Account Settings'),
              _buildSettingTile(Icons.notifications, 'Manage Preferences'),
              _buildSettingTile(Icons.language, 'Change Language'),
              _buildSettingTile(Icons.lock_reset, 'Change Password'),
              const Divider(height: 30),
              _buildSectionTitle('Support & Information'),
              _buildSettingTile(Icons.help_outline, 'Help & Support'),
              _buildSettingTile(Icons.policy, 'Privacy Policy'),
              _buildSettingTile(Icons.info_outline, 'About KrishiSetu'),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.logout),
                label: const Text('Log Out'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
            ],
          ),
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
          if (index == 0) {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const DashboardPage()));
          } else if (index == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const DiseaseDetectionPage()));
          } else if(index == 2){
            Navigator.push(context, MaterialPageRoute(builder: (_) => const CommunityPage()));
          }
        },
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black54)),
      ),
    );
  }

  Widget _buildSettingTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.green),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {},
    );
  }
}