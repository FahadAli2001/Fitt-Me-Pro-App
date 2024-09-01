import 'package:flutter/material.dart';

import '../../utils/images/images.dart';

class ExcsPlanScreen extends StatefulWidget {
  const ExcsPlanScreen({super.key});

  @override
  State<ExcsPlanScreen> createState() => _ExcsPlanScreenState();
}

class _ExcsPlanScreenState extends State<ExcsPlanScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "EXCERCISE PLAN",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned(bottom: 0, child: Image.asset(bottomBg)),
            Positioned(
              top: 50,
              bottom: 50,
              left: 30,
              right: 30,
              child: Container(
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Text("""
Monday: Chest Day
Warm-up: 5-10 minutes of light cardio and dynamic stretches
Bench Press: 3 sets of 8-12 reps (using barbell or dumbbells)
Incline Dumbbell Press: 3 sets of 8-12 reps
Chest Flyes: 3 sets of 12-15 reps (using dumbbells or a machine)
Push-ups: 3 sets of 15-20 reps
Cool-down: 5 minutes of stretching focusing on the chest and shoulders
                  
Tuesday: Back Day
Warm-up: 5-10 minutes of light cardio and dynamic stretches
Deadlifts: 3 sets of 8-12 reps (using barbell or dumbbells)
Lat Pull-downs: 3 sets of 8-12 reps (using a machine or resistance bands)
Bent-over Rows: 3 sets of 8-12 reps (using barbell or dumbbells)
Single-arm Dumbbell Rows: 3 sets of 10-12 reps per arm
Cool-down: 5 minutes of stretching focusing on the back and lats
                  
Wednesday: Leg Day
Warm-up: 5-10 minutes of light cardio and dynamic stretches
Squats: 3 sets of 8-12 reps (using barbell, dumbbells, or body weight)
Leg Press: 3 sets of 10-12 reps (using a machine)
Leg Extensions: 3 sets of 12-15 reps (using a machine)
Hamstring Curls: 3 sets of 12-15 reps (using a machine)
Calf Raises: 3 sets of 15-20 reps (using body weight or holding dumbbells)
Cool-down: 5 minutes of stretching focusing on the legs
                  
Thursday: Shoulder Day
Warm-up: 5-10 minutes of light cardio and dynamic stretches
Overhead Shoulder Press: 3 sets of 8-12 reps (using dumbbells or barbell)
Lateral Raises: 3 sets of 12-15 reps (using dumbbells)
Front Raises: 3 sets of 12-15 reps (using dumbbells)
Face Pulls: 3 sets of 12-15 reps (using a resistance band or cable machine)
Cool-down: 5 minutes of stretching focusing on the shoulders
                  
Friday: Arm Day (Biceps and Triceps)
Warm-up: 5-10 minutes of light cardio and dynamic stretches
Bicep Curls: 3 sets of 12-15 reps (using dumbbells or a barbell)
Hammer Curls: 3 sets of 12-15 reps (using dumbbells)
Tricep Dips: 3 sets of 12-15 reps (using a bench or chair)
Tricep Extensions: 3 sets of 12-15 reps (using dumbbells or a cable machine)
Cool-down: 5 minutes of stretching focusing on the arms
                  
Saturday: Core Day
Warm-up: 5-10 minutes of light cardio and dynamic stretches
Plank: 3 sets of 30-60 seconds
Bicycle Crunches: 3 sets of 15-20 reps per side
Leg Raises: 3 sets of 15-20 reps
Russian Twists: 3 sets of 15-20 reps per side
Mountain Climbers: 3 sets of 30 seconds
Cool-down: 5 minutes of stretching focusing on the core
                  
Sunday: Rest or Active Recovery
Active Rest: Light walking, yoga, or gentle stretching to promote recovery
                          """),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
