import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

import 'colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String member = 'Platinum Member';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('AlphaBenefits')),
          backgroundColor: AppColors.primary,
        ),
        body:  Center(
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/DiamondMystery.png'),
                width: 200,
              ),
              Text(
                'Congragulations! for being a $member',
                style: const TextStyle(
                  color: AppColors.primary,
                  fontSize: 24,
                ),
              ),
              TimerCountdown(
                format: CountDownTimerFormat.daysHoursMinutesSeconds,
                endTime: DateTime.now().add(
                  const Duration(
                    days: 3653,
                    hours: 14,
                    minutes: 27,
                    seconds: 0,
                  ),
                ),
                onEnd: () {
                  print("Congratulations! You have completed the countdown!");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
