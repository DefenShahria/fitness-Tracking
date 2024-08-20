import 'package:flutter/material.dart';

class Statistics extends StatefulWidget {
  const Statistics({super.key});

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.2),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Statistics'),
        actions: const [
          Icon(Icons.notifications_none),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              height: 150,
              color: Colors.white,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber, // Ensure the color is set here
                      borderRadius: BorderRadius.circular(
                          12.0), // Adjust the radius as needed
                    ),
                  )
        
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 110,
              child: Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircularProgressIndicator(
                            value: 0.5, // Progress value
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.amber), // Custom color
                          ),
                          Text('Workout')
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('Activities',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4, // Number of containers
                    itemBuilder: (context, index) {
                      return Container(
                        height: 60,
                        margin: const EdgeInsets.all(10),
        
                        color: Colors.grey.withOpacity(.2),
                        child: Container(
                          child: Text(
                            'Container $index',
                            style: const TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
