import 'package:flutter/material.dart';
import 'package:gym_fyp/utils/images/images.dart';

class DietScreen extends StatefulWidget {
  const DietScreen({super.key});

  @override
  State<DietScreen> createState() => _DietScreenState();
}

class _DietScreenState extends State<DietScreen> {
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
Monday
Breakfast: Paratha made with whole wheat flour and a boiled egg
Snack: Seasonal fruit (e.g., banana or apple)
Lunch: Daal (lentils) with boiled rice and a side of cucumber and tomato salad
Snack: Roasted chickpeas (chana)
Dinner: Chicken curry with roti (whole wheat bread) and mixed vegetable salad

Tuesday
Breakfast: Aloo (potato) paratha with yogurt
Snack: Handful of peanuts
Lunch: Chana pulao (chickpea rice) with a side of raita (yogurt with cucumbers)
Snack: Sliced cucumber and carrots
Dinner: Bhindi (okra) sabzi with roti and a side of salad

Wednesday
Breakfast: Anday ka halwa (egg-based dish) with whole wheat bread
Snack: Handful of dried fruit (raisins or apricots)
Lunch: Chicken biryani with a side of yogurt
Snack: Seasonal fruit (e.g., guava or oranges)
Dinner: Daal chawal (lentils with rice) and a side of mixed vegetable salad

Thursday
Breakfast: Simple omelet with chapati (whole wheat bread) and a cup of tea
Snack: Handful of almonds or walnuts
Lunch: Vegetable pulao with a side of raita
Snack: Sliced carrots with a sprinkle of chaat masala
Dinner: Keema (minced meat) with roti and a cucumber and tomato salad

Friday
Breakfast: Chana chaat (chickpea salad) with whole wheat bread
Snack: Fresh seasonal fruit (e.g., apple or papaya)
Lunch: Sabzi (mixed vegetables) with boiled rice and a side of yogurt
Snack: Handful of roasted peanuts
Dinner: Chicken karahi with roti and a side of mixed salad

Saturday
Breakfast: Poha (flattened rice) with a cup of tea
Snack: Handful of roasted chickpeas
Lunch: Masoor daal (red lentils) with boiled rice and a side of salad
Snack: Seasonal fruit (e.g., pomegranate or guava)
Dinner: Fish curry with chapati and a side of mixed vegetable salad

Sunday
Breakfast: Paratha with achar (pickle) and a cup of tea
Snack: Handful of roasted nuts or trail mix
Lunch: Chicken curry with boiled rice and a side of raita
Snack: Sliced cucumbers and carrots
Dinner: Sabzi (mixed vegetables) with roti and a side of salad
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