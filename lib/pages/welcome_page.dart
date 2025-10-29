import 'package:flutter/material.dart';
import 'package:krishisetu/pages/login_page.dart';

// ---------------- WELCOME PAGE ---------------- //
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://lh3.googleusercontent.com/aida-public/AB6AXuAWOO5vvKa9UPTSHE8RP1nSZIY9M3ErXVS6J8c6-yrh4Q8ZKf0oroHyok5XRZOyKglec0icQ1YQpawDHF8v4i-r1VKd5hSg-aLro5V-3bpOeWBu-f7rWDrR8LXOrkQCwY9LJdzlGdKQAYnOdyQwwZ_OtogLe9JdtVY_9Fqr3MneEQW1eSXa7OU6-0645k_S5A2jBieptMOOkyIAB3rKm_VUSDEGTRdB1px9yWDMoEsAY3dLWl4agGFTeZFZ0H3Z6GGvZLgpLu2-z2LZ',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.5),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    'KrishiSetu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            const Text(
              'Welcome to KrishiSetu',
              style: TextStyle(
                color: Color(0xFF131b0d),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            const Text(
              'Your smart farming companion.',
              style: TextStyle(color: Color(0xFF131b0d), fontSize: 16),
            ),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  _buildFeatureCard(Icons.grass, 'Instantly detect plant diseases'),
                  const SizedBox(height: 10),
                  _buildFeatureCard(Icons.groups, 'Connect with fellow farmers'),
                  const SizedBox(height: 10),
                  _buildFeatureCard(Icons.camera_alt, 'Get expert advice'),
                ],
              ),
            ),

            const SizedBox(height: 30),
            const Text(
              'Choose your language',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _languageButton('English', true),
                  const SizedBox(width: 10),
                  _languageButton('हिंदी', false),
                  const SizedBox(width: 10),
                  _languageButton('मराठी', false),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF62d411),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account? '),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginPage()),
                          );
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xFF62d411),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFD9E7CF)),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF62d411)),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFF131b0d),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _languageButton(String text, bool selected) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: selected ? const Color(0x3362d411) : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xFF131b0d),
            ),
          ),
        ),
      ),
    );
  }
}