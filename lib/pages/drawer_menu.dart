import 'package:esmambolasmi/pages/theme_provider.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  String selectedMenu = "";
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Drawer(
      // backgroundColor: theme.appBarTheme.backgroundColor,
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // HEADER
            DrawerHeader(
              decoration: BoxDecoration(
                color: theme.appBarTheme.backgroundColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/EsMamboLasmi.png', height: 75),
                  const SizedBox(height: 10),
                  const Text(
                    "Es Mambo Lasmi",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.black, indent: 16, endIndent: 16),
            // Menu
            drawerItem(context, "Home", Icons.home_outlined),
            drawerItem(context, "Produk", Icons.local_mall_outlined),
            drawerItem(context, "Kontak", Icons.call_outlined),
            // === INFORMASI TENTANG ===
            if (selectedMenu == "Kontak")
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Hub: 0885693665006",
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            drawerItem(context, "Tentang", Icons.info_outline),
            // === INFORMASI TENTANG ===
            if (selectedMenu == "Tentang")
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "✨ Es Mambo Aneka Rasa – Segar, Nikmat, dan Bikin Nostalgia! ✨ Dibuat dari bahan pilihan dengan cita rasa manis, segar, dan lembut di mulut, cocok dinikmati semua kalangan.",
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            const Divider(color: Colors.black, indent: 16, endIndent: 16),
            const Spacer(),
            themeSwitcher(context),
          ],
        ),
      ),
    );
  }

  Widget drawerItem(BuildContext context, String title, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title, style: const TextStyle(color: Colors.black)),
      onTap: () {
        setState(() {
          selectedMenu = title;
        });
        // Navigator.pop(context); // tutup drawer
      },
    );
  }
}
