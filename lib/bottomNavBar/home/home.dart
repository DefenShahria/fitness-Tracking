import 'package:carousel_slider/carousel_slider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final ValueNotifier<int> _selectedSlider  = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
          child: CircleAvatar(
            radius: 16.0,
            backgroundImage: NetworkImage('https://media.licdn.com/dms/image/v2/D5603AQG3RTla2--azg/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1706341184131?e=1729728000&v=beta&t=ULojgf6mi-Umhf48_xcH-i4SVG1cJ1o62zyIavHdYzU'),
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'Subtitle',
              style: TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification icon press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 66,
              color: Colors.grey.withOpacity(.2),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: const Icon(Icons.search, size: 22),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.grey.withOpacity(.2),
                height: 110,
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Text('In-Progress '),
                          Text(' 50%'),
                          Spacer(),
                          Icon(Icons.arrow_circle_right_rounded)
                        ],
                      ),
                      SizedBox(height: 10,),
                      LinearProgressIndicator(
                        value: 0.5,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('You have burned '),
                          Icon(Icons.local_fire_department, color: Colors.amber,),
                          Text(' 1,116.5'),
                          Text(' out of 2,000'),
                        ],
                      ),
                      SizedBox(height: 8,),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.grey.withOpacity(.2),
                        height: 70,
                        width: 150,
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
                        width: 150,
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
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.grey.withOpacity(.2),
                      height: 120,
                      width: 150,
                      child: ECGChart(),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 150,
              color: Colors.grey.withOpacity(.2),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 8,left: 8),
                    child: Row(
                      children: [
                        Text('Daily Actiuvities',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text('See all',style: TextStyle(fontSize: 16,color: Colors.amber),),
                      ],
                    ),
                  ),
                  CarouselSlider(
                    options: CarouselOptions(height: 100.0,
                        onPageChanged: (int page, _){
                          _selectedSlider.value = page ;
                        }
                    ),
                    items: [1,2,3,4].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: const BoxDecoration(
                                  color: Colors.transparent
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.grey.withOpacity(.2),
                                  height: 70,
                                  width: 100,
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
                          );
                        },
                      );
                    }).toList(),),
                  Positioned(
                    top: 175,
                    left: 0,
                    right: 0,
                    child: ValueListenableBuilder(valueListenable: _selectedSlider, builder: (context,value,_){
                      List<Widget> list = [];
                      for(int i = 0; i < [1, 2, 3, 4].length; i++){
                        list.add(
                          Container(
                            width: 10,
                            height: 10,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: value == i ? Colors.amber: Colors.grey
                            ),
                          ),
                        );
        
                      }
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: list,
                      );
                    }),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10, // Number of containers
                    itemBuilder: (context, index) {
                      return Container(
                        height: 60,
                        margin: EdgeInsets.all(10),

                        color: Colors.grey.withOpacity(.2),
                        child: Container(
                          child: Text(
                            'Container $index',
                            style: TextStyle(color: Colors.white, fontSize: 18),
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

class ECGChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: [
              const FlSpot(0, 0),
              const FlSpot(1, 1),
              const FlSpot(2, -1),
              const FlSpot(3, 0),
              const FlSpot(4, 1),
              const FlSpot(5, -1),
              const FlSpot(6, 0),
              const FlSpot(7, 1),
              const FlSpot(8, -1),
              
            ],
            isCurved: true,
            color: Colors.blue,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(show: false),
          ),
        ],
        borderData: FlBorderData(
          show: true,
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        gridData: const FlGridData(show: true),
        titlesData: const FlTitlesData(show: false),
        lineTouchData: const LineTouchData(enabled: false),
        clipData: const FlClipData.all(),
      ),
    );
  }
}
