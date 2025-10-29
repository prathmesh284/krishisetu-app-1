import 'package:flutter/material.dart';

class DiseaseLibraryPage extends StatelessWidget {
  const DiseaseLibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Disease Library'),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: const [Icon(Icons.notifications_none)],
        leading: const Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // Search Bar
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search for a disease or crop...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 12),

              // Filter Chips
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildChip('All', true),
                    _buildChip('By Crop', false),
                    _buildChip('By Symptom', false),
                    _buildChip('Fungal', false),
                    _buildChip('Bacterial', false),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              // Disease Grid
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  _diseaseCard(context, 'Powdery Mildew', 'Affects: Tomato, Gourd', 'https://lh3.googleusercontent.com/aida-public/AB6AXuCyW5X7YFKaefYUk3-iVutMr3vmLweAfld61nY_EPrziK366kYVR98qARlcFi8P4ZRIlbng7JLfDTun3JRBwHMy-JpWh3a9O0WH5sWtppcqLEtIXDTNsea0JK_oLF_UKMAWc2dEMXXlYsbnmLreyL6x6GOMinN6cgVdYzCBkeDVUtVXVt4AQbM2XRnJFwoY_JsMHIoyu4BpNUdW9m63tlUnuPw19Klurq_bqC_MPdpZndEyW3SBWc1F9W4lAGpwfua3nKnfY7blr6j3'),
                  _diseaseCard(context, 'Late Blight', 'Affects: Potato, Tomato', 'https://lh3.googleusercontent.com/aida-public/AB6AXuDp5PIenTgWYn15gl2jphbod09oYRb386XCaivtxhp9D0XCB1jp-Mh-4ZddfJOOf_dQw3aUgVA6X1Ca3nQk7cKxImsnxnP2gwRLeHjmy3YgS9gmVEjLwgoSC1UuEhd1NKBxH0k65cfKMTCi9l07LaYrTQEUL19bFTlavIRMJBbkzeDLroY4EninjQKorkQABAFuXhqWlSG_icUr-ukne5Ey6n9HXrhPexc3epPljhJQ-IIwnn3Y6xHDE2R2pTrQ74mn8Dbi4wNGRTY-'),
                  _diseaseCard(context, 'Leaf Curl', 'Affects: Papaya, Chilli', 'https://lh3.googleusercontent.com/aida-public/AB6AXuAD6x0deAC4qdnyfyu6ii4L5UGscwTENpMkAvMSDgVZ1ZOou1nECNNTXjt2paDQ2d-mfif1_wPCpvArLRKQg6w12n7ytVrQmuXddsirP0__vjTYsfUiE_Pno7zeNcjFNM7LSf9i3RRvTLZcCPKtBxZRY3kRrFuP6q5nagyAwUtPV6SPSQ2mjAlzEou7H5ujrtffR-HEsyhMCAsD-LpKQ6Lcg-eU3-RRgo5yO2BN99af0RTEU_ewZvmT0LJTipuExPC8FRKpe5iq1y2u'),
                  _diseaseCard(context, 'Rust', 'Affects: Wheat, Beans', 'https://lh3.googleusercontent.com/aida-public/AB6AXuCiSKLcTph69cUdQFmElBLE3VWkJlzU8lTz4GeqZtFoDXrDSnecu4_OHYCnKptAAumk8JXIDAjwyUqv58wL81nich_-z0UxprGgIM7o-j1c4ZzQV1fF9w2I4RuitB_qknCHRovQgbsI-H-Yls_GwgEYI1N1fXT7-UwrgTwmTx_VuhXnMyg0sy7myL2SKmbUFMQDby9OPWWUzaYCSpRHt1pEUl2WjukHB9wwZBvVSJUa6abXQB4bhszZE6cscyqMuh27TLkQVgewSq1K'),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.photo_camera),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.pest_control), label: 'Diseases'),
          BottomNavigationBarItem(icon: Icon(Icons.forum), label: 'Community'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 1,
      ),
    );
  }

  Widget _buildChip(String label, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Chip(
        label: Text(label, style: TextStyle(color: isSelected ? Colors.white : Colors.black)),
        backgroundColor: isSelected ? Colors.green : Colors.grey[300],
      ),
    );
  }

  Widget _diseaseCard(BuildContext context, String title, String subtitle, String imageUrl) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DiseaseDetailPage(title: title, imageUrl: imageUrl),
          ),
        );
      },
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(imageUrl, height: 80, width: double.infinity, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 4),
                  Text(subtitle, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DiseaseDetailPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  const DiseaseDetailPage({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl, height: 250, width: double.infinity, fit: BoxFit.cover),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Overview', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text('Late blight is a destructive fungal disease that can rapidly destroy tomato and potato crops, caused by the oomycete Phytophthora infestans.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
