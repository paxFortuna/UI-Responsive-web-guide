import 'package:flutter/material.dart';

import '../../color_schemes.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width > 880 ? _buildMdMenu(context) : _buildSdMenu(context);
  }

  Widget _buildMdMenu(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        children: [
          const SizedBox(width: 40),
          const Text('Logo'),
          const Spacer(),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              'Flutter 대학의 특징',
              style: TextStyle(color: lightColorScheme.primary),
            ),
          ),
          const SizedBox(width: 20),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              '요금',
              style: TextStyle(color: lightColorScheme.primary),
            ),
          ),
          const SizedBox(width: 20),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              '어드바이저',
              style: TextStyle(color: lightColorScheme.primary),
            ),
          ),
          const SizedBox(width: 20),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              'Flutter 대학생의 목소리',
              style: TextStyle(color: lightColorScheme.primary),
            ),
          ),
          const SizedBox(width: 20),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              '입학까지의 흐름',
              style: TextStyle(color: lightColorScheme.primary),
            ),
          ),
          const SizedBox(width: 20),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              '자주 있는 질문',
              style: TextStyle(color: lightColorScheme.primary),
            ),
          ),
          const SizedBox(width: 20),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              width: 150,
              height: 100,
              color: Theme.of(context).colorScheme.primary,
              child: const Center(
                child: Text(
                  '로그인',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSdMenu(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          const SizedBox(width: 20),
          const Text('Logo'),
          const Spacer(),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                    const TopSdMenu(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                  ),
                );
              },
              icon: const Icon(Icons.menu, size: 40)),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}

class TopSdMenu extends StatelessWidget {
  const TopSdMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        color: lightColorScheme.primary,
        child: Column(
          children: [
            Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Expanded(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Flutter 대학의 특징',
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Divider(color: Colors.white, thickness: 2),
                        ),
                        Text(
                          '요금',
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Divider(color: Colors.white, thickness: 2),
                        ),
                        Text(
                          '어드바이저',
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Divider(color: Colors.white, thickness: 2),
                        ),
                        Text(
                          'Flutter 대학생의 목소리',
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Divider(color: Colors.white, thickness: 2),
                        ),
                        Text(
                          '입학까지의 흐름',
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Divider(color: Colors.white, thickness: 2),
                        ),
                        Text(
                          '자주 있는 질문',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        child: SizedBox(
                          width: 250,
                          child: Stack(
                            alignment: Alignment.center,
                            children: const [
                              Text(
                                '로그인',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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