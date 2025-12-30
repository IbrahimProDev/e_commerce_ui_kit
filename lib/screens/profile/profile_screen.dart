import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final options = [
    {'icon': Icons.shopping_bag_outlined, 'title': 'My Orders'},
    {'icon': Icons.favorite_border, 'title': 'Wishlist'},
    {'icon': Icons.settings, 'title': 'Settings'},
    {'icon': Icons.logout, 'title': 'Logout'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade700,
        elevation: 0,
        title: Text('Profile', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/edit-profile');
            },
            icon: Icon(Icons.edit, color: Colors.white),
          ),
        ],
      ),

      body: Column(
        children: [
          SizedBox(height: 20),

          // Profile Image
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/profile.png"), // can replace
          ),

          SizedBox(height: 12),

          Text(
            'Mohammad Ibrahim',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text('ibrahim@gmail.com', style: TextStyle(color: Colors.white70)),

          SizedBox(height: 20),

          // Card Container
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),

              child: ListView.separated(
                itemCount: options.length,
                separatorBuilder: (_, __) => Divider(),
                itemBuilder: (_, index) {
                  final o = options[index];

                  return ListTile(
                    leading: Icon(o['icon'] as IconData, color: Colors.purple),
                    title: Text(
                      o['title'] as String,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded, size: 18),

                    onTap: () {
                      if (o['title'] == 'Logout') {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text("Logged Out")));
                      }

                      if (o['title'] == 'Settings') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Settings Opened")),
                        );
                      }
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
