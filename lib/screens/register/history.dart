import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HistoryScreen())); // Membungkus dengan MaterialApp
}

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        backgroundColor: const Color(0xFF38A898), // Sesuaikan warna
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: const Color(0xFFF9F9F9)),
              child: ProfileUser(),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileUser extends StatelessWidget {
  const ProfileUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF50BF95),
            const Color(0xFF39705B),
          ],
        ),
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/history.png'), // Path to your image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 20, // Adjust the position as needed
                left: 20, // Adjust the position as needed
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Active Booking',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Kampus UAD 4',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'A1',
                      style: TextStyle(
                        fontSize: 96,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Expired in',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    const Text(
                      '3 : 59 : 10',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Rp. 15.000',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}