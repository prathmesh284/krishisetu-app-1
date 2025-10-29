// import 'package:flutter/material.dart';

// class MarketPricesPage extends StatelessWidget {
//   const MarketPricesPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<Map<String,Object>> crops = [
//       {
//         'name': 'Wheat',
//         'location': 'Nagpur Market, Maharashtra',
//         'price': '₹2,150 / Qt',
//         'change': '+2.4%',
//         'isPositive': true,
//         'image':
//             'https://lh3.googleusercontent.com/aida-public/AB6AXuCD0xfoLW-QoYbqushPvgTbg3jK_8ZYVyHfleuxOd8qhDAU_5LBvkxf1awZW8rdyqzmrROTA0eViFJ7090fUvexAeOaTsGZ75vx6zxhzxOhDO-TNs8KmO-hWC37VYzNF88aXhL9k__MuoKBiQ_8PhLtajSI-94xOu2Ao7-S7D68-lRy-zg14ya6wBnpS93JJOlshf0-JXsIzEba1ECrlY9bd1jGqB-lej0SZXJBe4AevRfv6de-3LOAsOJU813LtLwqZZmKadpXAUbS'
//       },
//       {
//         'name': 'Tomato',
//         'location': 'Indore Mandi, Madhya Pradesh',
//         'price': '₹1,800 / Qt',
//         'change': '-1.1%',
//         'isPositive': false,
//         'image':
//             'https://lh3.googleusercontent.com/aida-public/AB6AXuAV-18eahjV-u5IhsWWUu_fKHiH96_EsYGlR_7eIDlq8GImyLyQX5m68Z6COVikQuTexu1qspzThiIwz6O1ottojFzAVzOfO-4Fu3tpqFnfLMcAOU1CFiJo17_ZcS9eLN3fg6Q3ye26Vk9bjJjBJHmZojRBlflPauRffksKZXICiQf8FApXGs2xN835pip0ahGk9XJadXSwKQEAdMzy1buihVuBjd8Z6U3HppfNXDC4niyB43GFubJg0IG4zuoGOv5E04JdwQtH1-uV'
//       },
//       {
//         'name': 'Maize',
//         'location': 'Jaipur Market, Rajasthan',
//         'price': '₹1,975 / Qt',
//         'change': '+0.8%',
//         'isPositive': true,
//         'image':
//             'https://lh3.googleusercontent.com/aida-public/AB6AXuAeEzn4RXe-nUNTheEpsmm5gdqG0atfzFCwPhWsUVTxNSckHJJ5jJRVw8OYtmdkFuSKKoy3NFnHE9D_OQfUwhUfdc-neI8bSFi09K-mkbBfD4KUXsK57T5nf-Y5G_BoQddmrUpJwWfujaDZnigYueO5Dssct9_OQdr4CI36FbP4HLOoJ-VvEhr_O8PbDqXL_VH1EZME0nQ3YEZnLVpJWw8x3_dcg-npCFCvLuFr0tq7Vz26WOpBbwBKbuzvAcvk52wJqOwNO4CqS5Ul'
//       },
//       {
//         'name': 'Soybean',
//         'location': 'Pune Market, Maharashtra',
//         'price': '₹4,500 / Qt',
//         'change': '-0.5%',
//         'isPositive': false,
//         'image':
//             'https://lh3.googleusercontent.com/aida-public/AB6AXuCIHLBdlYbDPlKifO7jCYbLkh2OiyiegTxOmYlZ4fBT_5TsVJ1nCcBwbaSvDZFzbv_Y-MBu-51ZluM8pOC8LQYOI2JceKg0vA4sZ9xBz-Y8XoWuGK4vRhZnLSrb8lE1EGVIPzn-jYuZzwPcaL-asysts5zgdPcSskO41NhqBfnwX06QeBxqDfzvwycGRTcwcgnqHc-13tG9leq4kPi9HNawyzdhNwBacKEXPg-6Yx08TXKA1b-r-cpnPR_mY3ldGMyi9p99Haur5B3v'
//       },
//       {
//         'name': 'Cotton',
//         'location': 'Kurnool Market, Andhra Pradesh',
//         'price': '₹7,200 / Qt',
//         'change': '+3.1%',
//         'isPositive': true,
//         'image':
//             'https://lh3.googleusercontent.com/aida-public/AB6AXuAcp6641QhwH13d9vRSJiU0ydDYuie0vohEiBy0W8mzDdG6XoxadEP1xKKlGGNAkitjjgbAzO4mXqQiZqs5P0AOqe0G_unH9uBKBq4fo1jhvzWyzxslOZuoPHH_VOeam6ElEDPuzN2ucHoPFdo9m5bfs2eJl49FMx-QVB4RhWvUfhrYWFecWrDHc0h42GuTkusFqBv4zeuOie1S9Q28xRborgnoSgqGBbjYvGQwMH-D8loN52j1g1vC1ecdGXN-GM8Ow6CA81XbeMZi'
//       },
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Market Prices'),
//         actions: const [Icon(Icons.notifications_outlined)],
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(16),
//         itemCount: crops.length,
//         itemBuilder: (context, index) {
//           final crop = crops[index];
//           return Card(
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//             elevation: 3,
//             margin: const EdgeInsets.only(bottom: 12),
//             child: ListTile(
//               leading: ClipRRect(
//                 borderRadius: BorderRadius.circular(8),
//                 child: Image.network(
//                   crop['image']!.toString(),
//                   width: 56,
//                   height: 56,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               title: Text(
//                 crop['name']!.toString(),
//                 style:
//                     const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
//               ),
//               subtitle: Text(crop['location']!.toString()),
//               trailing: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Text(crop['price']!.toString(),
//                       style: const TextStyle(fontWeight: FontWeight.w500)),
//                   Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Icon(
//                         // crop['isPositive']! ? Icons.arrow_upward : Icons.arrow_downward,
//                         true ? Icons.arrow_upward : Icons.arrow_downward,
//                         // color: crop['isPositive']! ? Colors.green : Colors.red,
//                         color: true ? Colors.green : Colors.red,
//                         size: 18,
//                       ),
//                       Text(
//                         crop['change']!.toString(),
//                         style: TextStyle(
//                           color:
//                               // crop['isPositive']! ? Colors.green : Colors.red,
//                               true ? Colors.green : Colors.red,
//                           fontSize: 13,
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.green,
//         onPressed: () {},
//         child: const Icon(Icons.add),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: 2,
//         selectedItemColor: Colors.green,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.pest_control), label: 'Detect'),
//           BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: 'Prices'),
//           BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Community'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'dashboard_page.dart';
import 'community_page.dart';
import 'profile_page.dart';

class MarketPricesPage extends StatelessWidget {
  const MarketPricesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Market Prices', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: const [Icon(Icons.notifications_none)],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search by crop or location...',
              prefixIcon: const Icon(Icons.search, color: Colors.green),
              filled: true,
              fillColor: Colors.green.withOpacity(0.1),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _filterChip('Filter by Crop'),
              _filterChip('Filter by Location'),
            ],
          ),
          const SizedBox(height: 16),
          _cropCard('Wheat', 'Nagpur Market, Maharashtra', '₹2,150 / Qt', true,
              'https://images.unsplash.com/photo-1615485737457-9b1a9c8fefdb?auto=format&fit=crop&w=400&q=60'),
          _cropCard('Tomato', 'Indore Mandi, Madhya Pradesh', '₹1,800 / Qt', false,
              'https://images.unsplash.com/photo-1607207363063-3b623d1c8e91?auto=format&fit=crop&w=400&q=60'),
          _cropCard('Maize', 'Jaipur Market, Rajasthan', '₹1,975 / Qt', true,
              'https://images.unsplash.com/photo-1608506137391-b3d3b66d063d?auto=format&fit=crop&w=400&q=60'),
          _cropCard('Soybean', 'Pune Market, Maharashtra', '₹4,500 / Qt', false,
              'https://images.unsplash.com/photo-1612438214820-8c7c7f4b9a55?auto=format&fit=crop&w=400&q=60'),
          _cropCard('Cotton', 'Kurnool Market, Andhra Pradesh', '₹7,200 / Qt', true,
              'https://images.unsplash.com/photo-1600762697053-0b42f2b3ed7a?auto=format&fit=crop&w=400&q=60'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () {},
        child: const Icon(Icons.add, size: 32),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => const DashboardPage()));
          } else if (index == 3) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => const CommunityPage()));
          } else if (index == 4) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => const ProfilePage()));
          }
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.pest_control), label: 'Detect'),
          BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: 'Prices'),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Community'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _filterChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Text(label, style: const TextStyle(fontSize: 14)),
          const Icon(Icons.expand_more, size: 18)
        ],
      ),
    );
  }

  Widget _cropCard(String crop, String location, String price, bool positive, String imageUrl) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 5)],
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(imageUrl, width: 56, height: 56, fit: BoxFit.cover),
        ),
        title: Text(crop, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(location, style: TextStyle(color: Colors.grey[600], fontSize: 13)),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(price, style: const TextStyle(fontWeight: FontWeight.w500)),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(positive ? Icons.arrow_upward : Icons.arrow_downward,
                    size: 16, color: positive ? Colors.green : Colors.red),
                Text(positive ? '+2.4%' : '-1.1%',
                    style: TextStyle(color: positive ? Colors.green : Colors.red, fontSize: 12)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
