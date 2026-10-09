import 'package:flutter/material.dart';
import 'constans/colors.dart';
import 'theme/app_theme.dart';
import 'widgets/buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Design System Demo'),
        backgroundColor: AppColors.accent,
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Farizzi Rafli Hakim',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.secondary
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'Tekan tombol di bawah untuk melihat akun github.',
              style: TextStyle(
                color: AppColors.secondary,
              ),
            ),

            const SizedBox(height: 24),t

            AppButton(
              label: 'Buka Github',
              icon: Icons.code,
              url:
              'https://github.com/farizziii19',
            ),

            const SizedBox(height: 16),

            AppButton(
              label: 'Tes Tombol',
              icon: Icons.touch_app,
              onPressed: () {
                debugPrint('Tombol berhasil ditekan!');
              },
            ),
          ],
        ),
      ),
    );
  }
}