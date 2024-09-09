import 'package:flutter/material.dart';

class ProfileHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profile Section
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey[400],
                      child: Icon(Icons.person, size: 80, color: Colors.white),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shubham More',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '@shubham',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow[600],
                            foregroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(horizontal: 12),
                          ),
                          child: Text('Edit Profile'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              // Wallet Section
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Wallet',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Balance',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            Text(
                              '₹ 500.00',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[600],
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                      child: Text('ADD'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              // App Settings Section
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    _buildSettingItem(Icons.help_outline, 'Help'),
                    _buildSettingItem(Icons.security, 'Security & privacy'),
                    _buildSettingItem(Icons.account_circle_outlined, 'Account'),
                    _buildSettingItem(
                        Icons.description_outlined, 'Term & conditions'),
                    _buildSettingItem(Icons.shield_outlined, 'Safety'),
                    _buildSettingItem(Icons.feedback_outlined, 'Feedback'),
                    _buildSettingItem(Icons.info_outline, 'About us'),
                    _buildSettingItem(Icons.logout, 'Log out'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title),
      trailing: Icon(Icons.chevron_right),
      onTap: () {},
    );
  }
}
