import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_responsive_web_guide/presentaion/components/top_menu.dart';

import '../color_schemes.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          const TopMenu(),
          Expanded(
            child: ListView(
              children: [
                _buildBody(context),
                _buildBody(context),
                _buildBody(context),
              ],
            ),
          ),

    ],
    ),
    );
  }

  Widget _buildBody(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    Widget over570() {
      return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/bg.jpg'),
          ),
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                'Flutter 대학',
                maxLines: 1,
                style: GoogleFonts.merriweather().copyWith(
                  fontSize: 100,
                  color: lightColorScheme.primary,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: lightColorScheme.primary,
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(30, 8, 30, 8),
                  child: Text(
                    'Flutter 엔지니어에게 특화된 학습 커뮤니티',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Flutter University is a learning community',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: lightColorScheme.primary,
                ),
              ),
              Text(
                'for Flutter enginners.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: lightColorScheme.primary,
                ),
              ),
              const SizedBox(height: 50),
              ColorFiltered(
                colorFilter:
                const ColorFilter.mode(Colors.grey, BlendMode.modulate),
                child: Image.asset(
                  'assets/image.jpg',
                  width: 1024,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget under570() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: AutoSizeText(
              'Flutter 대학',
              style: GoogleFonts.merriweather().copyWith(
                fontSize: 40,
                color: lightColorScheme.primary,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: lightColorScheme.primary,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 8, 80, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Flutter 엔지니어에게 특화된',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '학습 커뮤니티',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Flutter University is a learning community',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: lightColorScheme.primary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'for Flutter engineers.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: lightColorScheme.primary,
              ),
            ),
          ),
          Image.asset('assets/bg.jpg'),
          ColorFiltered(
            colorFilter:
            const ColorFilter.mode(Colors.grey, BlendMode.modulate),
            child: Image.asset(
              'assets/image.jpg',
              width: 1024,
              fit: BoxFit.cover,
            ),
          ),
        ],
      );
    }

    return width > 570 ? over570() : under570();
  }
}