import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFFF5F5F5),
        textTheme: TextTheme(
          headline6:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(color: Colors.black54),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 10,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE0EAF5), // Start color (light blue)
              Color(0xFFFFFFFF), // End color (white)
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile section
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                          'assets/profile_picture.png'), // Replace with your profile image
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Denny Ariyana',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Cegah stunting dengan generasi sehat',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.notifications),
                  ],
                ),
                SizedBox(height: 24),
                // Daily Completion Score
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircularPercentIndicator(
                        radius: 60.0,
                        lineWidth: 8.0,
                        percent: 1.0,
                        center: new Text("100%"),
                        progressColor: Colors.blue,
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Skor Penyelesaian Harian',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Good Job!\nKeep up the good work',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                // Action Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildActionButton(
                        context, Icons.calendar_today, 'Kalender'),
                    _buildActionButton(context, Icons.chat, 'Chat AI'),
                    _buildActionButton(context, Icons.edit, 'Catat Aktivitas',
                        isActive: true),
                  ],
                ),
                SizedBox(height: 24),
                // Daily Health Agenda
                Text(
                  'Agenda Kesehatan Harian',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                ListView.builder(
                  itemCount: 10, // Adjust the item count as needed
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return AgendaItem(
                      time: '06:00 AM',
                      title: 'Makan Pagi',
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(BuildContext context, IconData icon, String label,
      {bool isActive = false}) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: isActive ? Colors.blue : Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              if (isActive)
                BoxShadow(
                  color: Colors.blue.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
            ],
          ),
          child: IconButton(
            icon: Icon(icon,
                size: 30, color: isActive ? Colors.white : Colors.blue),
            onPressed: () {},
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: isActive ? Colors.blue : Colors.black),
        ),
      ],
    );
  }
}

class AgendaItem extends StatelessWidget {
  final String time;
  final String title;

  const AgendaItem({required this.time, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          title: Text(title),
          subtitle: Text(time),
          trailing: Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
