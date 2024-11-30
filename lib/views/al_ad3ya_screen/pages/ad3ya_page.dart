import 'package:flutter/material.dart';
import 'package:quran_project/views/al_ad3ya_screen/ad3ya_json.dart';
import 'package:quran_project/views/al_ad3ya_screen/widgets/ad3ya_page_content.dart';
import 'package:quran_project/views/al_ad3ya_screen/widgets/animated_dots.dart';
import 'package:quran_project/views/custom_drawer/pages/custom_drawer.dart';
import 'package:quran_project/widgets/custom_appbar.dart';

class AlAd3yaScreen extends StatefulWidget {
  const AlAd3yaScreen({super.key});

  @override
  State<AlAd3yaScreen> createState() => _AlAd3yaScreenState();
}

class _AlAd3yaScreenState extends State<AlAd3yaScreen> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: const CustomAppBar(title: 'الأدعية'),
        drawer: CustomDrawer(),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: PageView.builder(
                physics: const ClampingScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
                itemBuilder: (context, index) =>
                    Ad3yaPagesContent(index: index),
                itemCount: ad3yaList.length,
              ),
            ),
            AnimatedDots(pageIndex: pageIndex),
          ],
        ),
      ),
    );
  }
}
