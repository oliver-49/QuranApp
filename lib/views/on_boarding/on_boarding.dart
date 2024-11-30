import 'package:flutter/material.dart';
import 'package:quran_project/helpers/sized_box.dart';
import 'package:quran_project/themes/colors.dart';
import 'widgets/custom_outlined_button.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFFF3E8D5),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Image.asset(
                    "assets/images/basmala.png",
                  ),
                ),
                Image.asset("assets/images/quran_book.png"),
                Text(
                  'تطبيق العبادات',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                16.height,
                Text(
                  '''تعلم الدين الاسلامي عن طريق تصنيفات وملفات وشروحات ومحاضرات ٫٫الخ , يوفر أوقات الصلاة وخطب والقرآن الكريم كامل مع توفير تفسير وقراءة بالصوت ٫٫ اكتشف المزيد بنفسك''',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color:
                            LightColors.instance.kBlackColor.withOpacity(0.5),
                      ),
                ),
                20.height,
                const OutlinedButtonStart(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
