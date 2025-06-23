import 'package:app_jualan/screens/my_orders_screen.dart';
import 'package:app_jualan/screens/user_details_screen.dart';
import 'package:app_jualan/theme/theme.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget _buildActionCard({
    required IconData icon,
    required String title,
    required String value,
    required Color color,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(icon, color: color),
            SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            SizedBox(height: 4),
            Text(
              title,
              style: TextStyle(fontSize: 12, color: AppTheme.textSecondary),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({required String title, required List<Widget> items}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 4, bottom: 12),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.textPrimary,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(children: items),
        ),
      ],
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    required Color color,
    bool isDestructive = false,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color:
                    isDestructive
                        ? AppTheme.error.withOpacity(0.1)
                        : color.withOpacity(0.1),
              ),
              child: Icon(
                icon,
                color: isDestructive ? AppTheme.error : color,
                size: 24,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color:
                          isDestructive ? AppTheme.error : AppTheme.textPrimary,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: AppTheme.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right, color: AppTheme.textSecondary, size: 20),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: AppTheme.primaryGradient,
                  end: Alignment.bottomRight,
                  begin: Alignment.topLeft,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: -50,
                    right: -50,
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 48,
                    left: 16,
                    right: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.15,
                ),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset('assets/images/profile.jpg'),
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Moh farhan",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "moh.farhan21@gmail.com",
                            style: TextStyle(color: AppTheme.textSecondary),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        children: [
                          _buildActionCard(
                            icon: Icons.shopping_bag_outlined,
                            title: 'Orders',
                            value: '12',
                            color: AppTheme.primaryColor,
                          ),
                          SizedBox(width: 12),
                          _buildActionCard(
                            icon: Icons.favorite_border_outlined,
                            title: 'Wishlist',
                            value: '8',
                            color: AppTheme.secondaryColor,
                          ),
                          SizedBox(width: 12),
                          _buildActionCard(
                            icon: Icons.local_shipping_outlined,
                            title: 'Shipping',
                            value: '2',
                            color: AppTheme.tertiaryColor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 24),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          _buildSection(
                            title: 'Account Settings',
                            items: [
                              _buildMenuItem(
                                icon: Icons.person_outline,
                                title: 'Personal Details',
                                subtitle: "Update your personal information",
                                onTap: () {
                                   Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => UserDetailsScreen(),
                                    ),
                                  );
                                },
                                color: AppTheme.primaryColor,
                              ),
                              _buildMenuItem(
                                icon: Icons.lock_outline,
                                title: 'Change Password',
                                subtitle: "Update your password",
                                onTap: () {},
                                color: AppTheme.primaryColor,
                              ),
                              _buildMenuItem(
                                icon: Icons.notifications,
                                title: 'Notifacations',
                                subtitle: "Manage your notifications",
                                onTap: () {},
                                color: AppTheme.primaryColor,
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                          _buildSection(
                            title: 'Shopping Preferences',
                            items: [
                              _buildMenuItem(
                                icon: Icons.shopping_bag_outlined,
                                title: 'My Orders',
                                subtitle: "View your order history",
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyOrdersScreen(),
                                    ),
                                  );
                                },
                                color: AppTheme.secondaryColor,
                              ),
                              _buildMenuItem(
                                icon: Icons.location_on_outlined,
                                title: 'Shipping Address',
                                subtitle: "manage your delivery addresess",
                                onTap: () {
                                   Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => UserDetailsScreen(),
                                    ),
                                  );
                                },
                                color: AppTheme.secondaryColor,
                              ),
                              _buildMenuItem(
                                icon: Icons.payment_outlined,
                                title: 'Notifacations',
                                subtitle: "Manage your payment options",
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => ChangePasswordScreen(),
                                  //   ),
                                  // );
                                },
                                color: AppTheme.secondaryColor,
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                          _buildSection(
                            title: 'More',
                            items: [
                              _buildMenuItem(
                                icon: Icons.settings_outlined,
                                title: 'Settings',
                                subtitle: "App preferences and settings",
                                onTap: () {},
                                color: AppTheme.tertiaryColor,
                              ),
                              _buildMenuItem(
                                icon: Icons.help_outline,
                                title: 'Help & Support',
                                subtitle: "Get help and contact us",
                                onTap: () {},
                                color: AppTheme.tertiaryColor,
                              ),
                              _buildMenuItem(
                                icon: Icons.logout,
                                title: 'Logout',
                                subtitle: "Sign out from your account",
                                onTap: () {},
                                color: AppTheme.error,
                                isDestructive: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
