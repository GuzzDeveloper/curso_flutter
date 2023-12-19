import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const name = 'ProfileScreen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Group Info',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'Edit',
                style: TextStyle(color: Colors.blue),
              ))
        ],
      ),
      body: const SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('lib/assets/spiderman.jpeg'),
            ),
            Text(
              'Curso Flutter',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Times',
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'Group - 5 members',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Times', color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ItemMenu(
                color: Colors.orange,
                title: 'Starred Messages',
                subtitle: 'None',
                icon: Icons.image,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ItemMenu(
                color: Colors.indigo,
                title: 'Docs',
                subtitle: 'None',
                icon: Icons.image,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemMenu extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String subtitle;
  final String title;
  const ItemMenu({
    super.key,
    required this.color,
    required this.icon,
    required this.subtitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(5)),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        const Spacer(),
        Text(
          subtitle,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.white,
        )
      ],
    );
  }
}
