import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.2),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Daily Activity'),
        actions: const [
          Icon(Icons.notifications_none),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text('Today your activities'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(7, (index) {
                      // Center card shows the current date
                      DateTime date = DateTime.now().add(Duration(days: index - 3));
                      String dayOfWeek = DateFormat('EEE').format(date);
                      String dayOfMonth = DateFormat('dd').format(date);

                      bool isToday = index == 3; // Check if it's the center card

                      return Card(
                        color: isToday ? Colors.amber : Colors.white, // Highlight the center card
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                dayOfWeek,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: isToday ? Colors.white : Colors.amber,
                                ),
                              ),
                              Text(
                                dayOfMonth,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: isToday ? Colors.white : Colors.amber,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text('You have burned '),
                        Spacer(),
                        Icon(Icons.local_fire_department, color: Colors.amber,),
                        Text(' 1,116.5',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('Jogging'),
                                  SizedBox(width: 6,),
                                  Icon(Icons.snowshoeing)
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Cycling'),
                                  SizedBox(width: 6,),
                                  Icon(Icons.motorcycle)
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Yoga'),
                                  SizedBox(width: 6,),
                                  Icon(Icons.snowshoeing)
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Others'),
                                  SizedBox(width: 6,),
                                  Icon(Icons.snowshoeing)
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              LinearProgressIndicator(
                                value: 0.4,
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                              ),
                              SizedBox(height: 20,),
                              LinearProgressIndicator(
                                value: 0.6,
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.greenAccent),
                              ),
                              SizedBox(height: 20,),
                              LinearProgressIndicator(
                                value: 0.3,
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.pinkAccent),
                              ),
                              SizedBox(height: 20,),
                              LinearProgressIndicator(
                                value: 0.7,
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      color: Colors.grey.withOpacity(.2),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.location_on),
                                Text('Diatance'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('You have cover a country'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.grey.withOpacity(.2),
                            height: 70,
                            width: 155,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.sunny, color: Colors.amber,),
                                    ],
                                  ),
                                  Text('11,124'),
                                  LinearProgressIndicator(
                                    value: 0.5,
                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.grey.withOpacity(.2),
                            height: 70,
                            width: 155,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.sunny, color: Colors.amber,),
                                    ],
                                  ),
                                  Text('11,124'),
                                  LinearProgressIndicator(
                                    value: 0.5,
                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('Goals',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Spacer(),
                      Text('View all',style: TextStyle(fontSize: 16,color: Colors.amber),),
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
