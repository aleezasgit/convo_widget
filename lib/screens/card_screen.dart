import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:convo_new/configs/configs.dart';
import 'package:convo_new/widgets/featured_courses_s.dart';
import 'package:convo_new/widgets/featured_courses_b.dart';
import 'package:convo_new/widgets/Lesson_card.dart';
class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Scaffold(
      backgroundColor: AppTheme.c.primary.shade100,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: FeaturedCoursesS(
              image: 'assets/images/Rectangle 1.png',
              title: 'Speak with Confidences',
              duration: '1hr 20min',
              rating: '4.9 (1724)',
            ),
          


          ),
          FeaturedCoursesB(
  image: 'assets/images/Rectangle 1.png',
  title: 'Speak with Confidence',
  duration: '1hr 25min',
  rating: '4.9 (1724)',
),

ShortLessonsCard(
      image: 'assets/images/Saly-3 1.png',
      title: '3D Character Lumion',
      duration: 'Duration: 1hr 20min',
      rating: '4.9 (1724)',
    ),

    
          
        ],
      ),
    );
  }
}
